complete -c "gws" -l "params" -d "URL/Query parameters as JSON" # global
complete -c "gws" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # global
complete -c "gws" -l "upload" -d "Local file to upload as media content (multipart)" # global
complete -c "gws" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # global
complete -c "gws" -l "output" -d "Output file path for binary responses" # global
complete -c "gws" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # global
complete -c "gws" -l "api-version" -d "Override the API version (e.g., v2, v3)" # global
complete -c "gws" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # global
complete -c "gws" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # global
complete -c "gws" -l "page-delay" -d "Delay between pages in ms (default: 100)" # global
complete -f -c "gws" -n "__fish_use_subcommand" -a "drive" -d "Manage files, folders, and shared drives" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "sheets" -d "Read and write spreadsheets" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "gmail" -d "Send, read, and manage email" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "calendar" -d "Manage calendars and events" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "admin-reports" -d "Audit logs and usage reports (also: reports)" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "docs" -d "Read and write Google Docs" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "slides" -d "Read and write presentations" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "tasks" -d "Manage task lists and tasks" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "people" -d "Manage contacts and profiles" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "chat" -d "Manage Chat spaces and messages" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "classroom" -d "Manage classes, rosters, and coursework" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "forms" -d "Read and write Google Forms" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "keep" -d "Manage Google Keep notes" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "meet" -d "Manage Google Meet conferences" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "events" -d "Subscribe to Google Workspace events" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "modelarmor" -d "Filter user-generated content for safety" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "workflow" -d "Cross-service productivity workflows (also: wf)" # sub
complete -f -c "gws" -n "__fish_use_subcommand" -a "script" -d "Manage Google Apps Script projects" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "params" -d "URL/Query parameters as JSON" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "json" -d "Request body as JSON (POST/PATCH/PUT)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "upload" -d "Local file to upload as media content (multipart)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "upload-content-type" -d "MIME type of the uploaded file (auto-detected from extension if omitted)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "output" -d "Output file path for binary responses" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "format" -d "Output format: json (default), table, yaml, csv" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "api-version" -d "Override the API version (e.g., v2, v3)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "page-all" -d "Auto-paginate, one JSON line per page (NDJSON)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "page-limit" -d "Max pages to fetch with --page-all (default: 10)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "page-delay" -d "Delay between pages in ms (default: 100)" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'drive'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "upload" -d "[Helper] Upload a file with automatic metadata" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "about" -d "Operations on the 'about' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "accessproposals" -d "Operations on the 'accessproposals' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "approvals" -d "Operations on the 'approvals' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "apps" -d "Operations on the 'apps' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "changes" -d "Operations on the 'changes' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "channels" -d "Operations on the 'channels' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "comments" -d "Operations on the 'comments' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "drives" -d "Operations on the 'drives' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "files" -d "Operations on the 'files' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "operations" -d "Operations on the 'operations' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "permissions" -d "Operations on the 'permissions' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "replies" -d "Operations on the 'replies' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "revisions" -d "Operations on the 'revisions' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "teamdrives" -d "Operations on the 'teamdrives' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'drive'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'drive upload'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive upload'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive upload'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive about'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive about'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive about'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive accessproposals'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive accessproposals'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive accessproposals'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive approvals'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive approvals'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive approvals'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive apps'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive apps'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive apps'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive changes'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive changes'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive changes'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive channels'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive channels'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive channels'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive comments'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive comments'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive comments'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive drives'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive drives'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive drives'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive files'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive files'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive files'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive operations'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive operations'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive operations'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive permissions'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive permissions'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive permissions'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive replies'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive replies'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive replies'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive revisions'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive revisions'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive revisions'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive teamdrives'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive teamdrives'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive teamdrives'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'drive help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -a "append" -d "[Helper] Append a row to a spreadsheet" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -a "read" -d "[Helper] Read values from a spreadsheet" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -a "spreadsheets" -d "Operations on the 'spreadsheets' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'sheets'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets append'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets append'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets append'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets read'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets read'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets read'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets spreadsheets'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets spreadsheets'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets spreadsheets'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'sheets help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -a "send" -d "[Helper] Send an email" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -a "triage" -d "[Helper] Show unread inbox summary (sender, subject, date)" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -a "reply" -d "[Helper] Reply to a message (handles threading automatically)" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -a "reply-all" -d "[Helper] Reply-all to a message (handles threading automatically)" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -a "forward" -d "[Helper] Forward a message to new recipients" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -a "read" -d "[Helper] Read a message and extract its body or headers" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -a "watch" -d "[Helper] Watch for new emails and stream them as NDJSON" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -a "users" -d "Operations on the 'users' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'gmail'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail send'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail send'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail send'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail triage'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail triage'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail triage'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail reply'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail reply'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail reply'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail reply-all'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail reply-all'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail reply-all'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail forward'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail forward'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail forward'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail read'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail read'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail read'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail watch'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail watch'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail watch'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail users'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail users'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail users'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'gmail help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "insert" -d "[Helper] create a new event" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "agenda" -d "[Helper] Show upcoming events across all calendars" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "acl" -d "Operations on the 'acl' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "calendarList" -d "Operations on the 'calendarList' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "calendars" -d "Operations on the 'calendars' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "channels" -d "Operations on the 'channels' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "colors" -d "Operations on the 'colors' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "events" -d "Operations on the 'events' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "freebusy" -d "Operations on the 'freebusy' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "settings" -d "Operations on the 'settings' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'calendar'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar insert'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar insert'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar insert'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar agenda'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar agenda'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar agenda'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar acl'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar acl'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar acl'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar calendarList'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar calendarList'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar calendarList'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar calendars'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar calendars'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar calendars'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar channels'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar channels'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar channels'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar colors'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar colors'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar colors'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar events'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar events'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar events'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar freebusy'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar freebusy'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar freebusy'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar settings'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar settings'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar settings'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'calendar help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -a "activities" -d "Operations on the 'activities' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -a "channels" -d "Operations on the 'channels' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -a "customerUsageReports" -d "Operations on the 'customerUsageReports' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -a "entityUsageReports" -d "Operations on the 'entityUsageReports' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -a "userUsageReport" -d "Operations on the 'userUsageReport' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'admin-reports'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports activities'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports activities'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports activities'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports channels'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports channels'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports channels'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports customerUsageReports'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports customerUsageReports'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports customerUsageReports'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports entityUsageReports'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports entityUsageReports'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports entityUsageReports'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports userUsageReport'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports userUsageReport'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports userUsageReport'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'admin-reports help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'docs'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'docs'" -a "write" -d "[Helper] Append text to a document" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'docs'" -a "documents" -d "Operations on the 'documents' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'docs'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'docs write'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs write'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs write'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs documents'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs documents'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs documents'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'docs help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'slides'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'slides'" -a "presentations" -d "Operations on the 'presentations' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'slides'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'slides presentations'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides presentations'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides presentations'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'slides help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -a "tasklists" -d "Operations on the 'tasklists' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -a "tasks" -d "Operations on the 'tasks' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'tasks'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks tasklists'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks tasklists'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks tasklists'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks tasks'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks tasks'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks tasks'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'tasks help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'people'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'people'" -a "contactGroups" -d "Operations on the 'contactGroups' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'people'" -a "otherContacts" -d "Operations on the 'otherContacts' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'people'" -a "people" -d "Operations on the 'people' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'people'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'people contactGroups'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people contactGroups'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people contactGroups'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people otherContacts'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people otherContacts'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people otherContacts'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people people'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people people'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people people'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'people help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'chat'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'chat'" -a "send" -d "[Helper] Send a message to a space" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'chat'" -a "customEmojis" -d "Operations on the 'customEmojis' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'chat'" -a "media" -d "Operations on the 'media' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'chat'" -a "spaces" -d "Operations on the 'spaces' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'chat'" -a "users" -d "Operations on the 'users' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'chat'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'chat send'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat send'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat send'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat customEmojis'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat customEmojis'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat customEmojis'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat media'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat media'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat media'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat spaces'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat spaces'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat spaces'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat users'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat users'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat users'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'chat help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -a "courses" -d "Operations on the 'courses' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -a "invitations" -d "Operations on the 'invitations' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -a "registrations" -d "Operations on the 'registrations' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -a "userProfiles" -d "Operations on the 'userProfiles' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'classroom'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom courses'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom courses'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom courses'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom invitations'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom invitations'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom invitations'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom registrations'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom registrations'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom registrations'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom userProfiles'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom userProfiles'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom userProfiles'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'classroom help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'forms'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'forms'" -a "forms" -d "Operations on the 'forms' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'forms'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'forms forms'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms forms'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms forms'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'forms help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'keep'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'keep'" -a "media" -d "Operations on the 'media' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'keep'" -a "notes" -d "Operations on the 'notes' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'keep'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'keep media'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep media'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep media'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep notes'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep notes'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep notes'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'keep help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'meet'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'meet'" -a "conferenceRecords" -d "Operations on the 'conferenceRecords' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'meet'" -a "spaces" -d "Operations on the 'spaces' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'meet'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'meet conferenceRecords'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet conferenceRecords'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet conferenceRecords'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet spaces'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet spaces'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet spaces'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'meet help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." -xa "{}" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'events'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'events'" -a "subscribe" -d "[Helper] Subscribe to Workspace events and stream them as NDJSON" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'events'" -a "renew" -d "[Helper] Renew/reactivate Workspace Events subscriptions" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'events'" -a "message" -d "Operations on the 'message' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'events'" -a "operations" -d "Operations on the 'operations' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'events'" -a "subscriptions" -d "Operations on the 'subscriptions' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'events'" -a "tasks" -d "Operations on the 'tasks' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'events'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'events subscribe'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." -xa "{}" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events subscribe'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events subscribe'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events renew'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." -xa "{}" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events renew'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events renew'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events message'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." -xa "{}" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events message'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events message'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events operations'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." -xa "{}" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events operations'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events operations'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events subscriptions'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." -xa "{}" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events subscriptions'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events subscriptions'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events tasks'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." -xa "{}" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events tasks'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events tasks'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Also reads GWS_SANITIZE_TEMPLATE env var." -xa "{}" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'events help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -a "sanitize-prompt" -d "[Helper] Sanitize a user prompt through a Model Armor template" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -a "sanitize-response" -d "[Helper] Sanitize a model response through a Model Armor template" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -a "create-template" -d "[Helper] Create a new Model Armor template" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'modelarmor'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor sanitize-prompt'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor sanitize-prompt'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor sanitize-prompt'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor sanitize-response'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor sanitize-response'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor sanitize-response'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor create-template'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor create-template'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor create-template'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'modelarmor help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -a "standup-report" -d "[Helper] Today's meetings + open tasks as a standup summary" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -a "meeting-prep" -d "[Helper] Prepare for your next meeting: agenda, attendees, and linked docs" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -a "email-to-task" -d "[Helper] Convert a Gmail message into a Google Tasks entry" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -a "weekly-digest" -d "[Helper] Weekly summary: this week's meetings + unread email count" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -a "file-announce" -d "[Helper] Announce a Drive file in a Chat space" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'workflow'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow standup-report'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow standup-report'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow standup-report'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow meeting-prep'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow meeting-prep'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow meeting-prep'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow email-to-task'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow email-to-task'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow email-to-task'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow weekly-digest'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow weekly-digest'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow weekly-digest'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow file-announce'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow file-announce'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow file-announce'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope. Format: projects/PROJECT/locations/LOCATION/templates/TEMPLATE. Also reads GWS_SANITIZE_TEMPLATE env var." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'workflow help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # global
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "dry-run" -d "Validate the request locally without sending it to the API" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -l "format" -d "Output format" -xa "json table yaml csv" # global
complete -c "gws" -n "__fish_seen_subcommand_from 'script'" -s "h" -l "help" -d "Print help" # global
complete -f -c "gws" -n "__fish_seen_subcommand_from 'script'" -a "push" -d "[Helper] Upload local files to an Apps Script project" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'script'" -a "processes" -d "Operations on the 'processes' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'script'" -a "projects" -d "Operations on the 'projects' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'script'" -a "scripts" -d "Operations on the 'scripts' resource" # sub
complete -f -c "gws" -n "__fish_seen_subcommand_from 'script'" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "gws" -n "__fish_seen_subcommand_from 'script push'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script push'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script push'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script processes'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script processes'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script processes'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script projects'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script projects'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script projects'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script scripts'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script scripts'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script scripts'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script help'" -l "sanitize" -d "Sanitize API responses through a Model Armor template. Requires cloud-platform scope." # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script help'" -l "dry-run" -d "Validate the request locally without sending it to the API" # subcommands flags
complete -c "gws" -n "__fish_seen_subcommand_from 'script help'" -l "format" -d "Output format" -xa "json table yaml csv" # subcommands flags