complete -c "hf" -s "h" -l "help" -d "show this help message and exit" # global
complete -f -c "hf" -n "__fish_use_subcommand" -a "auth" -d "Manage authentication (login, logout, etc.)." # sub
complete -f -c "hf" -n "__fish_use_subcommand" -a "cache" -d "Manage local cache directory." # sub
complete -f -c "hf" -n "__fish_use_subcommand" -a "download" -d "Download files from the Hub" # sub
complete -f -c "hf" -n "__fish_use_subcommand" -a "jobs" -d "Run and manage Jobs on the Hub." # sub
complete -f -c "hf" -n "__fish_use_subcommand" -a "repo" -d "Manage repos on the Hub." # sub
complete -f -c "hf" -n "__fish_use_subcommand" -a "repo-files" -d "Manage files in a repo on the Hub." # sub
complete -f -c "hf" -n "__fish_use_subcommand" -a "upload" -d "Upload a file or a folder to the Hub. Recommended for single-commit uploads." # sub
complete -f -c "hf" -n "__fish_use_subcommand" -a "upload-large-folder" -d "Upload a large folder to the Hub. Recommended for resumable uploads." # sub
complete -f -c "hf" -n "__fish_use_subcommand" -a "env" -d "Print information about the environment." # sub
complete -f -c "hf" -n "__fish_use_subcommand" -a "version" -d "Print information about the hf version." # sub
complete -c "hf" -n "__fish_seen_subcommand_from 'auth'" -s "h" -l "help" -d "show this help message and exit" # global
complete -f -c "hf" -n "__fish_seen_subcommand_from 'auth'" -a "login" -d "Log in using a token from huggingface.co/settings/tokens" # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'auth'" -a "logout" -d "Log out" # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'auth'" -a "whoami" -d "Find out which huggingface.co account you are logged in as." # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'auth'" -a "switch" -d "Switch between access tokens" # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'auth'" -a "list" -d "List all stored access tokens" # sub
complete -c "hf" -n "__fish_seen_subcommand_from 'cache'" -s "h" -l "help" -d "show this help message and exit" # global
complete -f -c "hf" -n "__fish_seen_subcommand_from 'cache'" -a "scan" -d "Scan cache directory." # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'cache'" -a "delete" -d "Delete revisions from the cache directory." # sub
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -s "h" -l "help" -d "show this help message and exit" # global
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -l "repo-type" -d "Type of repo to download from (defaults to 'model')." -xa "model dataset space" # global
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -l "revision" -d "An optional Git revision id which can be a branch name, a tag, or a commit hash." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -l "include" -d "Glob patterns to match files to download." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -l "exclude" -d "Glob patterns to exclude from files to download." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -l "cache-dir" -d "Path to the directory where to save the downloaded files." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -l "local-dir" -d "If set, the downloaded file will be placed under this directory. Check out https://huggingface.co/docs/huggingface_hub/guides/download#download-files-to-local-folder for more details." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -l "force-download" -d "If True, the files will be downloaded even if they are already cached." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -l "token" -d "A User Access Token generated from https://huggingface.co/settings/tokens" # global
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -l "quiet" -d "If True, progress bars are disabled and only the path to the download files is printed." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'download'" -l "max-workers" -d "Maximum number of workers to use for downloading files. Default is 8." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'jobs'" -s "h" -l "help" -d "show this help message and exit" # global
complete -f -c "hf" -n "__fish_seen_subcommand_from 'jobs'" -a "inspect" -d "Display detailed information on one or more Jobs" # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'jobs'" -a "logs" -d "Fetch the logs of a Job" # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'jobs'" -a "ps" -d "List Jobs" # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'jobs'" -a "run" -d "Run a Job" # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'jobs'" -a "cancel" -d "Cancel a Job" # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'jobs'" -a "uv" -d "Run UV scripts (Python with inline dependencies) on HF infrastructure" # sub
complete -c "hf" -n "__fish_seen_subcommand_from 'repo'" -s "h" -l "help" -d "show this help message and exit" # global
complete -f -c "hf" -n "__fish_seen_subcommand_from 'repo'" -a "create" -d "Create a new repo on huggingface.co" # sub
complete -f -c "hf" -n "__fish_seen_subcommand_from 'repo'" -a "tag" -d "Manage tags for a repo on the Hub." # sub
complete -c "hf" -n "__fish_seen_subcommand_from 'repo-files'" -s "h" -l "help" -d "show this help message and exit" # global
complete -f -c "hf" -n "__fish_seen_subcommand_from 'repo-files'" -a "delete" -d "Delete files from a repo on the Hub" # sub
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -s "h" -l "help" -d "show this help message and exit" # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "repo-type" -d "Type of the repo to upload to (e.g. `dataset`)." -xa "model dataset space" # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "revision" -d "An optional Git revision to push to. It can be a branch name or a PR reference. If revision does not exist and `--create-pr` is not set, a branch will be automatically created." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "private" -d "Whether to create a private repo if repo doesn't exist on the Hub. Ignored if the repo already exists." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "include" -d "Glob patterns to match files to upload." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "exclude" -d "Glob patterns to exclude from files to upload." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "delete" -d "Glob patterns for file to be deleted from the repo while committing." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "commit-message" -d "The summary / title / first line of the generated commit." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "commit-description" -d "The description of the generated commit." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "create-pr" -d "Whether to upload content as a new Pull Request." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "every" -d "If set, a background job is scheduled to create commits every `every` minutes." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "token" -d "A User Access Token generated from https://huggingface.co/settings/tokens" # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload'" -l "quiet" -d "If True, progress bars are disabled and only the path to the uploaded files is printed." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload-large-folder'" -s "h" -l "help" -d "show this help message and exit" # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload-large-folder'" -l "repo-type" -d "Type of the repo to upload to (e.g. `dataset`)." -xa "model dataset space" # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload-large-folder'" -l "revision" -d "An optional Git revision to push to. It can be a branch name or a PR reference." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload-large-folder'" -l "private" -d "Whether to create a private repo if repo doesn't exist on the Hub. Ignored if the repo already exists." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload-large-folder'" -l "include" -d "Glob patterns to match files to upload." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload-large-folder'" -l "exclude" -d "Glob patterns to exclude from files to upload." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload-large-folder'" -l "token" -d "A User Access Token generated from https://huggingface.co/settings/tokens" # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload-large-folder'" -l "num-workers" -d "Number of workers to use to hash, upload and commit files." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload-large-folder'" -l "no-report" -d "Whether to disable regular status report." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'upload-large-folder'" -l "no-bars" -d "Whether to disable progress bars." # global
complete -c "hf" -n "__fish_seen_subcommand_from 'env'" -s "h" -l "help" -d "show this help message and exit" # global
complete -c "hf" -n "__fish_seen_subcommand_from 'version'" -s "h" -l "help" -d "show this help message and exit" # global