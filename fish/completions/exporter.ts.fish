complete -c "server/scripts/exporter.ts" --wraps exporter
complete -c "exporter" -l "org-id" -d "Filter by organizational unit ID" # global
complete -c "exporter" -l "org" -d "Filter by organizational unit ID" # global
complete -c "exporter" -l "view" -d "Filter by specific view name" # global
complete -c "exporter" -l "destination" -d "Local destination path (if provided, exports locally instead of to GCS)" # global
complete -c "exporter" -l "namespace" -d "GCS export namespace (default: from GCS_EXPORT_NAMESPACE env)" # global
complete -c "exporter" -l "bucket" -d "GCS bucket name (default: from PUBLIC_GCS_BUCKET env)" # global
complete -c "exporter" -l "worker" -d "Run in Cloud Run worker instead of locally" # global
complete -c "exporter" -l "parallel" -d "Launch parallel workers (one per org)" # global
complete -c "exporter" -l "skip-existing" -d "Skip files that already exist" # global
complete -c "exporter" -l "region" -d "Cloud region for worker (default: europe-west1)" # global
complete -c "exporter" -s "h" -l "help" -d "Show this help message" # global