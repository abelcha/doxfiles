complete -c "xlsx-cli" -s "V" -l "version" -d "output the version number" # global
complete -c "xlsx-cli" -s "f" -l "file" -d "use specified workbook" # global
complete -c "xlsx-cli" -s "s" -l "sheet" -d "print specified sheet (default first sheet)" # global
complete -c "xlsx-cli" -s "N" -l "sheet-index" -d "use specified sheet index (0-based)" # global
complete -c "xlsx-cli" -s "p" -l "password" -d "if file is encrypted, try with specified pw" # global
complete -c "xlsx-cli" -s "l" -l "list-sheets" -d "list sheet names and exit" # global
complete -c "xlsx-cli" -s "o" -l "output" -d "output to specified file" # global
complete -c "xlsx-cli" -s "B" -l "xlsb" -d "emit XLSB to <sheetname> or <file>.xlsb" # global
complete -c "xlsx-cli" -s "M" -l "xlsm" -d "emit XLSM to <sheetname> or <file>.xlsm" # global
complete -c "xlsx-cli" -s "X" -l "xlsx" -d "emit XLSX to <sheetname> or <file>.xlsx" # global
complete -c "xlsx-cli" -s "I" -l "xlam" -d "emit XLAM to <sheetname> or <file>.xlam" # global
complete -c "xlsx-cli" -s "Y" -l "ods" -d "emit ODS  to <sheetname> or <file>.ods" # global
complete -c "xlsx-cli" -s "8" -l "xls" -d "emit XLS  to <sheetname> or <file>.xls (BIFF8)" # global
complete -c "xlsx-cli" -s "5" -l "biff5" -d "emit XLS  to <sheetname> or <file>.xls (BIFF5)" # global
complete -c "xlsx-cli" -s "4" -l "biff4" -d "emit XLS  to <sheetname> or <file>.xls (BIFF4)" # global
complete -c "xlsx-cli" -s "3" -l "biff3" -d "emit XLS  to <sheetname> or <file>.xls (BIFF3)" # global
complete -c "xlsx-cli" -s "2" -l "biff2" -d "emit XLS  to <sheetname> or <file>.xls (BIFF2)" # global
complete -c "xlsx-cli" -s "i" -l "xla" -d "emit XLA to <sheetname> or <file>.xla" # global
complete -c "xlsx-cli" -s "6" -l "xlml" -d "emit SSML to <sheetname> or <file>.xls (2003 XML)" # global
complete -c "xlsx-cli" -s "T" -l "fods" -d "emit FODS to <sheetname> or <file>.fods (Flat ODS)" # global
complete -c "xlsx-cli" -l "wk3" -d "emit WK3  to <sheetname> or <file>.txt (Lotus WK3)" # global
complete -c "xlsx-cli" -l "numbers" -d "emit NUMBERS to <sheetname> or <file>.numbers" # global
complete -c "xlsx-cli" -s "S" -l "formulae" -d "emit list of values and formulae" # global
complete -c "xlsx-cli" -s "j" -l "json" -d "emit formatted JSON (all fields text)" # global
complete -c "xlsx-cli" -s "J" -l "raw-js" -d "emit raw JS object (raw numbers)" # global
complete -c "xlsx-cli" -s "A" -l "arrays" -d "emit rows as JS objects (raw numbers)" # global
complete -c "xlsx-cli" -s "H" -l "html" -d "emit HTML to <sheetname> or <file>.html" # global
complete -c "xlsx-cli" -s "D" -l "dif" -d "emit DIF  to <sheetname> or <file>.dif (Lotus DIF)" # global
complete -c "xlsx-cli" -s "U" -l "dbf" -d "emit DBF  to <sheetname> or <file>.dbf (MSVFP DBF)" # global
complete -c "xlsx-cli" -s "K" -l "sylk" -d "emit SYLK to <sheetname> or <file>.slk (Excel SYLK)" # global
complete -c "xlsx-cli" -s "P" -l "prn" -d "emit PRN  to <sheetname> or <file>.prn (Lotus PRN)" # global
complete -c "xlsx-cli" -s "E" -l "eth" -d "emit ETH  to <sheetname> or <file>.eth (Ethercalc)" # global
complete -c "xlsx-cli" -s "t" -l "txt" -d "emit TXT  to <sheetname> or <file>.txt (UTF-8 TSV)" # global
complete -c "xlsx-cli" -s "r" -l "rtf" -d "emit RTF  to <sheetname> or <file>.txt (Table RTF)" # global
complete -c "xlsx-cli" -l "wk1" -d "emit WK1  to <sheetname> or <file>.txt (Lotus WK1)" # global
complete -c "xlsx-cli" -s "z" -l "dump" -d "dump internal representation as JSON" # global
complete -c "xlsx-cli" -l "props" -d "dump workbook properties as CSV" # global
complete -c "xlsx-cli" -s "F" -l "field-sep" -d "CSV field separator (default: ,)" # global
complete -c "xlsx-cli" -s "R" -l "row-sep" -d "CSV row separator (default: \n)" # global
complete -c "xlsx-cli" -s "n" -l "sheet-rows" -d "Number of rows to process (0=all rows)" # global
complete -c "xlsx-cli" -l "codepage" -d "default to specified codepage when ambiguous" # global
complete -c "xlsx-cli" -l "req" -d "require module before processing" # global
complete -c "xlsx-cli" -l "sst" -d "generate shared string table for XLS* formats" # global
complete -c "xlsx-cli" -l "compress" -d "use compression when writing XLSX/M/B and ODS" # global
complete -c "xlsx-cli" -l "read" -d "read but do not generate output" # global
complete -c "xlsx-cli" -l "book" -d "for single-sheet formats, emit a file per worksheet" # global
complete -c "xlsx-cli" -l "all" -d "parse everything; write as much as possible" # global
complete -c "xlsx-cli" -l "dev" -d "development mode" # global
complete -c "xlsx-cli" -l "sparse" -d "sparse mode" # global
complete -c "xlsx-cli" -s "q" -l "quiet" -d "quiet mode" # global
complete -c "xlsx-cli" -s "h" -l "help" -d "output usage information" # global