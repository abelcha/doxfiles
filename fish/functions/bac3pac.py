#!/usr/bin/env -S uv run --script
#
# /// script
# requires-python = ">=3.12"
# dependencies = ["pyarrow>=14"]
# ///

"""Extract the table data from a SQL Server BACPAC into Parquet files."""

from __future__ import annotations

import argparse
import datetime as dt
import io
import re
import struct
import sys
import uuid
import zipfile
from dataclasses import dataclass
from decimal import Decimal
from pathlib import Path
from typing import BinaryIO, Iterator
import xml.etree.ElementTree as ET

import pyarrow as pa
import pyarrow.parquet as pq


MODEL_NS = "http://schemas.microsoft.com/sqlserver/dac/Serialization/2012/02"
N = {"d": MODEL_NS}
EPOCH_DATE = dt.date(1, 1, 1)


@dataclass(frozen=True)
class Column:
    name: str
    sql_type: str
    nullable: bool
    is_max: bool
    length: int | None
    precision: int | None
    scale: int

    @property
    def arrow_type(self) -> pa.DataType:
        t = self.sql_type
        if t in {"bit"}:
            return pa.bool_()
        if t in {"tinyint"}:
            return pa.uint8()
        if t in {"smallint"}:
            return pa.int16()
        if t in {"int"}:
            return pa.int32()
        if t in {"bigint"}:
            return pa.int64()
        if t in {"real"}:
            return pa.float32()
        if t in {"float"}:
            return pa.float64()
        if t in {"decimal", "numeric", "money", "smallmoney"}:
            precision = self.precision or (19 if t == "money" else 10)
            scale = self.scale if t in {"decimal", "numeric"} else 4
            if precision <= 38:
                return pa.decimal128(precision, min(scale, precision))
            return pa.decimal256(precision, min(scale, precision))
        if t in {"date"}:
            return pa.date32()
        if t in {"datetime", "smalldatetime", "datetime2", "datetimeoffset"}:
            return pa.timestamp("us")
        if t == "time":
            return pa.duration("us")
        if t == "uniqueidentifier":
            return pa.string()
        if t in {"binary", "varbinary", "image", "rowversion", "timestamp"}:
            return pa.binary()
        return pa.string()


def _value(element: ET.Element | None, name: str, default: str | None = None) -> str | None:
    if element is None:
        return default
    prop = element.find(f"./{{{MODEL_NS}}}Property[@Name='{name}']")
    return prop.attrib.get("Value", default) if prop is not None else default


def _unbracket(name: str) -> str:
    return name[1:-1].replace("]]", "]") if name.startswith("[") else name


def load_schema(model_xml: bytes) -> dict[str, list[Column]]:
    root = ET.fromstring(model_xml)
    tables: dict[str, list[Column]] = {}
    for table in root.findall(".//d:Element[@Type='SqlTable']", N):
        raw_name = table.attrib.get("Name", "")
        table_name = ".".join(_unbracket(part) for part in re.findall(r"\[[^]]*(?:\]\])?\]", raw_name))
        if not table_name:
            continue
        columns: list[Column] = []
        for col in table.findall("./d:Relationship[@Name='Columns']/d:Entry/d:Element", N):
            refs = col.findall(".//d:References", N)
            if not refs:
                continue
            sql_type = _unbracket(refs[-1].attrib["Name"]).lower()
            ts = col.find("./d:Relationship[@Name='TypeSpecifier']/d:Entry/d:Element", N)
            columns.append(Column(
                name=_unbracket(col.attrib["Name"].rsplit(".", 1)[-1]),
                sql_type=sql_type,
                nullable=_value(col, "IsNullable", "True") != "False",
                is_max=_value(col, "IsMax", _value(ts, "IsMax", "False")) == "True",
                length=int(_value(ts, "Length")) if ts is not None and _value(ts, "Length") else None,
                precision=int(_value(ts, "Precision")) if ts is not None and _value(ts, "Precision") else None,
                scale=int(_value(col, "Scale", _value(ts, "Scale", "0"))) if (_value(col, "Scale", _value(ts, "Scale", "0")) or "0").isdigit() else 0,
            ))
        tables[table_name] = columns
    return tables


