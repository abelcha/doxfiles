complete -c "sqldump-parser" -s "o" -l "output-dir" # global
complete -c "sqldump-parser" -s "d" -l "dialect" # global
complete -c "sqldump-parser" -l "format" -xa "csv parquet" # global
complete -c "sqldump-parser" -l "progress" # global
complete -c "sqldump-parser" -l "fast-insert" -d "Use a hand-written streaming VALUES scanner instead of `sqlparser` for INSERT/REPLACE statements. Much faster + flat memory on big dumps" # global
complete -c "sqldump-parser" -o "whatever-insert" -d "Alias for --fast-insert" # global
complete -c "sqldump-parser" -l "verify" -d "Validation mode: run the slow `sqlparser` path for real output, but also run the fast scanner on every INSERT and diff the cells. Exits non-zero on any mismatch. Use this once per new dump / mysqldump version" # global
complete -c "sqldump-parser" -l "batch-size" -d "Rows buffered before flushing a parquet row group (fast-insert only)" # global
complete -c "sqldump-parser" -l "parallel" -d "Parallel mode (parquet only). This is the default for parquet output unless --fast-insert or --verify is set" # global
complete -c "sqldump-parser" -l "workers" -d "Worker thread count. Values > 1 force parallel parquet output" # global
complete -c "sqldump-parser" -l "chunk-mb" -d "Target chunk size (MiB) handed to each worker in --parallel" # global
complete -c "sqldump-parser" -l "fix-type" -d "Rewrite existing parquet files in the destination with types from CREATE TABLE. This reads existing parquet data and writes typed temp files; Parquet cannot change column physical types in-place" # global
complete -c "sqldump-parser" -s "h" -l "help" -d "Print help" # global
complete -c "sqldump-parser" -s "V" -l "version" -d "Print version" # global