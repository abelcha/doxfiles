complete -c "bq" -l "alpha" -d "Naming an alpha feature with this flag will cause it to be used." -xa "none reservation_groups" # global
complete -c "bq" -l "api" -d "API endpoint to talk to." # global
complete -c "bq" -l "api_version" -d "API version to use." # global
complete -c "bq" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." # global
complete -c "bq" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -l "bigqueryrc" -d "Path to configuration file." # global
complete -c "bq" -l "ca_certificates_file" -d "Location of CA certificates file." # global
complete -c "bq" -l "dataset_id" -d "Default dataset reference to use for requests (Ignored when not applicable.)." # global
complete -c "bq" -l "[no]debug_mode" -d "Show tracebacks on Python exceptions." # global
complete -c "bq" -l "[no]disable_ssl_validation" -d "Disables HTTPS certificates validation. This is off by default." # global
complete -c "bq" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery." # global
complete -c "bq" -l "[no]enable_gdrive" -d "Requests new OAuth token with GDrive scope." # global
complete -c "bq" -l "[no]enable_resumable_uploads" -d "Enables resumable uploads over HTTP." # global
complete -c "bq" -l "[no]fingerprint_job_id" -d "Use a job id that is derived from a fingerprint of the job configuration." # global
complete -c "bq" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -l "[no]headless" -d "Whether this bq session is running without user interaction." # global
complete -c "bq" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." # global
complete -c "bq" -l "job_id" -d "A unique job_id to use for the request." # global
complete -c "bq" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." # global
complete -c "bq" -l "[no]jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." # global
complete -c "bq" -l "[no]jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." # global
complete -c "bq" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run." # global
complete -c "bq" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -l "[no]mtls" -d "If set will use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -l "project_id" -d "Default project to use for requests." # global
complete -c "bq" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # global
complete -c "bq" -l "proxy_password" -d "The password to use when authenticating with proxy host." # global
complete -c "bq" -l "proxy_port" -d "The port number to use to connect to the proxy host." # global
complete -c "bq" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # global
complete -c "bq" -s "q" -l "[no]quiet" -d "If True, ignore status updates while jobs are running." # global
complete -c "bq" -s "sync" -l "[no]synchronous_mode" -d "If True, wait for command completion before returning." # global
complete -c "bq" -l "trace" -d "A tracing token to include in API requests." # global
complete -c "bq" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -l "[no]use_lep" -d "Use a LEP endpoint based on the operation's location." # global
complete -c "bq" -l "[no]use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." # global
complete -c "bq" -l "[no]use_rep" -d "Use a REP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'add-iam-policy-binding'" -l "connection" -d "Add binding to IAM policy for connection described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'add-iam-policy-binding'" -s "d" -l "dataset" -d "Add binding to IAM policy for dataset described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'add-iam-policy-binding'" -l "member" -d "The member part of the IAM policy binding." -xa "user:<email> group:<email> serviceAccount:<email> allAuthenticatedUsers allUsers" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'add-iam-policy-binding'" -l "role" -d "The role part of the IAM policy binding." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'add-iam-policy-binding'" -l "routine" -d "Add binding to IAM policy for routine described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'add-iam-policy-binding'" -s "t" -l "table" -d "Add binding to IAM policy for table described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'add-iam-policy-binding'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'add-iam-policy-binding'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -s "q" -l "[no]quiet" -d "If True, ignore status updates while jobs are running." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "api" -d "API endpoint to talk to." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "api_version" -d "API version to use." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag. Also accepts 'stdout' and 'stderr'." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "bigqueryrc" -d "Path to configuration file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "ca_certificates_file" -d "Location of CA certificates file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "dataset_id" -d "Default dataset reference to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]debug_mode" -d "Show tracebacks on Python exceptions." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]disable_ssl_validation" -d "Disables HTTPS certificates validation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery, excluding Model, Routine, RowAccessPolicy, and IAMPolicy APIs." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope. When set to false, requests new OAuth token without GDrive scope." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]enable_resumable_uploads" -d "Enables resumable uploads over HTTP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]fingerprint_job_id" -d "Whether to use a job id that is derived from a fingerprint of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "format" -d "Format for command output." -xa "{none\\tNone,json\\tJSON format,prettyjson\\teasy-to-read JSON format,csv\\tCSV format with header,sparse\\tsimpler table output,pretty\\tformatted table output}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]headless" -d "Whether this bq session is running without user interaction." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "job_id" -d "A unique job_id to use for the request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]mtls" -d "If set will use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "project_id" -d "Default project to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "proxy_password" -d "The password to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "proxy_port" -d "The port number to use to connect to the proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "request_reason" -d "A reason for making the request intended to be recorded in audit logging." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -s "sync" -l "[no]synchronous_mode" -d "If True, wait for command completion before returning, and use the job completion status for error codes." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "trace" -d "A tracing token to include in api requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]use_lep" -d "Use a LEP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cancel'" -l "[no]use_rep" -d "Use a REP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cp'" -s "a" -l "append_table" -d "Append to an existing table." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cp'" -l "clone" -d "Create a clone of source table." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cp'" -l "destination_kms_key" -d "Cloud KMS key for encryption of the destination table data." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cp'" -l "expiration" -d "Expiration time, in seconds from now, of the destination table." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cp'" -s "f" -l "force" -d "Ignore existing destination tables, don't prompt." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cp'" -s "n" -l "no_clobber" -d "Do not overwrite an existing table." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cp'" -s "r" -l "restore" -d "Restore table snapshot to a live table. Deprecated, please use clone instead." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'cp'" -s "s" -l "snapshot" -d "Create a table snapshot of source table." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -l "add_serving_default_signature" -d "Whether to add serving_default signature for export BigQuery ML trained tf based models." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -l "compression" -d "The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, ZSTD, and NONE. Not applicable when extracting models." -xa "GZIP DEFLATE SNAPPY ZSTD NONE" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -l "destination_format" -d "The extracted file format. CSV, NEWLINE_DELIMITED_JSON, PARQUET and AVRO are applicable for extracting tables. ML_TF_SAVED_MODEL and ML_XGBOOST_BOOSTER are applicable for extracting models." -xa "CSV NEWLINE_DELIMITED_JSON AVRO PARQUET ML_TF_SAVED_MODEL ML_XGBOOST_BOOSTER" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -s "F" -l "field_delimiter" -d "The character that indicates the boundary between columns in the output file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -s "m" -l "model" -d "Extract model with this model ID." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -l "print_header" -d "Whether to print header rows for formats that have headers. Prints headers by default." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -l "trial_id" -d "1-based ID of the trial to be exported from a hyperparameter tuning model. The default_trial_id will be exported if not specified." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -l "use_avro_logical_types" -d "If destinationFormat is set to 'AVRO', this flag indicates whether to enable extracting applicable column types to their corresponding AVRO logical types." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -l "reservation_id" -d "Reservation ID used when executing the job. Format: project_id:reservation_id, project_id:location.reservation_id, or reservation_id." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'extract'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'get-iam-policy'" -l "connection" -d "Get IAM policy for connection described by this identifier." -xa "false" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'get-iam-policy'" -s "d" -l "dataset" -d "Get IAM policy for dataset described by this identifier." -xa "false" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'get-iam-policy'" -l "routine" -d "Get IAM policy for routine described by this identifier." -xa "false" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'get-iam-policy'" -s "t" -l "table" -d "Get IAM policy for table described by this identifier." -xa "false" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'get-iam-policy'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'get-iam-policy'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -s "j" -l "job" -d "Reads the results of a query job." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -s "n" -l "max_rows" -d "The number of rows to print when showing table data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -s "c" -l "selected_fields" -d "A subset of fields to return when showing table data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -s "s" -l "start_row" -d "The number of rows to skip before showing table data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -s "t" -l "table" -d "Reads rows from a table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "undefok" -d "comma-separated list of flag names that it is okay to specify." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "alpha" -d "Naming an alpha feature with this flag will cause it to be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "api" -d "API endpoint to talk to." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "api_version" -d "API version to use." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "bigqueryrc" -d "Path to configuration file. The configuration file specifies new defaults for any flags." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "ca_certificates_file" -d "Location of CA certificates file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "dataset_id" -d "Default dataset reference to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "debug_mode" -d "Show tracebacks on Python exceptions." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "disable_ssl_validation" -d "Disables HTTPS certificates validation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "enable_resumable_uploads" -d "Enables resumable uploads over HTTP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "fingerprint_job_id" -d "Whether to use a job id derived from a fingerprint of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "headless" -d "Whether this bq session is running without user interaction." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "job_id" -d "A unique job_id to use for the request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "location" -d "Default geographic location to use when creating datasets." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "mtls" -d "If set will use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "project_id" -d "Default project to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "proxy_password" -d "The password to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "proxy_port" -d "The port number to use to connect to the proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -s "q" -l "quiet" -d "If True, ignore status updates while jobs are running." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "sync" -d "If True, wait for command completion before returning." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "trace" -d "A tracing token to include in api requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "use_lep" -d "Use a LEP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'head'" -l "use_rep" -d "Use a REP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "api" -d "API endpoint to talk to." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "api_version" -d "API version to use." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." -xa "stdout stderr" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "bigqueryrc" -d "Path to configuration file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "ca_certificates_file" -d "Location of CA certificates file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "dataset_id" -d "Default dataset reference to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]debug_mode" -d "Show tracebacks on Python exceptions." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]disable_ssl_validation" -d "Disables HTTPS certificates validation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]enable_gdrive" -d "Requests new OAuth token with GDrive scope." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]enable_resumable_uploads" -d "Enables resumable uploads over HTTP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]fingerprint_job_id" -d "Use a job id derived from a fingerprint of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "format" -d "Format for command output." -xa "{none\\tdefault,json\\tmaximally compact JSON,prettyjson\\teasy-to-read JSON format,csv\\tCSV format with header,sparse\\tsimpler table output,pretty\\tformatted table output}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]headless" -d "Session running without user interaction." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "job_id" -d "A unique job_id to use for the request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "job_property" -d "Additional key-value pairs to include in job configuration properties." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]jobs_query_use_request_id" -d "Sends request_id in jobs.query request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]jobs_query_use_results_from_response" -d "Use results from jobs.query response." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "location" -d "Default geographic location for datasets or job execution." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]mtls" -d "Use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "project_id" -d "Default project to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "proxy_password" -d "The password to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "proxy_port" -d "The port number to use to connect to the proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -s "q" -l "[no]quiet" -d "Ignore status updates while jobs are running." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -s "sync" -l "[no]synchronous_mode" -d "Wait for command completion before returning." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "trace" -d "A tracing token to include in API requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]use_lep" -d "Use a LEP endpoint based on operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]use_regional_endpoints" -d "Use a regional endpoint based on operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'help'" -l "[no]use_rep" -d "Use a REP endpoint based on operation's location." # global
complete -f -c "bq" -n "__fish_seen_subcommand_from 'help'" -a "help" -d "Help for all or selected command" # sub
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "api" -d "API endpoint to talk to." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "api_version" -d "API version to use." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." -xa "stdout stderr" # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "bigqueryrc" -d "Path to configuration file." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "ca_certificates_file" -d "Location of CA certificates file." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "dataset_id" -d "Default dataset reference to use for requests." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]debug_mode" -d "Show tracebacks on Python exceptions." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]disable_ssl_validation" -d "Disables HTTPS certificates validation." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]enable_gdrive" -d "Requests new OAuth token with GDrive scope." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]enable_resumable_uploads" -d "Enables resumable uploads over HTTP." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]fingerprint_job_id" -d "Use a job id derived from a fingerprint of the job configuration." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "format" -d "Format for command output." -xa "{none\\tdefault,json\\tmaximally compact JSON,prettyjson\\teasy-to-read JSON format,csv\\tCSV format with header,sparse\\tsimpler table output,pretty\\tformatted table output}" # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]headless" -d "Session running without user interaction." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "job_id" -d "A unique job_id to use for the request." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "job_property" -d "Additional key-value pairs to include in job configuration properties." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]jobs_query_use_request_id" -d "Sends request_id in jobs.query request." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]jobs_query_use_results_from_response" -d "Use results from jobs.query response." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "location" -d "Default geographic location for datasets or job execution." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]mtls" -d "Use mtls client certificate on connections to BigQuery." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "project_id" -d "Default project to use for requests." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "proxy_password" -d "The password to use when authenticating with proxy host." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "proxy_port" -d "The port number to use to connect to the proxy host." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -s "q" -l "[no]quiet" -d "Ignore status updates while jobs are running." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -s "sync" -l "[no]synchronous_mode" -d "Wait for command completion before returning." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "trace" -d "A tracing token to include in API requests." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "universe_domain" -d "The universe domain to use in TPC domains." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]use_lep" -d "Use a LEP endpoint based on operation's location." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]use_regional_endpoints" -d "Use a regional endpoint based on operation's location." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'help help'" -l "[no]use_rep" -d "Use a REP endpoint based on operation's location." # subcommands flags
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "api" -d "API endpoint to talk to." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "api_version" -d "API version to use." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "bigqueryrc" -d "Path to configuration file. The configuration file specifies new defaults for any flags, and can be overridden by specifying the flag on the command line." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "ca_certificates_file" -d "Location of CA certificates file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "dataset_id" -d "Default dataset reference to use for requests (Ignored when not applicable.)." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "debug_mode" -d "Show tracebacks on Python exceptions." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "disable_ssl_validation" -d "Disables HTTPS certificates validation. This is off by default." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery, excluding Model, Routine, RowAccessPolicy, and IAMPolicy APIs." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "enable_resumable_uploads" -d "Enables resumable uploads over HTTP (Only applies to load jobs that load data from local files.)." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "fingerprint_job_id" -d "Whether to use a job id that is derived from a fingerprint of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "headless" -d "Whether this bq session is running without user interaction." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "job_id" -d "A unique job_id to use for the request. Applies only to commands that launch jobs." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run (Ignored when not applicable.)" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "mtls" -d "If set will use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "project_id" -d "Default project to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "proxy_password" -d "The password to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "proxy_port" -d "The port number to use to connect to the proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -s "q" -l "quiet" -d "If True, ignore status updates while jobs are running." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -s "sync" -l "synchronous_mode" -d "If True, wait for command completion before returning." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "trace" -d "A tracing token to include in api requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "use_lep" -d "Use a LEP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'info'" -l "use_rep" -d "Use a REP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'insert'" -s "i" -d "Ignore any values in a row that are not present in the schema." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'insert'" -l "noignore_unknown_values" -d "Ignore any values in a row that are not present in the schema." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'insert'" -l "insert_id" -d "Used to ensure repeat executions do not add unintended data. A present insert_id value will be appended to the row number of each row to be inserted and used as the insertId field for the row. Internally the insertId field is used for deduping of inserted rows." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'insert'" -s "s" -d "Attempt to insert any valid rows, even if invalid rows are present." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'insert'" -l "noskip_invalid_rows" -d "Attempt to insert any valid rows, even if invalid rows are present." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'insert'" -s "x" -l "template_suffix" -d "If specified, treats the destination table as a base template, and inserts the rows into an instance table named \"{destination}{templateSuffix}\". BigQuery will manage creation of the instance table, using the schema of the base template table." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'insert'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'insert'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noallow_jagged_rows" -d "Whether to allow missing trailing optional columns in CSV import data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noallow_quoted_newlines" -d "Whether to allow quoted newlines in CSV import data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noautodetect" -d "Enable auto detection of schema and options for formats that are not self describing like CSV and JSON." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "boundary_bytes_base64" -d "Indicates the sequence of boundary bytes (encoded in base64) for THRIFT format." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "clustering_fields" -d "Comma-separated list of field names for table clustering. To remove the clustering, set an empty value." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "column_name_character_map" -d "Indicates the character map used for column names." -xa "STRICT V1 V2" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nocopy_files_only" -d "[Experimental] Configures the load job to only copy files to the destination BigLake managed table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "date_format" -d "Format elements for DATE values in input files." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "datetime_format" -d "Format elements for DATETIME values in input files." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "decimal_target_types" -d "Specifies the list of possible BigQuery data types for source decimal values." -xa "NUMERIC BIGNUMERIC STRING" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "destination_kms_key" -d "Cloud KMS key for encryption of the destination table data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -s "E" -l "encoding" -d "The character encoding used by the input file." -xa "UTF-8 ISO-8859-1 UTF-16BE UTF-16LE UTF-32BE UTF-32LE" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -s "F" -l "field_delimiter" -d "The character for column boundary in input file. \"\\t\" and \"tab\" are accepted for tab." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "file_set_spec_type" -d "Specifies how to discover files given source URIs." -xa "FILE_SYSTEM_MATCH NEW_LINE_DELIMITED_MANIFEST" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "hive_partitioning_mode" -d "Enables hive partitioning with type inference settings." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "hive_partitioning_source_uri_prefix" -d "Prefix after which hive partition encoding begins." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noignore_unknown_values" -d "Whether to ignore unrecognized values in CSV or JSON import data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "json_extension" -d "Allowed values for JSON extension." -xa "GEOJSON" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "max_bad_records" -d "Maximum number of bad records allowed before the entire job fails." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "null_marker" -d "Custom string representing a NULL value in CSV import data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "null_markers" -d "List of custom strings representing NULL values in CSV data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noparquet_enable_list_inference" -d "Use schema inference for Parquet LIST logical type." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noparquet_enum_as_string" -d "Infer Parquet ENUM logical type as STRING." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nopreserve_ascii_control_characters" -d "Whether to preserve ASCII Control characters in CSV import data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "projection_fields" -d "Indicates which entity properties to load from a Cloud Datastore backup." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "quote" -d "Quote character for records. To indicate no quote, use an empty string." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "range_partitioning" -d "Enables range partitioning on the table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "reference_file_schema_uri" -d "Reference file with reader schema for AVRO, PARQUET, ORC formats." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noreplace" -d "If true, existing data is erased when new data is loaded." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noreplace_data" -d "If true, erase existing contents but not table metadata before loading new data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "norequire_partition_filter" -d "Require partition filter for queries over this table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "schema" -d "Either a filename or a comma-separated list of fields for schema." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "schema_update_option" -d "Update schema of the destination table with new data options." -xa "ALLOW_FIELD_ADDITION ALLOW_FIELD_RELAXATION" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "session_id" -d "Session ID of the temporary table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "skip_leading_rows" -d "Number of rows to skip at the beginning of the source file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "source_column_match" -d "Controls strategy for matching loaded columns to the schema." -xa "POSITION NAME" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "source_format" -d "Format of source data." -xa "CSV NEWLINE_DELIMITED_JSON DATASTORE_BACKUP AVRO PARQUET ORC THRIFT" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "thrift_deserialization" -d "Configures deserialization for THRIFT format." -xa "T_BINARY_PROTOCOL" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "thrift_framing" -d "Configures framing for Thrift records or data blocks." -xa "NOT_FRAMED FRAMED_WITH_BIG_ENDIAN FRAMED_WITH_LITTLE_ENDIAN" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "thrift_schema_idl_root_dir" -d "Root directory of Thrift IDL bundle for THRIFT format schema parsing." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "thrift_schema_idl_uri" -d "File uri for Thrift IDL struct to be parsed as schema." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "thrift_schema_struct" -d "Root Thrift struct used as schema for THRIFT format." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "time_format" -d "Format elements for TIME values in input files." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "time_partitioning_expiration" -d "Sets number of seconds to keep storage for table partitions." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "time_partitioning_field" -d "Enables time-based partitioning on table based on this field." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "time_partitioning_type" -d "Enables time-based partitioning with type configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "time_zone" -d "Default time zone for parsing timestamp values without specific time zone." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "timestamp_format" -d "Format elements for TIMESTAMP values in input files." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nouse_avro_logical_types" -d "Whether to enable interpreting logical types for AVRO format." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "parquet_map_target_type" -d "Specifies the parquet map type if equal to ARRAY_OF_STRUCT." -xa "ARRAY_OF_STRUCT" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "reservation_id" -d "Reservation ID for executing the job." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "undefok" -d "List of flag names that can be specified even if the program does not define them." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "api" -d "API endpoint to talk to." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "api_version" -d "API version to use." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "bigqueryrc" -d "Path to configuration file for defaults override." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "ca_certificates_file" -d "Location of CA certificates file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "dataset_id" -d "Default dataset reference for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nodebug_mode" -d "Show tracebacks on Python exceptions." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nodisable_ssl_validation" -d "Disables HTTPS certificates validation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "discovery_file" -d "Filename for JSON document for BigQuery API discovery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noenable_gdrive" -d "Requests new OAuth token with GDrive scope when true." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noenable_resumable_uploads" -d "Enables resumable uploads over HTTP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nofingerprint_job_id" -d "Use a job id derived from a fingerprint of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "noheadless" -d "Whether this bq session is running without user interaction." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "job_id" -d "A unique job_id to use for the request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "job_property" -d "Additional key-value pairs for the job configuration field properties." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nojobs_query_use_request_id" -d "Sends request_id in jobs.query request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nojobs_query_use_results_from_response" -d "Results from jobs.query response are used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "location" -d "Default geographic location for creating datasets or determining job run location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "max_rows_per_request" -d "Specifies max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nomtls" -d "Use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "project_id" -d "Default project to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "proxy_address" -d "Name or IP address of the proxy host for connecting to GCP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "proxy_password" -d "Password for authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "proxy_port" -d "Port number to connect to the proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "proxy_username" -d "User name for authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -s "q" -l "noquiet" -d "Ignore status updates while jobs are running." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -s "sync" -l "nosynchronous_mode" -d "Wait for command completion before returning." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "trace" -d "A tracing token to include in API requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "universe_domain" -d "Universe domain for use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nouse_lep" -d "Use a LEP endpoint based on location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nouse_regional_endpoints" -d "Use a regional endpoint based on location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'load'" -l "nouse_rep" -d "Use a REP endpoint based on location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -s "a" -l "[no]all" -d "Show all results. For jobs, will show jobs from all users. For datasets, will list hidden datasets. For transfer configs and runs, this flag is redundant and not necessary." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]all_jobs" -d "DEPRECATED. Use --all instead" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]capacity_commitment" -d "Lists all capacity commitments (e.g. slots) for the given project and location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]connection" -d "List all connections for given project/location" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -s "d" -l "[no]datasets" -d "Show datasets described by this identifier. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "filter" -d "Filters resources based on the filter expression." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -s "j" -l "[no]jobs" -d "Show jobs described by this identifier. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "max_creation_time" -d "Timestamp in milliseconds. Return jobs created before this timestamp." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -s "n" -l "max_results" -d "Maximum number to list. (an integer)" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "message_type" -d "For transferlog, represents which messages should be listed." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]migration_workflow" -d "List all migration workflows for the given project and location. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "min_creation_time" -d "Timestamp in milliseconds. Return jobs created after this timestamp." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -s "m" -l "[no]models" -d "Show all models. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -s "k" -l "[no]page_token" -d "Start listing from this page token." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "parent_job_id" -d "Only show jobs which are children of this parent job; if omitted, shows all jobs which have no parent." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]print_last_token" -d "If true, also print the next page token for the jobs list. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]print_unreachable" -d "If true, also print unreachable locations for the dataset list and the jobs list. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -s "p" -l "[no]projects" -d "Show all projects. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]reservation" -d "List all reservations for the given project and location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]reservation_assignment" -d "List all reservation assignments for given project/location" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]reservation_group" -d "List all reservation groups for the given project and location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "reservation_group_name" -d "Reservation group name used as a filter when listing reservation. Used in conjunction with --reservation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]routines" -d "Show all routines. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]row_access_policies" -d "Show all row access policies. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "run_attempt" -d "For transfer run, respresents which runs should be pulled." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]transfer_config" -d "Show transfer configurations described by this identifier. This requires setting --transfer_location. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "transfer_location" -d "Location for list transfer config (e.g., \"eu\" or \"us\")." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]transfer_log" -d "List messages under the run specified (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'ls'" -l "[no]transfer_run" -d "List the transfer runs. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "add_tags" -d "Tags to attach to the dataset or table. The format is namespaced key:value pair." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "assignee_id" -d "Project/folder/organization ID to which the reservation is assigned. Used with --reservation_assignment." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "assignee_type" -d "Type of assignees for the reservation assignment." -xa "PROJECT FOLDER ORGANIZATION" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "autoscale_max_slots" -d "Number of slots to be scaled when needed. Autoscale will be enabled when setting this." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "capacity_commitment" -d "Creates a capacity commitment. Auto-assigned commitment id." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "clustering_fields" -d "Comma-separated list of field names for table clustering." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "concurrency" -d "Deprecated, use target_job_concurrency instead." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "config_file" -d "File containing JSON for migration workflow creation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "connection" -d "Create a connection." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "connection_credential" -d "Connection credential in JSON format." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "connection_id" -d "Credentials connection specifying external storage read parameters." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "connection_type" -d "Connection type." -xa "CLOUD_SQL AWS Azure SQL_DATA_SOURCE CLOUD_SPANNER CLOUD_RESOURCE SPARK" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "connector_configuration" -d "Connection configuration for connector in JSON format." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "data_location" -d "Geographic location of the data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "data_source" -d "Data source for created transfer configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -s "d" -l "dataset" -d "Create dataset with this name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "default_kms_key" -d "Defines default KMS key name for all newly objects." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "default_partition_expiration" -d "Default partition expiration for partitioned tables, in seconds." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "default_table_expiration" -d "Default lifetime for newly-created tables, in seconds." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "description" -d "Description of the dataset, table, or connection." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "destination_kms_key" -d "Cloud KMS key for encryption of the destination table data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "display_name" -d "Display name for the created transfer configuration or connection." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "edition" -d "Type of editions for reservation or capacity commitment." -xa "STANDARD ENTERPRISE ENTERPRISE_PLUS" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "enable_refresh" -d "Enable automatic refresh of materialized views when the base table is updated." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "end_time" -d "Exclusive end time of transfer runs range." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "expiration" -d "Expiration time of a table in seconds." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "external_catalog_dataset_options" -d "Options for open source datasets in BigQuery catalog." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "external_catalog_table_options" -d "Options for metadata of open source table in BigQuery catalog." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "external_source" -d "External source that backs this dataset. Supports AWS Glue databases." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "external_table_definition" -d "Specifies a table definition to create an external table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "federated_app_client_id" -d "[Experimental] Application client id for Azure federated identity." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "federated_aws" -d "[Experimental] Federated identity." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "federated_azure" -d "[Experimental] Federated identity for Azure." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "file_format" -d "File format in which table data of a BigLake table is stored." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "file_set_spec_type" -d "Specifies how to discover files given source URIs." -xa "FILE_SYSTEM_MATCH NEW_LINE_DELIMITED_MANIFEST" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "filter_predicate" -d "SQL boolean expression representing rows defined by this row access policy." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -s "f" -l "force" -d "Bypass existence checks and ignore errors of existing objects." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "grantees" -d "List of iam_member users or groups for row-level access policy." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "iam_role_id" -d "[Experimental] IAM role id." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "ignore_idle_slots" -d "If false, any query running in this reservation will use idle slots from other reservations." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "job_type" -d "Type of jobs for reservation assignment." -xa "QUERY PIPELINE ML_EXTERNAL BACKGROUND SPARK CONTINUOUS" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "kms_key_name" -d "Cloud KMS key name used for encryption." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "label" -d "A label to set on the table or dataset." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "materialized_view" -d "[Experimental] Create materialized view with this Standard SQL query." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "max_concurrency" -d "Deprecated, use target_job_concurrency instead." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "max_slots" -d "Overall max slots for reservation, specified with --scaling_mode." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "max_staleness" -d "INTERVAL value for maximum staleness allowed when querying a materialized view or external table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "max_time_travel_hours" -d "Define max time travel in hours." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "metadata_cache_mode" -d "Enables metadata cache for an external table with a connection." -xa "AUTOMATIC MANUAL" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "migration_workflow" -d "Creates a migration workflow." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "multi_region_auxiliary" -d "If true, capacity commitment or reservation is placed in auxiliary region." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "no_auto_scheduling" -d "Disables automatic scheduling of data transfer runs." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "notification_pubsub_topic" -d "Pub/Sub topic for notification after transfer run completion or failure." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "object_metadata" -d "Object Metadata Type used to create Object Tables." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -s "p" -l "params" -d "Parameters for created transfer configuration in JSON format." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "parquet_enable_list_inference" -d "Use schema inference specifically for Parquet LIST logical type." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "parquet_enum_as_string" -d "Infer Parquet ENUM logical type as STRING." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "plan" -d "Commitment plan for capacity commitment." -xa "FLEX MONTHLY ANNUAL THREE_YEAR" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "policy_id" -d "Policy ID to create row access policy for." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "preserve_ascii_control_characters" -d "Preserve embedded ASCII control characters in CSV External table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "priority" -d "Reservation assignment default job priority." -xa "HIGH INTERACTIVE BATCH" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "properties" -d "Connection properties in JSON format." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "range_partitioning" -d "Enables range partitioning on the table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "reference_file_schema_uri" -d "Provide reference file with table schema." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "refresh_interval_ms" -d "Milliseconds for elapsed time before automatic refresh of materialized view." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "refresh_window_days" -d "Refresh window days for created transfer configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "renewal_plan" -d "Plan for capacity commitment conversion after committed period ends." -xa "FLEX MONTHLY ANNUAL THREE_YEAR NONE" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "require_partition_filter" -d "Require partition filter for queries over this table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "reservation" -d "Creates a reservation described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "reservation_assignment" -d "Create a reservation assignment." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "reservation_group" -d "Creates a reservation group described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "reservation_group_name" -d "Reservation group name for creation used with --reservation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "reservation_id" -d "Reservation ID for assignment creation used with --reservation_assignment." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "row_access_policy" -d "Creates a row access policy." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "run_time" -d "Specific time for a transfer run." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "scaling_mode" -d "Scaling mode for the reservation. Max Slots Preview only." -xa "AUTOSCALE_ONLY IDLE_SLOTS_ONLY ALL_SLOTS" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "schedule" -d "Data transfer schedule in UTC." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "schedule_end_time" -d "Time to stop scheduling transfer runs for given configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "schedule_start_time" -d "Time to start scheduling transfer runs for given configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "schema" -d "Filename or comma-separated list of fields in form name[:type]." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "service_account_name" -d "Service account used as credential on transfer config." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "slots" -d "Baseline slots number associated with reservation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "source" -d "Path to file with JSON payload for update." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "source_dataset" -d "Dataset reference for Linked Dataset pointing to source dataset." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "start_time" -d "Start time of transfer runs range." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "storage_billing_model" -d "Sets storage billing model for the dataset." -xa "LOGICAL PHYSICAL" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "storage_uri" -d "Fully qualified location prefix of external folder where BigLake table data is stored." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -s "t" -l "table" -d "Create table with this name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "table_format" -d "Table format for metadata only snapshots of BigLake table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "target_dataset" -d "Target dataset for created transfer configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "target_job_concurrency" -d "Soft upper bound on jobs concurrently running in reservation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "target_table" -d "Table to create row access policy for." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "tenant_id" -d "[Experimental] Tenant id." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "time_partitioning_expiration" -d "Enables time-based partitioning and sets partition storage expiration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "time_partitioning_field" -d "Enables time-based partitioning based on value of this field." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "time_partitioning_type" -d "Enables time-based partitioning and sets partition type." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "transfer_config" -d "Create transfer configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "transfer_run" -d "Creates transfer runs for a time range." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "use_avro_logical_types" -d "Enable interpreting logical types into their corresponding types for AVRO." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "use_idle_slots" -d "If true, queries in this reservation will use idle slots from others." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "use_legacy_sql" -d "Optional choice of using Legacy SQL." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "view" -d "Create view with this SQL query." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mk'" -l "view_udf_resource" -d "URI or path of code file as User-Defined Function resource used by view." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "autodetect" -d "Should schema and format options be autodetected." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "connection_id" -d "The connection specifying the credentials to be used to read external storage." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -s "E" -l "encoding" -d "The character encoding used by the input file." -xa "UTF-8 ISO-8859-1 UTF-16BE UTF-16LE UTF-32BE UTF-32LE" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "file_set_spec_type" -d "Specifies how to discover files given source URIs." -xa "FILE_SYSTEM_MATCH NEW_LINE_DELIMITED_MANIFEST" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "hive_partitioning_mode" -d "Enables hive partitioning." -xa "AUTO STRINGS" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "hive_partitioning_source_uri_prefix" -d "Prefix after which hive partition encoding begins." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -s "i" -l "ignore_unknown_values" -d "Ignore any values in a row that are not present in the schema." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "metadata_cache_mode" -d "Enables metadata cache for an external table with a connection." -xa "AUTOMATIC MANUAL" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "object_metadata" -d "Object Metadata Type." -xa "DIRECTORY SIMPLE" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "parquet_enable_list_inference" -d "Use schema inference specifically for Parquet LIST logical type." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "parquet_enum_as_string" -d "Infer Parquet ENUM logical type as STRING." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "preserve_ascii_control_characters" -d "Whether to preserve embedded Ascii Control characters in CSV External table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "reference_file_schema_uri" -d "Provide a referencing file with the expected table schema." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "require_hive_partition_filter" -d "Whether queries against a table are required to include a hive partition key in a query predicate." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "source_format" -d "Format of source data." -xa "CSV GOOGLE_SHEETS NEWLINE_DELIMITED_JSON DATASTORE_BACKUP DELTA_LAKE ORC PARQUET AVRO ICEBERG" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'mkdef'" -l "use_avro_logical_types" -d "If sourceFormat is set to \"AVRO\", indicates whether to enable interpreting logical types." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'partition'" -s "n" -l "no_clobber" -d "Do not overwrite an existing partition." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'partition'" -l "time_partitioning_expiration" -d "Enables time based partitioning on the table and sets the number of seconds for which to keep the storage for the partitions in the table." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'partition'" -l "time_partitioning_type" -d "Enables time based partitioning on the table and set the type. The default value is DAY, which will generate one partition per day. Other supported values are HOUR, MONTH, and YEAR." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'partition'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'partition'" -l "undefok" -d "comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]allow_large_results" -d "Enables larger destination table sizes for legacy SQL queries." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]append_table" -d "When a destination table is specified, whether or not to append. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]batch" -d "Whether to run the query in batch mode. Ignored if --priority flag is specified." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "clustering_fields" -d "Comma-separated list of field names that specifies the columns on which a table is clustered. To remove the clustering, set an empty value." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "connection_property" -d "Connection properties; repeat this option to specify a list of values." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]continuous" -d "Whether to run the query as continuous query (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]create_session" -d "Whether to create a new session and run the query in the session." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "destination_kms_key" -d "Cloud KMS key for encryption of the destination table data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "destination_schema" -d "Schema for the destination table. Either a filename or a comma-separated list of fields in the form name[:type]. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "destination_table" -d "Name of destination table for query results. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "display_name" -d "Display name for the created scheduled query configuration. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]dry_run" -d "Whether the query should be validated without executing." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "external_table_definition" -d "Specifies a table name and either an inline table definition or a path to a file containing a JSON table definition to use in the query." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]flatten_results" -d "Whether to flatten nested and repeated fields in the result schema for legacy SQL queries." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "job_creation_mode" -d "An option on job creation. Options include: JOB_CREATION_REQUIRED, JOB_CREATION_OPTIONAL." -xa "job_creation_required job_creation_optional" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "job_timeout_ms" -d "Maximum time to run the entire script." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "label" -d "A label to set on a query job. The format is \"key:value\"; repeat this option to specify a list of values." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -s "n" -l "max_rows" -d "How many rows to return in the result. (default: '100')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "max_statement_results" -d "Maximum number of script statements to display the results for. (default: '100')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "maximum_billing_tier" -d "The upper limit of billing tier for the query." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "maximum_bytes_billed" -d "The upper limit of bytes billed for the query." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "min_completion_ratio" -d "[Experimental] The minimum fraction of data that must be scanned before a query returns. If not set, the default server value (1.0) will be used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]no_auto_scheduling" -d "Create a scheduled query configuration with automatic scheduling disabled. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "parameter" -d "Either a file containing a JSON list of query parameters, or a query parameter in the form \"name:type:value\". An empty name produces a positional parameter. The type may be omitted to assume STRING: name::value or ::value. The value \"NULL\" produces a null value.; repeat this option to specify a list of values." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "priority" -d "Query priority. If not specified, priority is determined using the --batch flag. Options include: HIGH (only available for whitelisted reservations), INTERACTIVE, BATCH." -xa "HIGH INTERACTIVE BATCH" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "range_partitioning" -d "Enables range partitioning on the table. The format should be \"field,start,end,interval\". The table will be partitioned based on the value of the field." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]replace" -d "If true, erase existing contents before loading new data. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]replace_data" -d "If true, erase existing contents only, other table metadata like schema is kept. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "request_id" -d "The request_id to use for the jobs.query request. Only valid when used in combination with --rpc." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]require_cache" -d "Whether to only run the query if it is already cached." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]require_partition_filter" -d "Whether to require partition filter for queries over this table. Only apply to partitioned table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]rpc" -d "If true, use rpc-style query API instead of jobs.insert(). (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "schedule" -d "Scheduled query schedule. If non-empty, this query requests could create a scheduled query understand the customer project." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "schema_update_option" -d "Can be specified when append to a table, or replace a table partition. When specified, the schema of the destination table will be updated with the schema of the new data." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "script_statement_byte_budget" -d "Maximum bytes that can be billed for any statement in a script." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "script_statement_timeout_ms" -d "Maximum time to complete each statement in a script." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "session_id" -d "An existing session id where the query will be run." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -s "s" -l "start_row" -d "First row to return in the result. (default: '0')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "target_dataset" -d "Target dataset used to create scheduled query." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "time_partitioning_expiration" -d "Enables time based partitioning on the table and sets the number of seconds for which to keep the storage for the partitions in the table." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "time_partitioning_field" -d "Enables time based partitioning on the table and the table will be partitioned based on the value of this field." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "time_partitioning_type" -d "Enables time based partitioning on the table and set the type. The default value is DAY, which will generate one partition per day. Other supported values are HOUR, MONTH, and YEAR." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "udf_resource" -d "The URI or local filesystem path of a code file to load and evaluate immediately as a User-Defined Function resource." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]use_cache" -d "Whether to use the query cache to avoid rerunning cached queries." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]use_legacy_sql" -d "The choice of using Legacy SQL for the query is optional." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "reservation_id" -d "Reservation ID used when executing the job." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "flagfile" -d "Insert flag definitions from the given file into the command line. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "undefok" -d "comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "api" -d "API endpoint to talk to. (default: 'https://bigquery.googleapis.com')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "api_version" -d "API version to use. (default: 'v2')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "bigqueryrc" -d "Path to configuration file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "ca_certificates_file" -d "Location of CA certificates file. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "dataset_id" -d "Default dataset reference to use for requests (Ignored when not applicable.)." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]debug_mode" -d "Show tracebacks on Python exceptions. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]disable_ssl_validation" -d "Disables HTTPS certificates validation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]enable_resumable_uploads" -d "Enables resumable uploads over HTTP (Only applies to load jobs that load data from local files.)." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]fingerprint_job_id" -d "Whether to use a job id that is derived from a fingerprint of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]headless" -d "Whether this bq session is running without user interaction." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting the debuglevel to the given value." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "job_id" -d "A unique job_id to use for the request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration; repeat this option to specify a list of values." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]mtls" -d "If set will use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "project_id" -d "Default project to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "proxy_password" -d "The password to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "proxy_port" -d "The port number to use to connect to the proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -s "q" -l "[no]quiet" -d "If True, ignore status updates while jobs are running. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -s "sync" -l "[no]synchronous_mode" -d "If True, wait for command completion before returning, and use the job completion status for error codes." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "trace" -d "A tracing token to include in API requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]use_lep" -d "Use a LEP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'query'" -l "[no]use_rep" -d "Use a REP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "connection" -d "Remove binding from IAM policy for connection described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -s "d" -l "dataset" -d "Remove binding from IAM policy for dataset described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "member" -d "The member part of the IAM policy binding." -xa "user:<email> group:<email> serviceAccount:<email> allAuthenticatedUsers allUsers" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "role" -d "The role part of the IAM policy binding." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "routine" -d "Remove binding from IAM policy for routine described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -s "t" -l "table" -d "Remove binding from IAM policy for table described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "api" -d "API endpoint to talk to." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "api_version" -d "API version to use." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "bigqueryrc" -d "Path to configuration file." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "ca_certificates_file" -d "Location of CA certificates file." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "dataset_id" -d "Default dataset reference to use for requests." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "debug_mode" -d "Show tracebacks on Python exceptions." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "disable_ssl_validation" -d "Disables HTTPS certificates validation." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "enable_resumable_uploads" -d "Enables resumable uploads over HTTP." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "fingerprint_job_id" -d "Whether to use a job id that is derived from a fingerprint of the job configuration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "headless" -d "Whether this bq session is running without user interaction." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "job_id" -d "A unique job_id to use for the request." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "mtls" -d "If set will use mtls client certificate on connections to BigQuery." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "project_id" -d "Default project to use for requests." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "proxy_password" -d "The password to use when authenticating with proxy host." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "proxy_port" -d "The port number to use to connect to the proxy host." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -s "q" -l "quiet" -d "If True, ignore status updates while jobs are running." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -s "sync" -l "synchronous_mode" -d "If True, wait for command completion before returning, and use the job completion status for error codes." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "trace" -d "A tracing token to include in api requests." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "universe_domain" -d "The universe domain to use in TPC domains." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "use_lep" -d "Use a LEP endpoint based on the operation's location." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'remove-iam-policy-binding'" -l "use_rep" -d "Use a REP endpoint based on the operation's location." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -s "d" -l "no-dataset" -d "Remove dataset described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -s "f" -l "no-force" -d "Ignore existing tables and datasets, don't prompt." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -s "j" -l "no-job" -d "Remove job described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -s "m" -l "no-model" -d "Remove model with this model ID." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -s "r" -l "no-recursive" -d "Remove dataset and any tables it may contain." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -l "no-capacity_commitment" -d "Deletes the capacity commitment described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -l "no-connection" -d "Delete a connection." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -l "no-migration_workflow" -d "Delete a migration workflow." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -l "no-reservation" -d "Deletes the reservation described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -l "no-reservation_assignment" -d "Delete a reservation assignment." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -l "no-reservation_group" -d "Delete a reservation group described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -l "no-routine" -d "Remove routine with this routine ID." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -s "t" -l "no-table" -d "Remove table described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'rm'" -l "no-transfer_config" -d "Remove transfer configuration described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "no-connection" -d "Set IAM policy for connection described by this identifier. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -s "d" -l "no-dataset" -d "Set IAM policy for dataset described by this identifier. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "no-routine" -d "Set IAM policy for routine described by this identifier. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -s "t" -l "no-table" -d "Set IAM policy for table described by this identifier. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "flagfile" -d "Insert flag definitions from the given file into the command line. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "api" -d "API endpoint to talk to. (default: 'https://bigquery.googleapis.com')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "api_version" -d "API version to use. (default: 'v2')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag. Also accepts 'stdout' and 'stderr'. Specifying the empty string will direct to stdout." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "bigqueryrc" -d "Path to configuration file. The configuration file specifies new defaults for any flags, and can be overridden by specifying the flag on the command line. If the --bigqueryrc flag is not specified, the BIGQUERYRC environment variable is used. If that is not specified, the path '~/.bigqueryrc' is used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "ca_certificates_file" -d "Location of CA certificates file. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "dataset_id" -d "Default dataset reference to use for requests (Ignored when not applicable.). Can be set as 'project:dataset' or 'dataset'. If project is missing, the value of the project_id flag will be used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "debug_mode" -d "Show tracebacks on Python exceptions. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "disable_ssl_validation" -d "Disables HTTPS certificates validation. This is off by default. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery, excluding Model, Routine, RowAccessPolicy, and IAMPolicy APIs. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope. When set to false, requests new OAuth token without GDrive scope. Unless authenticated with a service account, to use this flag, the use_google_auth flag must be set to false." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "enable_resumable_uploads" -d "Enables resumable uploads over HTTP (Only applies to load jobs that load data from local files.). Defaults to True." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "fingerprint_job_id" -d "Whether to use a job id that is derived from a fingerprint of the job configuration. This will prevent the same job from running multiple times accidentally." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "headless" -d "Whether this bq session is running without user interaction. This affects behavior that expects user interaction, like whether debug_mode will break into the debugger and lowers the frequency of informational printing." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "job_id" -d "A unique job_id to use for the request. If not specified, this client will generate a job_id. Applies only to commands that launch jobs, such as cp, extract, load, and query." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run (Ignored when not applicable.)" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "mtls" -d "If set will use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "project_id" -d "Default project to use for requests. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "proxy_password" -d "The password to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "proxy_port" -d "The port number to use to connect to the proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -s "q" -l "no-quiet" -d "If True, ignore status updates while jobs are running." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -s "sync" -l "no-synchronous_mode" -d "If True, wait for command completion before returning, and use the job completion status for error codes. If False, simply create the job, and use the success of job creation as the error code." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "trace" -d "A tracing token to include in api requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "use_lep" -d "Use a LEP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'set-iam-policy'" -l "use_rep" -d "Use a REP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "api" -d "API endpoint to talk to." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "api_version" -d "API version to use." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "bigqueryrc" -d "Path to configuration file. The configuration file specifies new defaults for any flags, and can be overridden by specifying the flag on the command line." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "ca_certificates_file" -d "Location of CA certificates file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "dataset_id" -d "Default dataset reference to use for requests (Ignored when not applicable.). Can be set as 'project:dataset' or 'dataset'." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]debug_mode" -d "Show tracebacks on Python exceptions." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]disable_ssl_validation" -d "Disables HTTPS certificates validation. This is off by default." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery, excluding Model, Routine, RowAccessPolicy, and IAMPolicy APIs." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]enable_resumable_uploads" -d "Enables resumable uploads over HTTP (Only applies to load jobs that load data from local files.)." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]fingerprint_job_id" -d "Whether to use a job id that is derived from a fingerprint of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]headless" -d "Whether this bq session is running without user interaction." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "job_id" -d "A unique job_id to use for the request. Applies only to commands that launch jobs, such as cp, extract, load, and query." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]mtls" -d "If set will use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "project_id" -d "Default project to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "proxy_password" -d "The password to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "proxy_port" -d "The port number to use to connect to the proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -s "q" -l "[no]quiet" -d "If True, ignore status updates while jobs are running." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -s "sync" -l "[no]synchronous_mode" -d "If True, wait for command completion before returning, and use the job completion status for error codes." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "trace" -d "A tracing token to include in api requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]use_lep" -d "Use a LEP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "[no]use_rep" -d "Use a REP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "prompt" -d "Prompt to use for BigQuery shell." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'shell'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "assignee_id" -d "Project/folder/organization ID, to which the reservation is assigned. Used in conjunction with --reservation_assignment." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "assignee_type" -d "Type of assignees for the reservation assignment." -xa "PROJECT FOLDER ORGANIZATION" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]capacity_commitment" -d "Shows details for the capacity commitment described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]connection" -d "Shows details for the connection described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -s "d" -l "[no]dataset" -d "Show dataset with this name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "dataset_view" -d "Specifies the view that determines which dataset information is returned." -xa "METADATA ACL FULL" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]encryption_service_account" -d "Show the service account for a user if it exists, or create one if it does not exist." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -s "j" -l "[no]job" -d "If true, interpret this identifier as a job id." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "job_type" -d "Type of jobs to search reservation assignment for." -xa "QUERY PIPELINE ML_EXTERNAL BACKGROUND SPARK CONTINUOUS" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]materialized_view" -d "Show materialized view specific details instead of general table details." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]migration_workflow" -d "Show details of migration workflow described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -s "m" -l "[no]model" -d "Show details of model with this model ID." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]reservation" -d "Shows details for the reservation described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]reservation_assignment" -d "Looks up reservation assignments for a specified project/folder/organization." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]reservation_group" -d "Shows details for the reservation group described by this identifier." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]routine" -d "Show the details of a particular routine." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]schema" -d "Show only the schema instead of general table details." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]table_replica" -d "Show table replica specific details instead of general table details." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]transfer_config" -d "Show transfer configuration for configuration resource name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]transfer_run" -d "Show information about the particular transfer run." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]view" -d "Show view specific details instead of general table details." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "alpha" -d "Naming an alpha feature with this flag will cause it to be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "api" -d "API endpoint to talk to." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "api_version" -d "API version to use." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "bigqueryrc" -d "Path to configuration file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "ca_certificates_file" -d "Location of CA certificates file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "dataset_id" -d "Default dataset reference to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]debug_mode" -d "Show tracebacks on Python exceptions." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]disable_ssl_validation" -d "Disables HTTPS certificates validation." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope. When set to false, requests new OAuth token without GDrive scope." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]enable_resumable_uploads" -d "Enables resumable uploads over HTTP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]fingerprint_job_id" -d "Whether to use a job id that is derived from a fingerprint of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]headless" -d "Whether this bq session is running without user interaction." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "job_id" -d "A unique job_id to use for the request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]mtls" -d "If set will use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "project_id" -d "Default project to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "proxy_password" -d "The password to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "proxy_port" -d "The port number to use to connect to the proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -s "q" -l "[no]quiet" -d "If True, ignore status updates while jobs are running." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -s "sync" -l "[no]synchronous_mode" -d "If True, wait for command completion before returning, and use the job completion status for error codes." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "trace" -d "A tracing token to include in api requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]use_lep" -d "Use a LEP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'show'" -l "[no]use_rep" -d "Use a REP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "dry_run" -d "No-op that simply prints out information and the recommended timestamp without modifying tables or datasets." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "overwrite" -d "Overwrite existing tables. Otherwise timestamp will be appended to all output table names." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -s "s" -l "skip_fully_replicated_tables" -d "Skip tables that are fully replicated (synced) and do not need to be truncated back to a point in time." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -s "t" -l "timestamp" -d "Optional timestamp to which table(s) will be truncated. Specified as milliseconds since epoch." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "undefok" -d "comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "api" -d "API endpoint to talk to." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "api_version" -d "API version to use." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "bigqueryrc" -d "Path to configuration file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "ca_certificates_file" -d "Location of CA certificates file." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "dataset_id" -d "Default dataset reference to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "debug_mode" -d "Show tracebacks on Python exceptions." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "disable_ssl_validation" -d "Disables HTTPS certificates validation. This is off by default." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "enable_resumable_uploads" -d "Enables resumable uploads over HTTP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "fingerprint_job_id" -d "Whether to use a job id that is derived from a fingerprint of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "format" -d "Format for command output." -xa "{none\\tNo-output,json\\tMaximally compact JSON,prettyjson\\tEasy-to-read JSON format,csv\\tcsv format with header,sparse\\tSimpler table output,pretty\\tFormatted table output}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "headless" -d "Whether this bq session is running without user interaction." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "job_id" -d "A unique job_id to use for the request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "mtls" -d "If set will use mtls client certificate on connections to BigQuery." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "project_id" -d "Default project to use for requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "proxy_password" -d "The password to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "proxy_port" -d "The port number to use to connect to the proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -s "q" -l "quiet" -d "If True, ignore status updates while jobs are running." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -s "sync" -l "synchronous_mode" -d "If True, wait for command completion before returning, and use the job completion status for error codes." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "trace" -d "A tracing token to include in api requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "use_lep" -d "Use a LEP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'truncate'" -l "use_rep" -d "Use a REP endpoint based on the operation's location." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "timestamp" -d "Time in milliseconds since the POSIX epoch that this replica was marked for deletion. If not specified, it will undelete the most recently deleted version." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name. (Flags with arguments must use --flag=value format)" -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "api" -d "API endpoint to talk to." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "api_version" -d "API version to use." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag. Also accepts 'stdout' and 'stderr'." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "bigqueryrc" -d "Path to configuration file." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "ca_certificates_file" -d "Location of CA certificates file." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "dataset_id" -d "Default dataset reference to use for requests. Can be set as 'project:dataset' or 'dataset'." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "debug_mode" -d "Show tracebacks on Python exceptions." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "disable_ssl_validation" -d "Disables HTTPS certificates validation." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery, excluding Model, Routine, RowAccessPolicy, and IAMPolicy APIs." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "enable_resumable_uploads" -d "Enables resumable uploads over HTTP (Only applies to load jobs that load data from local files.)." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "fingerprint_job_id" -d "Whether to use a job id that is derived from a fingerprint of the job configuration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "headless" -d "Whether this bq session is running without user interaction." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "job_id" -d "A unique job_id to use for the request. Applies only to commands that launch jobs, such as cp, extract, load, and query." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "mtls" -d "If set will use mtls client certificate on connections to BigQuery." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "project_id" -d "Default project to use for requests." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "proxy_password" -d "The password to use when authenticating with proxy host." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "proxy_port" -d "The port number to use to connect to the proxy host." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -s "q" -l "quiet" -d "If True, ignore status updates while jobs are running." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -s "sync" -l "synchronous_mode" -d "If True, wait for command completion before returning, and use the job completion status for error codes." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "trace" -d "A tracing token to include in api requests." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "universe_domain" -d "The universe domain to use in TPC domains." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "use_lep" -d "Use a LEP endpoint based on the operation's location." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "use_regional_endpoints" -d "Use a regional endpoint based on the operation's location." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'undelete'" -l "use_rep" -d "Use a REP endpoint based on the operation's location." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "add_tags" -d "Tags to attach to the dataset or table in the format of namespaced key:value pair." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]autodetect_schema" -d "Optional. If true, schema is autodetected; else schema is unchanged. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "autoscale_max_slots" -d "Number of slots to be scaled when needed. Autoscale will be enabled when setting this." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "bi_reservation_size" -d "BI reservation size. Can be specified in bytes or in GB. Minimum 1GB. Use 0 to remove reservation." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]capacity_commitment" -d "Updates a capacity commitment described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]clear_all_tags" -d "Clear all tags attached to the dataset or table. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "clear_label" -d "A label key to remove from a dataset or a table; repeat this option to specify a list of values." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "clustering_fields" -d "Comma-separated list of field names that specifies the columns on which a table is clustered. To remove the clustering, set an empty value." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "concurrency" -d "Deprecated, please use target_job_concurrency instead." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]connection" -d "Update connection." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "connection_credential" -d "Connection credential in JSON format." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "connection_type" -d "Connection type. Valid values: CLOUD_SQL, AWS, Azure, SQL_DATA_SOURCE, CLOUD_SPANNER, CLOUD_RESOURCE, SPARK." -xa "CLOUD_SQL AWS Azure SQL_DATA_SOURCE CLOUD_SPANNER CLOUD_RESOURCE SPARK" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -s "d" -l "[no]dataset" -d "Updates a dataset with this name. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "default_kms_key" -d "Defines default KMS key name for all newly objects created in the dataset. Table/Model creation request can override this default." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "default_partition_expiration" -d "Default partition expiration for all partitioned tables in the dataset, in seconds. Specify \"0\" to remove existing expiration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "default_table_expiration" -d "Default lifetime, in seconds, for newly-created tables in a dataset. Specify \"0\" to remove existing expiration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "description" -d "Description of the dataset, table, view, or connection." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "destination_kms_key" -d "Cloud KMS key for encryption of the destination table data." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "destination_reservation_id" -d "Destination reservation ID. Used in conjunction with --reservation_assignment." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "display_name" -d "Updated display name for the transfer configuration or connection. Default is empty." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]enable_refresh" -d "Whether to enable automatic refresh of the materialized views when the base table is updated. Default is true." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "etag" -d "Only update if etag matches." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "expiration" -d "Expiration time, in seconds from now, of a table or view. Specifying 0 removes expiration time." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "external_catalog_dataset_options" -d "Options defining open source compatible datasets living in the BigQuery catalog. The value can be either an inline JSON definition or a path to a file containing a JSON definition." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "external_catalog_table_options" -d "Options defining the metadata of an open source compatible table living in the BigQuery catalog. The value can be either an inline JSON or a path to a file containing a JSON definition." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "external_table_definition" -d "Specifies a table definition to use to update an external table. The value can be either an inline table definition or a path to a file containing a JSON table definition." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "federated_app_client_id" -d "[Experimental] The application (client) id of the Active Directory application to use with Azure federated identity." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]federated_aws" -d "[Experimental] Federated identity. Default is true." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "filter_predicate" -d "A SQL boolean expression that represents the rows defined by this row access policy." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "grantees" -d "Comma separated list of iam_member users or groups for the row-level access policy." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "iam_role_id" -d "[Experimental] IAM role id." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]ignore_idle_slots" -d "If false, any query running in this reservation will be able to use idle slots from other reservations." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "kms_key_name" -d "Cloud KMS key name used for encryption." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "materialized_view" -d "Standard SQL query of a materialized view." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "max_concurrency" -d "Deprecated, please use target_job_concurrency instead." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "max_slots" -d "The overall max slots for the reservation. It must be specified together with --scaling_mode." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "max_staleness" -d "INTERVAL value that determines the maximum staleness allowed when querying a materialized view or an external table." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "max_time_travel_hours" -d "Optional. Define the max time travel in hours. The value can be from 48 to 168 hours (2 to 7 days)." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]merge" -d "If true, merges capacity commitments into one. At least two comma separated capacity commitment ids must be specified." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "metadata_cache_mode" -d "Enables metadata cache for an external table with a connection." -xa "AUTOMATIC MANUAL" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -s "m" -l "[no]model" -d "Updates a model with this model ID. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]no_auto_scheduling" -d "Disables automatic scheduling of data transfer runs for this configuration. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "notification_pubsub_topic" -d "Pub/Sub topic used for notification after transfer run completed or failed. Default is empty." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "object_metadata" -d "Object Metadata Type used to create Object Tables." -xa "DIRECTORY SIMPLE" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -s "p" -l "params" -d "Updated parameters for the transfer configuration in JSON format." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "plan" -d "Commitment plan for this capacity commitment." -xa "MONTHLY ANNUAL THREE_YEAR" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "policy_id" -d "Policy ID used to update row access policy for." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "priority" -d "Reservation assignment default job priority." -xa "HIGH INTERACTIVE BATCH " # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "properties" -d "Connection properties in JSON format." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "range_partitioning" -d "Enables range partitioning on the table." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "refresh_interval_ms" -d "Milliseconds that must elapse since last refresh until the materialized view can refresh again. Default is 1800000 (30 minutes)." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "refresh_window_days" -d "Updated refresh window days for the transfer configuration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "remove_tags" -d "Tags to remove from the dataset or table. The format is namespaced keys." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "renewal_plan" -d "The plan this capacity commitment is converted to after committed period ends." -xa "FLEX MONTHLY ANNUAL THREE_YEAR NONE" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]require_partition_filter" -d "Whether to require partition filter for queries over this table. Only applies to partitioned table." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]reservation" -d "Updates a reservation described by this identifier." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]reservation_assignment" -d "Updates a reservation assignment so that the assignee will use a new reservation." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "reservation_group_name" -d "Reservation group name used to create reservation for, used with --reservation." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "reservation_size" -d "DEPRECATED, Please use bi_reservation_size instead." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]row_access_policy" -d "Updates a row access policy." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "scaling_mode" -d "The scaling mode for the reservation. Available for reservations in Max Slots Preview." -xa "SCALING_MODE_UNSPECIFIED AUTOSCALE_ONLY IDLE_SLOTS_ONLY ALL_SLOTS" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "schedule" -d "Data transfer schedule." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "schedule_end_time" -d "Time to stop scheduling transfer runs for the transfer configuration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "schedule_start_time" -d "Time to start scheduling transfer runs for the transfer configuration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "schema" -d "Either a filename or a comma-separated list of fields in the form name[:type]." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "service_account_name" -d "Service account used as the credential on the transfer config." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "set_label" -d "A label to set on a dataset or a table in the format key:value." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "slots" -d "The number of baseline slots associated with the reservation." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "source" -d "Path to file with JSON payload for an update." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]split" -d "If true, splits capacity commitment into two. Split parts are defined by the --slots param." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "storage_billing_model" -d "Optional. Sets the storage billing model for the dataset." -xa "LOGICAL PHYSICAL" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -s "t" -l "[no]table" -d "Updates a table with this name. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "target_dataset" -d "Updated dataset ID for the transfer configuration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "target_job_concurrency" -d "Sets a soft upper bound on the number of jobs that can run concurrently. Default is 0." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "target_table" -d "The table to update the row access policy for." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "tenant_id" -d "[Experimental] Tenant id." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "time_partitioning_expiration" -d "Enables time-based partitioning on the table and sets the number of seconds for partition storage." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "time_partitioning_field" -d "Enables time-based partitioning on the table based on the value of this field." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "time_partitioning_type" -d "Enables time-based partitioning on the table and set the type. Default is DAY." -xa "DAY HOUR MONTH YEAR" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]transfer_config" -d "Updates a transfer configuration for a configuration resource name. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]update_credentials" -d "Update the transfer configuration credentials. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "update_mode" -d "Specifies which dataset fields are updated." -xa "update_metadata update_acl update_full" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]use_idle_slots" -d "If true, any query running in this reservation will be able to use idle slots from other reservations." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]use_legacy_sql" -d "The choice of using Legacy SQL for the query is optional." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "vertex_ai_model_id" -d "Optional. Define the Vertex AI model ID to register to Vertex AI for BigQuery ML models." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "view" -d "SQL query of a view. Default is empty." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "view_udf_resource" -d "The URI or local filesystem path of a code file to load and evaluate immediately as a User-Defined Function resource used by the view." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "event_driven_schedule" -d "Event driven schedule in json format." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "api" -d "API endpoint to talk to." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "api_version" -d "API version to use." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "bigqueryrc" -d "Path to configuration file. Can be overridden by specifying the flag on the command line." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "ca_certificates_file" -d "Location of CA certificates file." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "dataset_id" -d "Default dataset reference to use for requests. Can be set as \"project:dataset\" or \"dataset\"." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]debug_mode" -d "Show tracebacks on Python exceptions. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]disable_ssl_validation" -d "Disables HTTPS certificates validation. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery, excluding certain APIs." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]enable_gdrive" -d "Requests new OAuth token with GDrive scope. Default is true." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]enable_resumable_uploads" -d "Enables resumable uploads over HTTP for load jobs. Default is true." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]fingerprint_job_id" -d "Use a job id derived from a fingerprint of the job configuration. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]headless" -d "Whether this session is running without user interaction. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "job_id" -d "A unique job_id to use for the request. Applies only to commands that launch jobs." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used. Default is true." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]mtls" -d "If set will use mtls client certificate on connections to BigQuery. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "project_id" -d "Default project to use for requests." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "proxy_password" -d "The password to use when authenticating with proxy host." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "proxy_port" -d "The port number to use to connect to the proxy host." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "proxy_username" -d "The user name to use when authenticating with proxy host." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -s "q" -l "[no]quiet" -d "If True, ignore status updates while jobs are running. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -s "sync" -l "[no]synchronous_mode" -d "If True, wait for command completion before returning. Default is true." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "trace" -d "A tracing token to include in API requests." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "universe_domain" -d "The universe domain to use in TPC domains." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]use_lep" -d "Use a LEP endpoint based on the operation's location. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]use_regional_endpoints" -d "Use a regional endpoint based on the operation's location. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'update'" -l "[no]use_rep" -d "Use a REP endpoint based on the operation's location. Default is false." -xa "{}" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "alpha" -d "Naming an alpha feature with this flag will cause it be used; repeat this option to specify a list of values (default: '')." -xa "none reservation_groups" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "api" -d "API endpoint to talk to. (default: 'https://bigquery.googleapis.com')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "api_version" -d "API version to use. (default: 'v2')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "apilog" -d "Log all API requests and responses to the file or directory specified by this flag. Also accepts 'stdout' and 'stderr'. Specifying the empty string will direct to stdout." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "bigquery_discovery_api_key" -d "API key to use for discovery doc requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "bigqueryrc" -d "Path to configuration file. The configuration file specifies new defaults for any flags, and can be overridden by specifying the flag on the command line. If the --bigqueryrc flag is not specified, the BIGQUERYRC environment variable is used. If that is not specified, the path '~/.bigqueryrc' is used. (default: '/me/.bigqueryrc')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "ca_certificates_file" -d "Location of CA certificates file. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "dataset_id" -d "Default dataset reference to use for requests (Ignored when not applicable.). Can be set as 'project:dataset' or 'dataset'. If project is missing, the value of the project_id flag will be used. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "debug_mode" -d "Show tracebacks on Python exceptions. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "disable_ssl_validation" -d "Disables HTTPS certificates validation. This is off by default. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "discovery_file" -d "Filename for JSON document to read for the base BigQuery API discovery, excluding Model, Routine, RowAccessPolicy, and IAMPolicy APIs. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "enable_gdrive" -d "When set to true, requests new OAuth token with GDrive scope. When set to false, requests new OAuth token without GDrive scope. Unless authenticated with a service account, to use this flag, the use_google_auth flag must be set to false. (default: 'true')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "enable_resumable_uploads" -d "Enables resumable uploads over HTTP (Only applies to load jobs that load data from local files.). Defaults to True." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "fingerprint_job_id" -d "Whether to use a job id that is derived from a fingerprint of the job configuration. This will prevent the same job from running multiple times accidentally. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "format" -d "Format for command output." -xa "none json prettyjson csv sparse pretty" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "headless" -d "Whether this bq session is running without user interaction. This affects behavior that expects user interaction, like whether debug_mode will break into the debugger and lowers the frequency of informational printing. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "httplib2_debuglevel" -d "Instruct httplib2 to print debugging messages by setting debuglevel to the given value." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "job_id" -d "A unique job_id to use for the request. If not specified, this client will generate a job_id. Applies only to commands that launch jobs, such as cp, extract, load, and query." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "job_property" -d "Additional key-value pairs to include in the properties field of the job configuration; repeat this option to specify a list of values." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "jobs_query_use_request_id" -d "If true, sends request_id in jobs.query request. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "jobs_query_use_results_from_response" -d "If true, results from jobs.query response are used. (default: 'true')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "location" -d "Default geographic location to use when creating datasets or determining where jobs should run (Ignored when not applicable.)" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "max_rows_per_request" -d "Specifies the max number of rows to return per read." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "mtls" -d "If set will use mtls client certificate on connections to BigQuery. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "project_id" -d "Default project to use for requests. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "proxy_address" -d "The name or IP address of the proxy host to use for connecting to GCP. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "proxy_password" -d "The password to use when authenticating with proxy host. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "proxy_port" -d "The port number to use to connect to the proxy host. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "proxy_username" -d "The user name to use when authenticating with proxy host. (default: '')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -s "q" -l "quiet" -d "If True, ignore status updates while jobs are running. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "request_reason" -d "A reason for making the request intended to be recorded in audit logging." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -s "sync" -l "synchronous_mode" -d "If True, wait for command completion before returning, and use the job completion status for error codes. If False, simply create the job, and use the success of job creation as the error code." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "trace" -d "A tracing token to include in api requests." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "universe_domain" -d "The universe domain to use in TPC domains." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "use_lep" -d "Use a LEP endpoint based on the operation's location. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "use_regional_endpoints" -d "Use a regional endpoint based on the operation's location. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'version'" -l "use_rep" -d "Use a REP endpoint based on the operation's location. (default: 'false')" # global
complete -c "bq" -n "__fish_seen_subcommand_from 'wait'" -l "fail_on_error" -d "When done waiting for the job, exit the process with an error if the job is still running, or ended with a failure." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'wait'" -l "wait_for_status" -d "Wait for the job to have a certain status. Default is DONE." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'wait'" -l "flagfile" -d "Insert flag definitions from the given file into the command line." # global
complete -c "bq" -n "__fish_seen_subcommand_from 'wait'" -l "undefok" -d "Comma-separated list of flag names that it is okay to specify on the command line even if the program does not define a flag with that name." # global