class BcpReader:
    def __init__(self, stream: BinaryIO, columns: list[Column]):
        self.stream = stream
        self.columns = columns

    def read(self, count: int) -> bytes:
        data = self.stream.read(count)
        if len(data) != count:
            raise ValueError(f"truncated BCP field: expected {count} bytes, got {len(data)}")
        return data

    def prefix(self, size: int) -> int | None:
        value = int.from_bytes(self.read(size), "little", signed=True)
        return None if value == -1 else value

    def field(self, col: Column):
        t = col.sql_type
        fixed = {"tinyint": 1, "smallint": 2, "int": 4, "bigint": 8, "bit": 1,
                 "real": 4, "float": 8, "money": 8, "smallmoney": 4,
                 "uniqueidentifier": 16, "datetime": 8, "smalldatetime": 4,
                 "date": 3}
        if t in fixed:
            if t == "bit":
                raw = self.read_prefixed(1)
                return None if raw is None else bool(raw[0])
            if t == "uniqueidentifier":
                raw = self.read_prefixed(1)
                return None if raw is None else self.decode_fixed(t, raw)
            raw = self.read(fixed[t]) if not col.nullable else self.read_nullable_fixed(fixed[t])
            return None if raw is None else self.decode_fixed(t, raw)
        if t in {"datetime2", "time", "datetimeoffset"}:
            size = 5 if col.scale >= 5 else 4 if col.scale >= 3 else 3
            if t == "datetime2": size += 3
            if t == "datetimeoffset": size += 5
            raw = self.read(size) if not col.nullable else self.read_nullable_fixed(size)
            return None if raw is None else self.decode_temporal(t, raw, col.scale)
        if t in {"decimal", "numeric"}:
            raw = self.read_prefixed(1) if col.nullable else self.read_prefixed(1, nullable=False)
            return None if raw is None else self.decode_decimal(raw, col.scale)
        prefix_size = 8 if col.is_max or t in {"text", "ntext", "image", "xml"} else 2
        raw = self.read_prefixed(prefix_size)
        if raw is None:
            return None
        if t in {"varbinary", "binary", "image", "rowversion", "timestamp"}:
            return raw
        return raw.decode("utf-16-le" if t in {"nvarchar", "nchar", "ntext"} else "utf-8", errors="replace")

    def read_prefixed(self, size: int, nullable: bool = True) -> bytes | None:
        length = self.prefix(size)
        return None if length is None else self.read(length)

    def read_nullable_fixed(self, size: int) -> bytes | None:
        indicator = self.read(1)[0]
        return None if indicator == 0xFF else self.read(size)

    @staticmethod
    def decode_fixed(t: str, raw: bytes):
        if t == "bit": return bool(raw[0])
        if t == "tinyint": return raw[0]
        if t in {"smallint", "int", "bigint"}: return int.from_bytes(raw, "little", signed=True)
        if t == "real": return struct.unpack("<f", raw)[0]
        if t == "float": return struct.unpack("<d", raw)[0]
        if t == "money": return Decimal(int.from_bytes(raw, "little", signed=True)) / 10000
        if t == "smallmoney": return Decimal(int.from_bytes(raw, "little", signed=True)) / 10000
        if t == "uniqueidentifier": return str(uuid.UUID(bytes_le=raw))
        if t == "date": return EPOCH_DATE + dt.timedelta(days=int.from_bytes(raw, "little"))
        if t == "datetime": return dt.datetime(1900, 1, 1) + dt.timedelta(days=int.from_bytes(raw[:4], "little", signed=True), seconds=int.from_bytes(raw[4:], "little") / 300)
        if t == "smalldatetime": return dt.datetime(1900, 1, 1) + dt.timedelta(days=int.from_bytes(raw[:2], "little"), minutes=int.from_bytes(raw[2:], "little"))
        return raw

    @staticmethod
    def decode_temporal(t: str, raw: bytes, scale: int):
        unit = 10 ** (7 - scale)
        time_bytes = 5 if scale >= 5 else 4 if scale >= 3 else 3
        ticks = int.from_bytes(raw[:time_bytes], "little") * unit
        micros = ticks // 10
        if t == "time": return dt.timedelta(microseconds=micros)
        date_offset = int.from_bytes(raw[time_bytes:time_bytes + 3], "little")
        value = dt.datetime.combine(EPOCH_DATE + dt.timedelta(days=date_offset), dt.time()) + dt.timedelta(microseconds=micros)
        if t == "datetimeoffset":
            offset = int.from_bytes(raw[time_bytes + 3:time_bytes + 5], "little", signed=True)
            value = value.replace(tzinfo=dt.timezone(dt.timedelta(minutes=offset))).astimezone(dt.timezone.utc).replace(tzinfo=None)
        return value

    @staticmethod
    def decode_decimal(raw: bytes, scale: int):
        sign = -1 if raw[0] == 0 else 1
        return Decimal(sign * int.from_bytes(raw[1:], "little")) / (10 ** scale)

    def rows(self) -> Iterator[list[object]]:
        while True:
            first = self.stream.read(1)
            if not first:
                return
            self.stream.seek(-1, 1)
            row = [self.field(col) for col in self.columns]
            yield row


def safe_filename(name: str) -> str:
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", name)


def extract(bacpac: Path, output: Path | None = None) -> Path:
    if output is None:
        output = bacpac.with_suffix("")
    output.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(bacpac) as archive:
        schemas = load_schema(archive.read("model.xml"))
        data_dirs = {name.split("/", 2)[1] for name in archive.namelist() if name.startswith("Data/") and name.count("/") >= 2}
        for table_name, columns in schemas.items():
            directory = "Data/" + table_name
            files = sorted(n for n in archive.namelist() if n.startswith(directory + "/TableData-") and n.endswith(".BCP"))
            if not files and table_name not in data_dirs:
                continue
            schema = pa.schema([(c.name, c.arrow_type) for c in columns])
            destination = output / f"{safe_filename(table_name)}.parquet"
            writer = pq.ParquetWriter(destination, schema, compression="zstd")
            try:
                for filename in files:
                    raw = archive.read(filename)
                    rows = list(BcpReader(io.BytesIO(raw), columns).rows())
                    if rows:
                        arrays = [pa.array([row[i] for row in rows], type=columns[i].arrow_type) for i in range(len(columns))]
                        writer.write_table(pa.Table.from_arrays(arrays, schema=schema))
            finally:
                writer.close()
    return output


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("bacpac", type=Path, help="input .bacpac file")
    parser.add_argument("-o", "--output", type=Path, help="output directory (default: input name without .bacpac)")
    args = parser.parse_args(argv)
    if args.bacpac.suffix.lower() != ".bacpac":
        parser.error("input must have a .bacpac extension")
    try:
        output = extract(args.bacpac, args.output)
    except (OSError, ValueError, ET.ParseError, zipfile.BadZipFile) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 1
    print(output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
