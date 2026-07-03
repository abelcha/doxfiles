complete -c "parquet-tools" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "cat" -d "Prints the content of a Parquet file, data only." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "import" -d "Create Parquet file from other source data." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "inspect" -d "Inspect Parquet file structure in detail." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "merge" -d "Merge multiple parquet files into one." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "meta" -d "Prints the metadata." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "retype" -d "Change column data type." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "row-count" -d "Prints the count of rows." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "schema" -d "Prints the schema." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "shell-completions" -d "Install/uninstall shell completions" # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "size" -d "Prints the size." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "split" -d "Split into multiple parquet files." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "transcode" -d "Convert Parquet file with different encoding/compression settings." # sub
complete -f -c "parquet-tools" -n "__fish_use_subcommand" -a "version" -d "Show build version." # sub
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -l "concurrent" -d "enable concurrent output" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -l "fail-on-int96" -d "fail command if INT96 data type is present." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -s "f" -l "format" -d "output format" -xa "json jsonl csv tsv" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -l "geo-format" -d "experimental, output format for geospatial fields" -xa "geojson hex base64" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -s "l" -l "limit" -d "Max number of rows to output, 0 means no limit." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -l "no-header" -d "(CSV/TSV only) do not output field name as header" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -l "read-page-size" -d "Page size to read from Parquet." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -s "s" -l "sample-ratio" -d "Sample ratio (0.0-1.0)." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -s "k" -l "skip" -d "Skip rows before apply other logics." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -l "anonymous" -d "(S3, GCS, and Azure only) object is publicly accessible." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -l "http-extra-headers" -d "(HTTP URI only) extra HTTP headers." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -l "http-ignore-tls-error" -d "(HTTP and S3 URI) ignore TLS error." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -l "http-multiple-connection" -d "(HTTP URI only) use multiple HTTP connection." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'cat'" -l "object-version" -d "(S3, GCS, and Azure only) object version." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'import'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'import'" -s "f" -l "format" -d "Source file formats" -xa "csv json jsonl" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'import'" -s "m" -l "schema" -d "Schema file name." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'import'" -l "skip-header" -d "Skip first line of CSV files" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'import'" -s "s" -l "source" -d "Source file name." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'import'" -s "z" -l "compression" -d "compression codec" -xa "UNCOMPRESSED SNAPPY GZIP LZ4 LZ4_RAW ZSTD BROTLI" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'import'" -l "data-page-version" -d "Data page version (1 or 2). Use 1 for legacy DATA_PAGE format." -xa "1 2" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'import'" -l "page-size" -d "Page size in bytes." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'import'" -l "row-group-size" -d "Row group size in bytes." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'import'" -l "parallel-number" -d "Number of parallel writer goroutines, 0 means number of cores." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'inspect'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'inspect'" -l "row-group" -d "Row group index to inspect." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'inspect'" -l "column-chunk" -d "Column chunk index to inspect (requires --row-group)." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'inspect'" -l "page" -d "Page index to inspect (requires --row-group and --column-chunk)." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'inspect'" -l "anonymous" -d "(S3, GCS, and Azure only) object is publicly accessible." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'inspect'" -l "http-extra-headers" -d "(HTTP URI only) extra HTTP headers." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'inspect'" -l "http-ignore-tls-error" -d "(HTTP and S3 URI) ignore TLS error." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'inspect'" -l "http-multiple-connection" -d "(HTTP URI only) use multiple HTTP connection." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'inspect'" -l "object-version" -d "(S3, GCS, and Azure only) object version." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "concurrent" -d "enable concurrent processing" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "fail-on-int96" -d "fail command if INT96 data type is present." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "read-page-size" -d "Page size to read from Parquet." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -s "s" -l "source" -d "Files to be merged." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "anonymous" -d "(S3, GCS, and Azure only) object is publicly accessible." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "http-extra-headers" -d "(HTTP URI only) extra HTTP headers." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "http-ignore-tls-error" -d "(HTTP and S3 URI) ignore TLS error." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "http-multiple-connection" -d "(HTTP URI only) use multiple HTTP connection." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "object-version" -d "(S3, GCS, and Azure only) object version." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -s "z" -l "compression" -d "compression codec" -xa "UNCOMPRESSED SNAPPY GZIP LZ4 LZ4_RAW ZSTD BROTLI" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "data-page-version" -d "Data page version (1 or 2). Use 1 for legacy DATA_PAGE format." -xa "1 2" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "page-size" -d "Page size in bytes." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "row-group-size" -d "Row group size in bytes." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'merge'" -l "parallel-number" -d "Number of parallel writer goroutines, 0 means number of cores." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'meta'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'meta'" -l "fail-on-int96" -d "fail command if INT96 data type is present." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'meta'" -l "anonymous" -d "(S3, GCS, and Azure only) object is publicly accessible." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'meta'" -l "http-extra-headers" -d "(HTTP URI only) extra HTTP headers." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'meta'" -l "http-ignore-tls-error" -d "(HTTP and S3 URI) ignore TLS error." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'meta'" -l "http-multiple-connection" -d "(HTTP URI only) use multiple HTTP connection." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'meta'" -l "object-version" -d "(S3, GCS, and Azure only) object version." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "int96-to-timestamp" -d "Convert INT96 columns to TIMESTAMP_NANOS." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "bson-to-string" -d "Convert BSON columns to plain strings (JSON encoded)." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "json-to-string" -d "Remove JSON logical type from columns." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "float16-to-float32" -d "Convert FLOAT16 columns to FLOAT32." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "variant-to-string" -d "Convert VARIANT columns to plain strings (JSON encoded)." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "uuid-to-string" -d "Convert UUID columns to plain strings." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "repeated-to-list" -d "Convert legacy repeated primitive columns to LIST format." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "geo-to-binary" -d "Remove GEOGRAPHY and GEOMETRY logical types (keep as plain BYTE_ARRAY)." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "read-page-size" -d "Page size to read from Parquet." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -s "s" -l "source" -d "Source Parquet file to retype." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "anonymous" -d "(S3, GCS, and Azure only) object is publicly accessible." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "http-extra-headers" -d "(HTTP URI only) extra HTTP headers." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "http-ignore-tls-error" -d "(HTTP and S3 URI) ignore TLS error." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "http-multiple-connection" -d "(HTTP URI only) use multiple HTTP connection." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "object-version" -d "(S3, GCS, and Azure only) object version." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -s "z" -l "compression" -d "compression codec" -xa "UNCOMPRESSED SNAPPY GZIP LZ4 LZ4_RAW ZSTD BROTLI" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "data-page-version" -d "Data page version (1 or 2). Use 1 for legacy DATA_PAGE format." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "page-size" -d "Page size in bytes." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "row-group-size" -d "Row group size in bytes." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'retype'" -l "parallel-number" -d "Number of parallel writer goroutines, 0 means number of cores." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'row-count'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'row-count'" -l "anonymous" -d "(S3, GCS, and Azure only) object is publicly accessible." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'row-count'" -l "http-extra-headers" -d "(HTTP URI only) extra HTTP headers." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'row-count'" -l "http-ignore-tls-error" -d "(HTTP and S3 URI) ignore TLS error." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'row-count'" -l "http-multiple-connection" -d "(HTTP URI only) use multiple HTTP connection." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'row-count'" -l "object-version" -d "(S3, GCS, and Azure only) object version." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'schema'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'schema'" -l "camel-case" -d "enforce go struct field name to be CamelCase" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'schema'" -s "f" -l "format" -d "Schema format" -xa "raw json go csv" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'schema'" -l "skip-page-encoding" -d "skip reading page encoding information" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'schema'" -l "show-compression-codec" -d "compression codec is always shown" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'schema'" -l "anonymous" -d "(S3, GCS, and Azure only) object is publicly accessible." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'schema'" -l "http-extra-headers" -d "(HTTP URI only) extra HTTP headers." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'schema'" -l "http-ignore-tls-error" -d "(HTTP and S3 URI) ignore TLS error." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'schema'" -l "http-multiple-connection" -d "(HTTP URI only) use multiple HTTP connection." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'schema'" -l "object-version" -d "(S3, GCS, and Azure only) object version." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'shell-completions'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'shell-completions'" -l "uninstall" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'size'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'size'" -s "q" -l "query" -d "Size to query" -xa "raw uncompressed footer all" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'size'" -s "j" -l "json" -d "Output in JSON format." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'size'" -l "anonymous" -d "(S3, GCS, and Azure only) object is publicly accessible." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'size'" -l "http-extra-headers" -d "(HTTP URI only) extra HTTP headers." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'size'" -l "http-ignore-tls-error" -d "(HTTP and S3 URI) ignore TLS error." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'size'" -l "http-multiple-connection" -d "(HTTP URI only) use multiple HTTP connection." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'size'" -l "object-version" -d "(S3, GCS, and Azure only) object version." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "fail-on-int96" -d "Fail command if INT96 data type is present." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "file-count" -d "Generate this number of result files with potential empty ones" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "name-format" -d "Format to populate target file names" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "read-page-size" -d "Page size to read from Parquet." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "record-count" -d "Result files will have at most this number of records" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "anonymous" -d "(S3, GCS, and Azure only) object is publicly accessible." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "http-extra-headers" -d "(HTTP URI only) extra HTTP headers." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "http-ignore-tls-error" -d "(HTTP and S3 URI) ignore TLS error." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "http-multiple-connection" -d "(HTTP URI only) use multiple HTTP connection." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "object-version" -d "(S3, GCS, and Azure only) object version." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -s "z" -l "compression" -d "compression codec" -xa "UNCOMPRESSED SNAPPY GZIP LZ4 LZ4_RAW ZSTD BROTLI" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "data-page-version" -d "Data page version (1 or 2). Use 1 for legacy DATA_PAGE format." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "page-size" -d "Page size in bytes." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "row-group-size" -d "Row group size in bytes." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'split'" -l "parallel-number" -d "Number of parallel writer goroutines, 0 means number of cores." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "fail-on-int-96" -d "Fail if INT96 fields are detected in the source file." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "field-bloom-filter" -d "Field-specific bloom filter in 'field.path=true/false/<size>' format. Can be specified multiple times." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "field-compression" -d "Field-specific compression in 'field.path=CODEC' format. Can be specified multiple times." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "field-encoding" -d "Field-specific encoding in 'field.path=ENCODING' format. Can be specified multiple times." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "omit-stats" -d "Control statistics (true/false). Leave empty to keep original." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "read-page-size" -d "Page size to read from Parquet." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -s "s" -l "source" -d "Source Parquet file to transcode." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "anonymous" -d "(S3, GCS, and Azure only) object is publicly accessible." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "http-extra-headers" -d "(HTTP URI only) extra HTTP headers." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "http-ignore-tls-error" -d "(HTTP and S3 URI) ignore TLS error." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "http-multiple-connection" -d "(HTTP URI only) use multiple HTTP connection." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "object-version" -d "(S3, GCS, and Azure only) object version." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -s "z" -l "compression" -d "compression codec" -xa "UNCOMPRESSED SNAPPY GZIP LZ4 LZ4_RAW ZSTD BROTLI" # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "data-page-version" -d "Data page version (1 or 2). Use 1 for legacy DATA_PAGE format." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "page-size" -d "Page size in bytes." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "row-group-size" -d "Row group size in bytes." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'transcode'" -l "parallel-number" -d "Number of parallel writer goroutines, 0 means number of cores." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'version'" -s "h" -l "help" -d "Show context-sensitive help." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'version'" -s "j" -l "json" -d "Output in JSON format." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'version'" -s "a" -l "all" -d "Output all version details." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'version'" -s "b" -l "build-time" -d "Output build time." # global
complete -c "parquet-tools" -n "__fish_seen_subcommand_from 'version'" -s "s" -l "source" -d "Source of the executable." # global