# fish completions for `xcodebuildmcp` (XcodeBuildMCP CLI)
# Pattern B (argparse guard) per fish-completion SKILL.md: global opts take args.

complete -c xcodebuildmcp -f

# --- helpers (argparse guard) ---
function __fish_xcodebuildmcp_global_optspecs
    string join \n \
        h/help v/version log-level= style= file-path-render-style=
end

function __fish_xcodebuildmcp_needs_command
    set -l cmd (commandline -xpc)
    set -e cmd[1]
    argparse -s (__fish_xcodebuildmcp_global_optspecs) -- $cmd 2>/dev/null
    or return
    if set -q argv[1]
        echo $argv[1]
        return 1
    end
    return 0
end

function __fish_xcodebuildmcp_using_subcommand
    set -l cmd (__fish_xcodebuildmcp_needs_command)
    test -z "$cmd"; and return 1
    contains -- $cmd[1] $argv
end

# --- global options (always available) ---
complete -c xcodebuildmcp -l log-level -r -f -a "none error warn info debug" -d 'Set log verbosity level'
complete -c xcodebuildmcp -l style -r -f -a "normal minimal" -d 'Output style'
complete -c xcodebuildmcp -l file-path-render-style -r -f -a "tree list" -d 'Render file artifacts as compact tree or labeled list'
complete -c xcodebuildmcp -s h -l help -d 'Show help'
complete -c xcodebuildmcp -s v -l version -d 'Show version number'

# --- top-level subcommands ---
set -l subs mcp init setup upgrade tools purge coverage debugging device macos project-discovery project-scaffolding simulator simulator-management swift-package ui-automation utilities xcode-ide daemon

complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a mcp -d 'Start the MCP server'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a init -d 'Install XcodeBuildMCP agent skill'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a setup -d 'Interactively configure project defaults'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a upgrade -d 'Check for updates and upgrade'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a tools -d 'List available tools'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a purge -d 'Report and clean workspace storage'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a coverage -d 'Code coverage'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a debugging -d 'LLDB debugging'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a device -d 'Device development'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a macos -d 'macOS development'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a project-discovery -d 'Project discovery'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a project-scaffolding -d 'Project scaffolding'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a simulator -d 'iOS simulator development'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a simulator-management -d 'Simulator management'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a swift-package -d 'Swift package development'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a ui-automation -d 'UI automation'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a utilities -d 'Build utilities'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a xcode-ide -d 'Xcode IDE integration'
complete -c xcodebuildmcp -n __fish_xcodebuildmcp_needs_command -a daemon -d 'Manage the xcodebuildmcp daemon'

# --- mcp ---
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand mcp" -l log-level -x -a "none\terror\nwarn\tinfo\tdebug" -d 'Log verbosity'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand mcp" -l style -x -a "normal\tdetailed output\nminimal\tcompact MCP output" -d 'Output style'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand mcp" -l file-path-render-style -x -a "tree\tcompact tree\nlist\tlabeled list" -d 'Render file artifacts'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand mcp" -s h -l help -d 'Show help'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand mcp" -s v -l version -d 'Show version'

# --- init ---
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l version -d "Show version number"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l help -d "Show help"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l log-level -x -a "none\tdisable logging\nerror\tonly errors\nwarn\twarnings\ninfo\tinformational\ndebug\tdetailed debug" -d "Set log verbosity level"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l style -x -a "normal\tdetailed output\nminimal\tcompact MCP-like output" -d "Output style"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l file-path-render-style -x -a "tree\tcompact tree\nlist\tlabeled list" -d "Render file artifacts style"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l client -x -a "auto\tauto-detect\nclaude\tClaude Code\nagents\tAgents" -d "Target client"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l skill -x -a "mcp\tMCP skill\ncli\tCLI skill" -d "Skill variant"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l dest -F -d "Custom destination directory"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l force -d "Replace existing skill without prompting"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l remove-conflict -d "Auto-remove conflicting skill variant"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l uninstall -d "Remove the installed skill"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand init" -l print -d "Print skill content to stdout"

# --- setup ---
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand setup" -l version -d 'Show version number'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand setup" -l help -d 'Show help'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand setup" -l log-level -x -a "none\tsilence\nerror\terrors only\nwarn\twarnings\ninfo\tinfo\ndebug\tdebug" -d 'Set log verbosity level'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand setup" -l style -x -a "normal\tdetailed\nminimal\tcompact" -d 'Set output style'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand setup" -l file-path-render-style -x -a "tree\tcompact tree\nlist\tlabeled list" -d 'Render file artifacts'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand setup" -l format -x -a "yaml\twrite config.yaml\nmcp-json\tenv-based bootstrap block" -d 'Set output format'

# --- upgrade ---
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand upgrade" -l version -d 'Show version number'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand upgrade" -l help -d 'Show help'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand upgrade" -l log-level -r -a "none\terror\nwarn\ninfo\ndebug" -d 'Set log verbosity'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand upgrade" -l style -r -a "normal\tDetailed output\nminimal\tCompact MCP-like output" -d 'Output style'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand upgrade" -l file-path-render-style -r -a "tree\tCompact tree\nlist\tLabeled list" -d 'Render file artifacts'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand upgrade" -l check -d 'Check for updates without upgrading'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand upgrade" -s y -l yes -d 'Skip confirmation and upgrade automatically'

# --- tools ---
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand tools" -l log-level -x -a "none error warn info debug" -d 'Set log verbosity'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand tools" -l style -x -a "normal minimal" -d 'Output style'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand tools" -l file-path-render-style -x -a "tree list" -d 'Render file artifacts'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand tools" -s f -l flat -d 'List flat'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand tools" -s v -l verbose -d 'Verbose output'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand tools" -l json -d 'Output JSON'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand tools" -s w -l workflow -x -d 'Workflow'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand tools" -s h -l help -d 'Show help'

# --- purge ---
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l log-level -x -a "none\tSuppress logs\nerror\tLog errors only\nwarn\tLog warnings\ninfo\tLog informational\ndebug\tLog debug detail"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l style -x -a "normal\tDetailed output\nminimal\tCompact MCP-like output"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l file-path-render-style -x -a "tree\tCompact tree\nlist\tLabeled list"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l report -d 'Report storage usage without planning or deleting'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l dry-run -d 'Plan purge candidates without deleting'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l delete -d 'Delete planned purge candidates'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l scope -x -a "current\tCurrent scope\nworkspace\tWorkspace scope\nfamily\tFamily scope\nall\tAll scopes"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l workspace-key -x -d 'Explicit workspace key'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l family -x -d 'Workspace family basename prefix'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l classes -x -d 'Comma-separated storage classes'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l older-than -x -d 'Only purge entries older than a day value'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l confirm -x -d 'Confirmation string required for --delete'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -l json -d 'Output deterministic JSON'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -s h -l help -d 'Show help'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand purge" -s v -l version -d 'Show version'

# --- coverage ---
set -l cov_subs get-coverage-report get-file-coverage
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and not __fish_seen_subcommand_from $cov_subs" -a "get-coverage-report\tShow per-target coverage from xcresult"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and not __fish_seen_subcommand_from $cov_subs" -a "get-file-coverage\tShow function-level coverage for a file"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-coverage-report" -l xcresult-path -F -d "Path to xcresult bundle"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-coverage-report" -l target -x -d "Target name"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-coverage-report" -l show-files -d "Show files"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-coverage-report" -l profile -x -d "Override defaults profile"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-coverage-report" -l json -x -d "JSON object of tool args"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-coverage-report" -l output -x -a "text\tplain text\njson\tJSON\njsonl\tJSON lines\nraw\traw" -d "Output format"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-coverage-report" -l verbose -d "Render verbose output"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-file-coverage" -l xcresult-path -F -d "Path to xcresult bundle"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-file-coverage" -l file -F -d "Path to source file"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-file-coverage" -l show-lines -d "Show uncovered line ranges"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-file-coverage" -l profile -x -d "Override defaults profile"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-file-coverage" -l json -x -d "JSON object of tool args"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-file-coverage" -l output -x -a "text\tplain text\njson\tJSON\njsonl\tJSON lines\nraw\traw" -d "Output format"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand coverage; and __fish_seen_subcommand_from get-file-coverage" -l verbose -d "Render verbose output"

# --- debugging ---
set -l debugging_subs attach add-breakpoint remove-breakpoint continue detach lldb-command stack variables
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and not __fish_seen_subcommand_from $debugging_subs" -a "$debugging_subs"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from $debugging_subs" -l profile -x -d 'Override defaults profile'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from $debugging_subs" -l json -x -d 'JSON object of tool args'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from $debugging_subs" -l output -x -a "text\tText output\njson\tJSON output\njsonl\tJSONL output\nraw\tRaw output" -d 'Output format'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from $debugging_subs" -l verbose -d 'Render verbose output'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from $debugging_subs" -s h -l help -d 'Show help'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from $debugging_subs" -s v -l version -d 'Show version'
# attach
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from attach" -l simulator-id -x -d 'Simulator id'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from attach" -l simulator-name -x -d 'Simulator name'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from attach" -l bundle-id -x -d 'App bundle id'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from attach" -l pid -x -d 'Process id'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from attach" -l wait-for -d 'Wait for process'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from attach" -l continue-on-attach -d 'Continue on attach'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from attach" -l make-current -d 'Make current session'
# add-breakpoint
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from add-breakpoint" -l debug-session-id -x -d 'Debug session id'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from add-breakpoint" -l file -r -F -d 'Source file'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from add-breakpoint" -l line -x -d 'Line number'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from add-breakpoint" -l function -x -d 'Function name'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from add-breakpoint" -l condition -x -d 'Breakpoint condition'
# remove-breakpoint
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from remove-breakpoint" -l debug-session-id -x -d 'Debug session id'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from remove-breakpoint" -l breakpoint-id -x -d 'Breakpoint id'
# continue
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from continue" -l debug-session-id -x -d 'Debug session id'
# detach
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from detach" -l debug-session-id -x -d 'Debug session id'
# lldb-command
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from lldb-command" -l debug-session-id -x -d 'Debug session id'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from lldb-command" -l command -x -d 'LLDB command'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from lldb-command" -l timeout-ms -x -d 'Timeout in ms'
# stack
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from stack" -l debug-session-id -x -d 'Debug session id'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from stack" -l thread-index -x -d 'Thread index'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from stack" -l max-frames -x -d 'Max frames'
# variables
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from variables" -l debug-session-id -x -d 'Debug session id'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand debugging; and __fish_seen_subcommand_from variables" -l frame-index -x -d 'Frame index'

# --- device ---
set -l device_subs build build-and-run test list install launch stop get-app-path clean discover-projects list-schemes show-build-settings get-app-bundle-id get-coverage-report get-file-coverage
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand device; and not __fish_seen_subcommand_from $device_subs" -a "$device_subs"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand device; and not __fish_seen_subcommand_from $device_subs" -s h -l help -d "Show help"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand device; and not __fish_seen_subcommand_from $device_subs" -s v -l version -d "Show version"
# shared output opts for device children
for t in build build-and-run test list install launch stop get-app-path clean discover-projects list-schemes show-build-settings get-app-bundle-id get-coverage-report get-file-coverage
    set -l cond "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from $t"
    complete -c xcodebuildmcp -n "$cond" -l profile -r -d "Override defaults profile"
    complete -c xcodebuildmcp -n "$cond" -l json -r -d "JSON object of tool args"
    complete -c xcodebuildmcp -n "$cond" -l output -x -a "text\tText\njson\tJSON\njsonl\tJSONL\nraw\tRaw" -d "Output format"
    complete -c xcodebuildmcp -n "$cond" -l verbose -d "Verbose output"
    complete -c xcodebuildmcp -n "$cond" -s h -l help -d "Show help"
    complete -c xcodebuildmcp -n "$cond" -s v -l version -d "Show version"
end
# device build
set -l db "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from build"
complete -c xcodebuildmcp -n "$db" -l project-path -r -F -d "Project path"
complete -c xcodebuildmcp -n "$db" -l workspace-path -r -F -d "Workspace path"
complete -c xcodebuildmcp -n "$db" -l scheme -x -d "Build scheme"
complete -c xcodebuildmcp -n "$db" -l configuration -x -d "Build configuration"
complete -c xcodebuildmcp -n "$db" -l derived-data-path -r -F -d "Derived data path"
complete -c xcodebuildmcp -n "$db" -l extra-args -x -d "Extra build args"
complete -c xcodebuildmcp -n "$db" -l prefer-xcodebuild -d "Prefer xcodebuild"
complete -c xcodebuildmcp -n "$db" -l device-id -x -d "Device id"
complete -c xcodebuildmcp -n "$db" -l build-for-testing -d "Build for testing"
complete -c xcodebuildmcp -n "$db" -l test-products-path -r -F -d "Test products path"
# device build-and-run
set -l dbr "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from build-and-run"
complete -c xcodebuildmcp -n "$dbr" -l project-path -r -F -d "Project path"
complete -c xcodebuildmcp -n "$dbr" -l workspace-path -r -F -d "Workspace path"
complete -c xcodebuildmcp -n "$dbr" -l scheme -x -d "Build scheme"
complete -c xcodebuildmcp -n "$dbr" -l device-id -x -d "Device id"
complete -c xcodebuildmcp -n "$dbr" -l configuration -x -d "Build configuration"
complete -c xcodebuildmcp -n "$dbr" -l derived-data-path -r -F -d "Derived data path"
complete -c xcodebuildmcp -n "$dbr" -l extra-args -x -d "Extra build args"
complete -c xcodebuildmcp -n "$dbr" -l launch-args -x -d "Launch args"
complete -c xcodebuildmcp -n "$dbr" -l prefer-xcodebuild -d "Prefer xcodebuild"
# device test
set -l dt "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from test"
complete -c xcodebuildmcp -n "$dt" -l project-path -r -F -d "Project path"
complete -c xcodebuildmcp -n "$dt" -l workspace-path -r -F -d "Workspace path"
complete -c xcodebuildmcp -n "$dt" -l scheme -x -d "Test scheme"
complete -c xcodebuildmcp -n "$dt" -l test-products-path -r -F -d "Test products path"
complete -c xcodebuildmcp -n "$dt" -l xctestrun-path -r -F -d "XCTest run path"
complete -c xcodebuildmcp -n "$dt" -l device-id -x -d "Device id"
complete -c xcodebuildmcp -n "$dt" -l configuration -x -d "Build configuration"
complete -c xcodebuildmcp -n "$dt" -l derived-data-path -r -F -d "Derived data path"
complete -c xcodebuildmcp -n "$dt" -l extra-args -x -d "Extra build args"
complete -c xcodebuildmcp -n "$dt" -l prefer-xcodebuild -d "Prefer xcodebuild"
complete -c xcodebuildmcp -n "$dt" -l progress -d "Show progress"
# device install
set -l di "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from install"
complete -c xcodebuildmcp -n "$di" -l device-id -x -d "Device id"
complete -c xcodebuildmcp -n "$di" -l app-path -r -F -d "App path"
# device launch
set -l dla "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from launch"
complete -c xcodebuildmcp -n "$dla" -l device-id -x -d "Device id"
complete -c xcodebuildmcp -n "$dla" -l bundle-id -x -d "Bundle id"
complete -c xcodebuildmcp -n "$dla" -l launch-args -x -d "Launch args"
# device stop
set -l dst "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from stop"
complete -c xcodebuildmcp -n "$dst" -l device-id -x -d "Device id"
complete -c xcodebuildmcp -n "$dst" -l process-id -x -d "Process id"
# device get-app-path
set -l dga "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from get-app-path"
complete -c xcodebuildmcp -n "$dga" -l project-path -r -F -d "Project path"
complete -c xcodebuildmcp -n "$dga" -l workspace-path -r -F -d "Workspace path"
complete -c xcodebuildmcp -n "$dga" -l scheme -x -d "Build scheme"
complete -c xcodebuildmcp -n "$dga" -l configuration -x -d "Build configuration"
complete -c xcodebuildmcp -n "$dga" -l derived-data-path -r -F -d "Derived data path"
# device clean
set -l dc "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from clean"
complete -c xcodebuildmcp -n "$dc" -l project-path -r -F -d "Project path"
complete -c xcodebuildmcp -n "$dc" -l workspace-path -r -F -d "Workspace path"
complete -c xcodebuildmcp -n "$dc" -l scheme -x -d "Build scheme"
complete -c xcodebuildmcp -n "$dc" -l configuration -x -d "Build configuration"
complete -c xcodebuildmcp -n "$dc" -l derived-data-path -r -F -d "Derived data path"
complete -c xcodebuildmcp -n "$dc" -l extra-args -x -d "Extra build args"
complete -c xcodebuildmcp -n "$dc" -l prefer-xcodebuild -d "Prefer xcodebuild"
complete -c xcodebuildmcp -n "$dc" -l platform -x -a "macOS\tiOS iOS\tiOS iOS Simulator\t\twatchOS\twatchOS Simulator\ttvOS\ttvOS Simulator\tvisionOS\tvisionOS Simulator" -d "Build platform"
# device discover-projects
set -l ddp "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from discover-projects"
complete -c xcodebuildmcp -n "$ddp" -l workspace-root -r -F -d "Workspace root"
complete -c xcodebuildmcp -n "$ddp" -l scan-path -r -F -d "Directory to scan"
complete -c xcodebuildmcp -n "$ddp" -l max-depth -x -d "Max scan depth"
# device list-schemes
set -l dls "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from list-schemes"
complete -c xcodebuildmcp -n "$dls" -l project-path -r -F -d "Project path"
complete -c xcodebuildmcp -n "$dls" -l workspace-path -r -F -d "Workspace path"
# device show-build-settings
set -l dsbs "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from show-build-settings"
complete -c xcodebuildmcp -n "$dsbs" -l project-path -r -F -d "Project path"
complete -c xcodebuildmcp -n "$dsbs" -l workspace-path -r -F -d "Workspace path"
complete -c xcodebuildmcp -n "$dsbs" -l scheme -x -d "Build scheme"
# device get-app-bundle-id
set -l dgb "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from get-app-bundle-id"
complete -c xcodebuildmcp -n "$dgb" -l app-path -r -F -d "App path"
# device get-coverage-report
set -l dgc "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from get-coverage-report"
complete -c xcodebuildmcp -n "$dgc" -l xcresult-path -r -F -d "XCResult path"
complete -c xcodebuildmcp -n "$dgc" -l target -x -d "Coverage target"
complete -c xcodebuildmcp -n "$dgc" -l show-files -d "Show covered files"
# device get-file-coverage
set -l dgf "__fish_xcodebuildmcp_using_subcommand device; and __fish_seen_subcommand_from get-file-coverage"
complete -c xcodebuildmcp -n "$dgf" -l xcresult-path -r -F -d "XCResult path"
complete -c xcodebuildmcp -n "$dgf" -l file -r -F -d "Source file"
complete -c xcodebuildmcp -n "$dgf" -l show-lines -d "Show uncovered lines"

# --- macos ---
set -l macos_subs build build-and-run test launch stop get-app-path get-macos-bundle-id clean discover-projects list-schemes show-build-settings get-coverage-report get-file-coverage
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand macos; and not __fish_seen_subcommand_from $macos_subs" \
    -a "build\t'Build macOS app' build-and-run\t'Build and run macOS app' test\t'Test macOS target' launch\t'Launch macOS app' stop\t'Stop macOS app' get-app-path\t'Get built app path' get-macos-bundle-id\t'Extract bundle id from app' clean\t'Clean build products' discover-projects\t'Discover Xcode projects' list-schemes\t'List Xcode schemes' show-build-settings\t'Show build settings' get-coverage-report\t'Show per-target coverage' get-file-coverage\t'Show per-file coverage'"
# common options for every macos tool
for t in $macos_subs
    set -l cond "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from $t"
    complete -c xcodebuildmcp -n "$cond" -l profile -x -d 'Override defaults profile'
    complete -c xcodebuildmcp -n "$cond" -l json -x -d 'JSON object of tool args'
    complete -c xcodebuildmcp -n "$cond" -l output -x -a "text\t'Plain text' json\tJSON jsonl\t'JSON lines' raw\tRaw" -d 'Output format'
    complete -c xcodebuildmcp -n "$cond" -l verbose -d 'Render verbose output'
    complete -c xcodebuildmcp -n "$cond" -s h -l help -d 'Show help'
    complete -c xcodebuildmcp -n "$cond" -s v -l version -d 'Show version'
end
# macos build
set -l mb "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from build"
complete -c xcodebuildmcp -n "$mb" -l project-path -r -d 'Path to .xcodeproj'
complete -c xcodebuildmcp -n "$mb" -l workspace-path -r -d 'Path to .xcworkspace'
complete -c xcodebuildmcp -n "$mb" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "$mb" -l configuration -x -d 'Build configuration'
complete -c xcodebuildmcp -n "$mb" -l derived-data-path -r -d 'Derived data directory'
complete -c xcodebuildmcp -n "$mb" -l arch -x -a "arm64 x86_64" -d 'Target architecture'
complete -c xcodebuildmcp -n "$mb" -l extra-args -x -d 'Extra xcodebuild args'
complete -c xcodebuildmcp -n "$mb" -l prefer-xcodebuild -d 'Prefer xcodebuild'
complete -c xcodebuildmcp -n "$mb" -l build-for-testing -d 'Build for testing'
complete -c xcodebuildmcp -n "$mb" -l test-products-path -r -d 'Test products path'
# macos build-and-run
set -l mbr "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from build-and-run"
complete -c xcodebuildmcp -n "$mbr" -l project-path -r -d 'Path to .xcodeproj'
complete -c xcodebuildmcp -n "$mbr" -l workspace-path -r -d 'Path to .xcworkspace'
complete -c xcodebuildmcp -n "$mbr" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "$mbr" -l configuration -x -d 'Build configuration'
complete -c xcodebuildmcp -n "$mbr" -l derived-data-path -r -d 'Derived data directory'
complete -c xcodebuildmcp -n "$mbr" -l arch -x -a "arm64 x86_64" -d 'Target architecture'
complete -c xcodebuildmcp -n "$mbr" -l extra-args -x -d 'Extra xcodebuild args'
complete -c xcodebuildmcp -n "$mbr" -l launch-args -x -d 'Launch arguments'
complete -c xcodebuildmcp -n "$mbr" -l prefer-xcodebuild -d 'Prefer xcodebuild'
# macos test
set -l mt "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from test"
complete -c xcodebuildmcp -n "$mt" -l project-path -r -d 'Path to .xcodeproj'
complete -c xcodebuildmcp -n "$mt" -l workspace-path -r -d 'Path to .xcworkspace'
complete -c xcodebuildmcp -n "$mt" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "$mt" -l test-products-path -r -d 'Test products path'
complete -c xcodebuildmcp -n "$mt" -l xctestrun-path -r -d 'Path to .xctestrun'
complete -c xcodebuildmcp -n "$mt" -l configuration -x -d 'Build configuration'
complete -c xcodebuildmcp -n "$mt" -l derived-data-path -r -d 'Derived data directory'
complete -c xcodebuildmcp -n "$mt" -l extra-args -x -d 'Extra xcodebuild args'
complete -c xcodebuildmcp -n "$mt" -l prefer-xcodebuild -d 'Prefer xcodebuild'
complete -c xcodebuildmcp -n "$mt" -l progress -d 'Show test progress'
# macos launch
set -l ml "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from launch"
complete -c xcodebuildmcp -n "$ml" -l app-path -r -d 'Path to built .app'
complete -c xcodebuildmcp -n "$ml" -l launch-args -x -d 'Launch arguments'
# macos stop
set -l mst "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from stop"
complete -c xcodebuildmcp -n "$mst" -l app-name -x -d 'App name'
complete -c xcodebuildmcp -n "$mst" -l process-id -x -d 'Process ID'
# macos get-app-path
set -l mga "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from get-app-path"
complete -c xcodebuildmcp -n "$mga" -l project-path -r -d 'Path to .xcodeproj'
complete -c xcodebuildmcp -n "$mga" -l workspace-path -r -d 'Path to .xcworkspace'
complete -c xcodebuildmcp -n "$mga" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "$mga" -l configuration -x -d 'Build configuration'
complete -c xcodebuildmcp -n "$mga" -l derived-data-path -r -d 'Derived data directory'
complete -c xcodebuildmcp -n "$mga" -l extra-args -x -d 'Extra xcodebuild args'
complete -c xcodebuildmcp -n "$mga" -l arch -x -a "arm64 x86_64" -d 'Target architecture'
# macos get-macos-bundle-id
set -l mgb "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from get-macos-bundle-id"
complete -c xcodebuildmcp -n "$mgb" -l app-path -r -d 'Path to built .app'
# macos clean
set -l mc "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from clean"
complete -c xcodebuildmcp -n "$mc" -l project-path -r -d 'Path to .xcodeproj'
complete -c xcodebuildmcp -n "$mc" -l workspace-path -r -d 'Path to .xcworkspace'
complete -c xcodebuildmcp -n "$mc" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "$mc" -l configuration -x -d 'Build configuration'
complete -c xcodebuildmcp -n "$mc" -l derived-data-path -r -d 'Derived data directory'
complete -c xcodebuildmcp -n "$mc" -l extra-args -x -d 'Extra xcodebuild args'
complete -c xcodebuildmcp -n "$mc" -l prefer-xcodebuild -d 'Prefer xcodebuild'
complete -c xcodebuildmcp -n "$mc" -l platform -x -a "macOS iOS 'iOS Simulator' watchOS 'watchOS Simulator' tvOS 'tvOS Simulator' visionOS 'visionOS Simulator'" -d 'Target platform'
# macos discover-projects
set -l mdp "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from discover-projects"
complete -c xcodebuildmcp -n "$mdp" -l workspace-root -r -d 'Workspace root directory'
complete -c xcodebuildmcp -n "$mdp" -l scan-path -r -d 'Directory to scan'
complete -c xcodebuildmcp -n "$mdp" -l max-depth -x -d 'Max scan depth'
# macos list-schemes
set -l mls "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from list-schemes"
complete -c xcodebuildmcp -n "$mls" -l project-path -r -d 'Path to .xcodeproj'
complete -c xcodebuildmcp -n "$mls" -l workspace-path -r -d 'Path to .xcworkspace'
# macos show-build-settings
set -l msbs "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from show-build-settings"
complete -c xcodebuildmcp -n "$msbs" -l project-path -r -d 'Path to .xcodeproj'
complete -c xcodebuildmcp -n "$msbs" -l workspace-path -r -d 'Path to .xcworkspace'
complete -c xcodebuildmcp -n "$msbs" -l scheme -x -d 'Xcode scheme'
# macos get-coverage-report
set -l mgc "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from get-coverage-report"
complete -c xcodebuildmcp -n "$mgc" -l xcresult-path -r -d 'Path to .xcresult bundle'
complete -c xcodebuildmcp -n "$mgc" -l target -x -d 'Target name'
complete -c xcodebuildmcp -n "$mgc" -l show-files -d 'Show files in report'
# macos get-file-coverage
set -l mgf "__fish_xcodebuildmcp_using_subcommand macos; and __fish_seen_subcommand_from get-file-coverage"
complete -c xcodebuildmcp -n "$mgf" -l xcresult-path -r -d 'Path to .xcresult bundle'
complete -c xcodebuildmcp -n "$mgf" -l file -x -d 'Source file path'
complete -c xcodebuildmcp -n "$mgf" -l show-lines -d 'Show uncovered line ranges'

# --- project-discovery ---
set -l pd_subs discover-projects list-schemes show-build-settings get-app-bundle-id get-macos-bundle-id
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand project-discovery; and not __fish_seen_subcommand_from $pd_subs" -a "discover-projects\tScan directory for Xcode projects"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand project-discovery; and not __fish_seen_subcommand_from $pd_subs" -a "list-schemes\tList Xcode schemes"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand project-discovery; and not __fish_seen_subcommand_from $pd_subs" -a "show-build-settings\tShow build settings"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand project-discovery; and not __fish_seen_subcommand_from $pd_subs" -a "get-app-bundle-id\tExtract bundle id from .app"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand project-discovery; and not __fish_seen_subcommand_from $pd_subs" -a "get-macos-bundle-id\tExtract bundle id from macOS .app"
for t in $pd_subs
    set -l cond "__fish_xcodebuildmcp_using_subcommand project-discovery; and __fish_seen_subcommand_from $t"
    complete -c xcodebuildmcp -n "$cond" -l profile -x -d "Override defaults profile"
    complete -c xcodebuildmcp -n "$cond" -l json -x -d "JSON object of tool args"
    complete -c xcodebuildmcp -n "$cond" -l output -x -a "text\tText\njson\tJSON\njsonl\tJSONL\nraw\tRaw" -d "Output format"
    complete -c xcodebuildmcp -n "$cond" -l verbose -d "Render verbose output"
    complete -c xcodebuildmcp -n "$cond" -s h -l help -d "Show help"
    complete -c xcodebuildmcp -n "$cond" -s v -l version -d "Show version"
end
set -l pd "__fish_xcodebuildmcp_using_subcommand project-discovery; and __fish_seen_subcommand_from"
complete -c xcodebuildmcp -n "$pd discover-projects" -l workspace-root -r -F -d "Workspace root to scan"
complete -c xcodebuildmcp -n "$pd discover-projects" -l scan-path -r -F -d "Path to scan"
complete -c xcodebuildmcp -n "$pd discover-projects" -l max-depth -x -d "Max scan depth"
complete -c xcodebuildmcp -n "$pd list-schemes" -l project-path -r -F -d "Project file path"
complete -c xcodebuildmcp -n "$pd list-schemes" -l workspace-path -r -F -d "Workspace file path"
complete -c xcodebuildmcp -n "$pd show-build-settings" -l project-path -r -F -d "Project file path"
complete -c xcodebuildmcp -n "$pd show-build-settings" -l workspace-path -r -F -d "Workspace file path"
complete -c xcodebuildmcp -n "$pd show-build-settings" -l scheme -x -d "Scheme name"
complete -c xcodebuildmcp -n "$pd get-app-bundle-id" -l app-path -r -F -d "Path to .app"
complete -c xcodebuildmcp -n "$pd get-macos-bundle-id" -l app-path -r -F -d "Path to macOS .app"

# --- project-scaffolding ---
set -l scaffold_subs scaffold-ios scaffold-macos
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand project-scaffolding; and not __fish_seen_subcommand_from $scaffold_subs" -a "scaffold-ios\tScaffold iOS project"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand project-scaffolding; and not __fish_seen_subcommand_from $scaffold_subs" -a "scaffold-macos\tScaffold macOS project"
for t in $scaffold_subs
    set -l cond "__fish_xcodebuildmcp_using_subcommand project-scaffolding; and __fish_seen_subcommand_from $t"
    complete -c xcodebuildmcp -n "$cond" -l project-name -x -d 'Project name'
    complete -c xcodebuildmcp -n "$cond" -l output-path -r -F -d 'Output directory'
    complete -c xcodebuildmcp -n "$cond" -l bundle-identifier -x -d 'Bundle identifier'
    complete -c xcodebuildmcp -n "$cond" -l display-name -x -d 'Display name'
    complete -c xcodebuildmcp -n "$cond" -l marketing-version -x -d 'Marketing version'
    complete -c xcodebuildmcp -n "$cond" -l current-project-version -x -d 'Project version'
    complete -c xcodebuildmcp -n "$cond" -l customize-names -d 'Customize names'
    complete -c xcodebuildmcp -n "$cond" -l deployment-target -x -d 'Deployment target'
    complete -c xcodebuildmcp -n "$cond" -l profile -x -d 'Override defaults profile'
    complete -c xcodebuildmcp -n "$cond" -l json -x -d 'JSON object of tool args'
    complete -c xcodebuildmcp -n "$cond" -l output -x -a "text\tText output\njson\tJSON\njsonl\tJSON lines\nraw\tRaw" -d 'Output format'
    complete -c xcodebuildmcp -n "$cond" -l verbose -d 'Verbose output'
    complete -c xcodebuildmcp -n "$cond" -s h -l help -d 'Show help'
    complete -c xcodebuildmcp -n "$cond" -s v -l version -d 'Show version'
end

# --- simulator ---
set -l sim_subs list boot open build build-and-run test get-app-path install launch-app stop record-video clean discover-projects list-schemes show-build-settings get-app-bundle-id screenshot snapshot-ui get-coverage-report get-file-coverage
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand simulator; and not __fish_seen_subcommand_from $sim_subs" \
    -a "list\tList iOS simulators\nboot\tBoot simulator\nopen\tOpen simulator UI\nbuild\tBuild for sim\nbuild-and-run\tBuild, install, launch\ntest\tTest on sim\nget-app-path\tGet built app path\ninstall\tInstall app\nlaunch-app\tLaunch app\nstop\tStop app\nrecord-video\tRecord sim video\nclean\tClean build products\ndiscover-projects\tFind Xcode projects\nlist-schemes\tList schemes\nshow-build-settings\tShow build settings\nget-app-bundle-id\tGet app bundle ID\nscreenshot\tCapture screenshot\nsnapshot-ui\tCapture UI snapshot\nget-coverage-report\tShow coverage\nget-file-coverage\tShow file coverage"
# common output opts
for t in $sim_subs
    set -l cond "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from $t"
    complete -c xcodebuildmcp -n "$cond" -l profile -x -d 'Override defaults profile'
    complete -c xcodebuildmcp -n "$cond" -l json -x -d 'JSON object of tool args'
    complete -c xcodebuildmcp -n "$cond" -l output -x -a "text\tText\njson\tJSON\njsonl\tJSONL\nraw\tRaw" -d 'Output format'
    complete -c xcodebuildmcp -n "$cond" -l verbose -d 'Render verbose output'
    complete -c xcodebuildmcp -n "$cond" -s h -l help -d 'Show help'
    complete -c xcodebuildmcp -n "$cond" -s v -l version -d 'Show version'
end
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from list" -l enabled -d 'Filter to enabled'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from boot" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from boot" -l simulator-name -x -d 'Simulator name'
set -l sb "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from build"
complete -c xcodebuildmcp -n "$sb" -l project-path -r -F -d 'Xcode project path'
complete -c xcodebuildmcp -n "$sb" -l workspace-path -r -F -d 'Xcode workspace path'
complete -c xcodebuildmcp -n "$sb" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "$sb" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$sb" -l simulator-name -x -d 'Simulator name'
complete -c xcodebuildmcp -n "$sb" -l configuration -x -d 'Build configuration'
complete -c xcodebuildmcp -n "$sb" -l derived-data-path -r -F -d 'Derived data path'
complete -c xcodebuildmcp -n "$sb" -l extra-args -x -d 'Extra build args'
complete -c xcodebuildmcp -n "$sb" -l use-latest-os -d 'Use latest OS'
complete -c xcodebuildmcp -n "$sb" -l prefer-xcodebuild -d 'Prefer xcodebuild'
complete -c xcodebuildmcp -n "$sb" -l build-for-testing -d 'Build for testing'
complete -c xcodebuildmcp -n "$sb" -l test-products-path -r -F -d 'Test products path'
set -l sbr "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from build-and-run"
complete -c xcodebuildmcp -n "$sbr" -l project-path -r -F -d 'Xcode project path'
complete -c xcodebuildmcp -n "$sbr" -l workspace-path -r -F -d 'Xcode workspace path'
complete -c xcodebuildmcp -n "$sbr" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "$sbr" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$sbr" -l simulator-name -x -d 'Simulator name'
complete -c xcodebuildmcp -n "$sbr" -l configuration -x -d 'Build configuration'
complete -c xcodebuildmcp -n "$sbr" -l derived-data-path -r -F -d 'Derived data path'
complete -c xcodebuildmcp -n "$sbr" -l extra-args -x -d 'Extra build args'
complete -c xcodebuildmcp -n "$sbr" -l launch-args -x -d 'Launch args'
complete -c xcodebuildmcp -n "$sbr" -l use-latest-os -d 'Use latest OS'
complete -c xcodebuildmcp -n "$sbr" -l prefer-xcodebuild -d 'Prefer xcodebuild'
set -l st "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from test"
complete -c xcodebuildmcp -n "$st" -l project-path -r -F -d 'Xcode project path'
complete -c xcodebuildmcp -n "$st" -l workspace-path -r -F -d 'Xcode workspace path'
complete -c xcodebuildmcp -n "$st" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "$st" -l test-products-path -r -F -d 'Test products path'
complete -c xcodebuildmcp -n "$st" -l xctestrun-path -r -F -d 'xctestrun path'
complete -c xcodebuildmcp -n "$st" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$st" -l simulator-name -x -d 'Simulator name'
complete -c xcodebuildmcp -n "$st" -l configuration -x -d 'Build configuration'
complete -c xcodebuildmcp -n "$st" -l derived-data-path -r -F -d 'Derived data path'
complete -c xcodebuildmcp -n "$st" -l extra-args -x -d 'Extra build args'
complete -c xcodebuildmcp -n "$st" -l use-latest-os -d 'Use latest OS'
complete -c xcodebuildmcp -n "$st" -l prefer-xcodebuild -d 'Prefer xcodebuild'
complete -c xcodebuildmcp -n "$st" -l progress -d 'Show progress'
set -l sga "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from get-app-path"
complete -c xcodebuildmcp -n "$sga" -l project-path -r -F -d 'Xcode project path'
complete -c xcodebuildmcp -n "$sga" -l workspace-path -r -F -d 'Xcode workspace path'
complete -c xcodebuildmcp -n "$sga" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "$sga" -l platform -x -a "iOS Simulator watchOS Simulator tvOS Simulator visionOS Simulator" -d 'Target platform'
complete -c xcodebuildmcp -n "$sga" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$sga" -l simulator-name -x -d 'Simulator name'
complete -c xcodebuildmcp -n "$sga" -l configuration -x -d 'Build configuration'
complete -c xcodebuildmcp -n "$sga" -l derived-data-path -r -F -d 'Derived data path'
complete -c xcodebuildmcp -n "$sga" -l use-latest-os -d 'Use latest OS'
set -l si "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from install"
complete -c xcodebuildmcp -n "$si" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$si" -l simulator-name -x -d 'Simulator name'
complete -c xcodebuildmcp -n "$si" -l app-path -r -F -d 'App path'
set -l sla "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from launch-app"
complete -c xcodebuildmcp -n "$sla" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$sla" -l simulator-name -x -d 'Simulator name'
complete -c xcodebuildmcp -n "$sla" -l bundle-id -x -d 'Bundle ID'
complete -c xcodebuildmcp -n "$sla" -l launch-args -x -d 'Launch args'
set -l ss "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from stop"
complete -c xcodebuildmcp -n "$ss" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$ss" -l simulator-name -x -d 'Simulator name'
complete -c xcodebuildmcp -n "$ss" -l bundle-id -x -d 'Bundle ID'
set -l srv "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from record-video"
complete -c xcodebuildmcp -n "$srv" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$srv" -l start -d 'Start recording'
complete -c xcodebuildmcp -n "$srv" -l stop -d 'Stop recording'
complete -c xcodebuildmcp -n "$srv" -l fps -x -d 'Frames per second'
complete -c xcodebuildmcp -n "$srv" -l output-file -r -F -d 'Output file path'
set -l sc "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from clean"
complete -c xcodebuildmcp -n "$sc" -l project-path -r -F -d 'Xcode project path'
complete -c xcodebuildmcp -n "$sc" -l workspace-path -r -F -d 'Xcode workspace path'
complete -c xcodebuildmcp -n "$sc" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "$sc" -l configuration -x -d 'Build configuration'
complete -c xcodebuildmcp -n "$sc" -l derived-data-path -r -F -d 'Derived data path'
complete -c xcodebuildmcp -n "$sc" -l extra-args -x -d 'Extra build args'
complete -c xcodebuildmcp -n "$sc" -l prefer-xcodebuild -d 'Prefer xcodebuild'
complete -c xcodebuildmcp -n "$sc" -l platform -x -a "macOS iOS iOS Simulator watchOS watchOS Simulator tvOS tvOS Simulator visionOS visionOS Simulator" -d 'Target platform'
set -l sdp "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from discover-projects"
complete -c xcodebuildmcp -n "$sdp" -l workspace-root -r -F -d 'Workspace root'
complete -c xcodebuildmcp -n "$sdp" -l scan-path -r -F -d 'Scan path'
complete -c xcodebuildmcp -n "$sdp" -l max-depth -x -d 'Max scan depth'
set -l sls "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from list-schemes"
complete -c xcodebuildmcp -n "$sls" -l project-path -r -F -d 'Xcode project path'
complete -c xcodebuildmcp -n "$sls" -l workspace-path -r -F -d 'Xcode workspace path'
set -l ssbs "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from show-build-settings"
complete -c xcodebuildmcp -n "$ssbs" -l project-path -r -F -d 'Xcode project path'
complete -c xcodebuildmcp -n "$ssbs" -l workspace-path -r -F -d 'Xcode workspace path'
complete -c xcodebuildmcp -n "$ssbs" -l scheme -x -d 'Xcode scheme'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from get-app-bundle-id" -l app-path -r -F -d 'App path'
set -l sshot "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from screenshot"
complete -c xcodebuildmcp -n "$sshot" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$sshot" -l return-format -x -a "path\tPath\nbase64\tBase64" -d 'Screenshot return format'
set -l ssui "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from snapshot-ui"
complete -c xcodebuildmcp -n "$ssui" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$ssui" -l since-screen-hash -x -d 'Since screen hash'
set -l sgc "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from get-coverage-report"
complete -c xcodebuildmcp -n "$sgc" -l xcresult-path -r -F -d 'xcresult path'
complete -c xcodebuildmcp -n "$sgc" -l target -x -d 'Coverage target'
complete -c xcodebuildmcp -n "$sgc" -l show-files -d 'Show files'
set -l sgf "__fish_xcodebuildmcp_using_subcommand simulator; and __fish_seen_subcommand_from get-file-coverage"
complete -c xcodebuildmcp -n "$sgf" -l xcresult-path -r -F -d 'xcresult path'
complete -c xcodebuildmcp -n "$sgf" -l file -r -F -d 'File path'
complete -c xcodebuildmcp -n "$sgf" -l show-lines -d 'Show lines'

# --- simulator-management ---
set -l simm_subs boot list open erase set-location reset-location set-appearance statusbar toggle-software-keyboard toggle-connect-hardware-keyboard
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand simulator-management; and not __fish_seen_subcommand_from $simm_subs" \
    -a "boot\tBoot simulator for manual/non-build flows\nlist\tList iOS simulators\nopen\tOpen simulator frontend\nerase\tErase simulator\nset-location\tSet sim location\nreset-location\tReset sim location\nset-appearance\tSet sim appearance\nstatusbar\tSet status bar network\ntoggle-software-keyboard\tToggle software keyboard\ntoggle-connect-hardware-keyboard\tToggle hardware keyboard"
for t in $simm_subs
    set -l cond "__fish_xcodebuildmcp_using_subcommand simulator-management; and __fish_seen_subcommand_from $t"
    complete -c xcodebuildmcp -n "$cond" -l profile -x -d 'Override defaults profile'
    complete -c xcodebuildmcp -n "$cond" -l json -x -d 'JSON object of tool args'
    complete -c xcodebuildmcp -n "$cond" -l output -x -a "text\tPlain text\njson\tJSON\njsonl\tJSON lines\nraw\tRaw" -d 'Output format'
    complete -c xcodebuildmcp -n "$cond" -l verbose -d 'Render verbose output'
    complete -c xcodebuildmcp -n "$cond" -s h -l help -d 'Show help'
    complete -c xcodebuildmcp -n "$cond" -s v -l version -d 'Show version'
end
set -l smb "__fish_xcodebuildmcp_using_subcommand simulator-management; and __fish_seen_subcommand_from boot"
complete -c xcodebuildmcp -n "$smb" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$smb" -l simulator-name -x -d 'Simulator name'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand simulator-management; and __fish_seen_subcommand_from list" -l enabled -d 'List only enabled'
set -l sme "__fish_xcodebuildmcp_using_subcommand simulator-management; and __fish_seen_subcommand_from erase"
complete -c xcodebuildmcp -n "$sme" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$sme" -l shutdown-first -d 'Shut down first'
set -l smsl "__fish_xcodebuildmcp_using_subcommand simulator-management; and __fish_seen_subcommand_from set-location"
complete -c xcodebuildmcp -n "$smsl" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$smsl" -l latitude -x -d 'Latitude'
complete -c xcodebuildmcp -n "$smsl" -l longitude -x -d 'Longitude'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand simulator-management; and __fish_seen_subcommand_from reset-location" -l simulator-id -x -d 'Simulator ID'
set -l smsa "__fish_xcodebuildmcp_using_subcommand simulator-management; and __fish_seen_subcommand_from set-appearance"
complete -c xcodebuildmcp -n "$smsa" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$smsa" -l mode -x -a "dark\tDark\nlight\tLight" -d 'Appearance mode'
set -l smsb "__fish_xcodebuildmcp_using_subcommand simulator-management; and __fish_seen_subcommand_from statusbar"
complete -c xcodebuildmcp -n "$smsb" -l simulator-id -x -d 'Simulator ID'
complete -c xcodebuildmcp -n "$smsb" -l data-network -x -a "clear\tClear\nhide\tHide\nwifi\tWiFi\n3g\t3G\n4g\t4G\nlte\tLTE\nlte-a\tLTE-A\nlte+\tLTE+\n5g\t5G\n5g+\t5G+\n5g-uwb\t5G UWB\n5g-uc\t5G UC" -d 'Data network'
set -l smtk "__fish_xcodebuildmcp_using_subcommand simulator-management; and __fish_seen_subcommand_from toggle-software-keyboard"
complete -c xcodebuildmcp -n "$smtk" -l simulator-id -x -d 'Simulator ID'
set -l smth "__fish_xcodebuildmcp_using_subcommand simulator-management; and __fish_seen_subcommand_from toggle-connect-hardware-keyboard"
complete -c xcodebuildmcp -n "$smth" -l simulator-id -x -d 'Simulator ID'

# --- swift-package ---
set -l sp_subs build test clean run stop list get-coverage-report get-file-coverage
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand swift-package; and not __fish_seen_subcommand_from $sp_subs" \
    -a "build\tSwift package target build\ntest\tRun swift package target tests\nclean\tSwift package clean\nrun\tSwift package target run\nstop\tStop SwiftPM run\nlist\tList SwiftPM processes\nget-coverage-report\tShow per-target code coverage from an xcresult bundle\nget-file-coverage\tShow function-level coverage for a specific file"
# common per-tool options
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand swift-package" -l profile -x -d 'Override the defaults profile for this command only'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand swift-package" -l json -x -d 'JSON object of tool args (merged with flags)'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand swift-package" -l output -x -a "text\tPlain text\njson\tJSON\njsonl\tJSON lines\nraw\tRaw" -d 'Output format'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand swift-package" -l verbose -d 'Render verbose output data when supported'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand swift-package; and not __fish_seen_subcommand_from $sp_subs" -s h -l help -d 'Show help'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand swift-package; and not __fish_seen_subcommand_from $sp_subs" -s v -l version -d 'Show version number'
set -l spb "__fish_xcodebuildmcp_using_subcommand swift-package; and __fish_seen_subcommand_from build"
complete -c xcodebuildmcp -n "$spb" -l package-path -F -d 'Package path'
complete -c xcodebuildmcp -n "$spb" -l target-name -x -d 'Target name'
complete -c xcodebuildmcp -n "$spb" -l configuration -x -a "debug\tDebug\nrelease\tRelease" -d 'Build configuration'
complete -c xcodebuildmcp -n "$spb" -l architectures -x -d 'Architectures'
complete -c xcodebuildmcp -n "$spb" -l parse-as-library -d 'Parse as library'
set -l spt "__fish_xcodebuildmcp_using_subcommand swift-package; and __fish_seen_subcommand_from test"
complete -c xcodebuildmcp -n "$spt" -l package-path -F -d 'Package path'
complete -c xcodebuildmcp -n "$spt" -l test-product -x -d 'Test product'
complete -c xcodebuildmcp -n "$spt" -l filter -x -d 'Test filter'
complete -c xcodebuildmcp -n "$spt" -l configuration -x -a "debug\tDebug\nrelease\tRelease" -d 'Build configuration'
complete -c xcodebuildmcp -n "$spt" -l parallel -d 'Run tests in parallel'
complete -c xcodebuildmcp -n "$spt" -l show-codecov -d 'Show code coverage'
complete -c xcodebuildmcp -n "$spt" -l parse-as-library -d 'Parse as library'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand swift-package; and __fish_seen_subcommand_from clean" -l package-path -F -d 'Package path'
set -l spr "__fish_xcodebuildmcp_using_subcommand swift-package; and __fish_seen_subcommand_from run"
complete -c xcodebuildmcp -n "$spr" -l package-path -F -d 'Package path'
complete -c xcodebuildmcp -n "$spr" -l executable-name -x -d 'Executable name'
complete -c xcodebuildmcp -n "$spr" -l arguments -x -d 'Arguments to pass'
complete -c xcodebuildmcp -n "$spr" -l configuration -x -a "debug\tDebug\nrelease\tRelease" -d 'Build configuration'
complete -c xcodebuildmcp -n "$spr" -l timeout -x -d 'Timeout'
complete -c xcodebuildmcp -n "$spr" -l background -d 'Run in background'
complete -c xcodebuildmcp -n "$spr" -l parse-as-library -d 'Parse as library'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand swift-package; and __fish_seen_subcommand_from stop" -l pid -x -d 'Process ID'
set -l spgc "__fish_xcodebuildmcp_using_subcommand swift-package; and __fish_seen_subcommand_from get-coverage-report"
complete -c xcodebuildmcp -n "$spgc" -l xcresult-path -F -d 'Path to xcresult bundle'
complete -c xcodebuildmcp -n "$spgc" -l target -x -d 'Target'
complete -c xcodebuildmcp -n "$spgc" -l show-files -d 'Show file coverage'
set -l spgf "__fish_xcodebuildmcp_using_subcommand swift-package; and __fish_seen_subcommand_from get-file-coverage"
complete -c xcodebuildmcp -n "$spgf" -l xcresult-path -F -d 'Path to xcresult bundle'
complete -c xcodebuildmcp -n "$spgf" -l file -F -d 'Source file'
complete -c xcodebuildmcp -n "$spgf" -l show-lines -d 'Show uncovered line ranges'

# --- ui-automation ---
set -l uia_subs snapshot-ui wait-for-ui batch tap touch long-press swipe drag gesture button key-press key-sequence type-text screenshot
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand ui-automation; and not __fish_seen_subcommand_from $uia_subs" \
    -a "snapshot-ui\tCapture runtime UI snapshot\nwait-for-ui\tPoll until a UI predicate is met\nbatch\tBatch elementRef taps\ntap\tTap an elementRef\ntouch\tSend touch down/up\nlong-press\tLong press an elementRef\nswipe\tSwipe within a scrollable element\ndrag\tDrag an elementRef\ngesture\tRun a gesture preset\nbutton\tPress hardware button\nkey-press\tPress a hardware key\nkey-sequence\tPress hardware keys\ntype-text\tType text into a field\nscreenshot\tCapture screenshot"
for t in $uia_subs
    set -l cond "__fish_xcodebuildmcp_using_subcommand ui-automation; and __fish_seen_subcommand_from $t"
    complete -c xcodebuildmcp -n "$cond" -l profile -d 'Override defaults profile' -x
    complete -c xcodebuildmcp -n "$cond" -l json -d 'JSON object of tool args' -x
    complete -c xcodebuildmcp -n "$cond" -l output -d 'Output format' -x -a "text\tPlain text\njson\tJSON\njsonl\tJSON lines\nraw\tRaw"
    complete -c xcodebuildmcp -n "$cond" -l verbose -d 'Render verbose output'
    complete -c xcodebuildmcp -n "$cond" -s h -l help -d 'Show help'
    complete -c xcodebuildmcp -n "$cond" -s v -l version -d 'Show version'
end
set -l ui "__fish_xcodebuildmcp_using_subcommand ui-automation; and __fish_seen_subcommand_from"
complete -c xcodebuildmcp -n "$ui snapshot-ui" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui snapshot-ui" -l since-screen-hash -d 'Screen hash to refresh from' -x
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l predicate -d 'UI predicate' -x -a "exists\tElement exists\ngone\tElement gone\nenabled\tElement enabled\nfocused\tElement focused\ntextContains\tText contains\nsettled\tUI settled"
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l element-ref -d 'Element ref from snapshot' -x
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l identifier -d 'Element identifier' -x
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l label -d 'Element label' -x
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l role -d 'Accessibility role' -x -a "application\tApplication\nbutton\tButton\ncell\tCell\nimage\tImage\nkeyboard-key\tKeyboard key\nlist\tList\nmenu\tMenu\nother\tOther\nscroll-view\tScroll view\nslider\tSlider\nswitch\tSwitch\ntab\tTab\ntext\tText\ntext-field\tText field\nwindow\tWindow"
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l value -d 'Element value' -x
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l text -d 'Text to match' -x
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l timeout-ms -d 'Timeout in ms' -x
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l poll-interval-ms -d 'Poll interval in ms' -x
complete -c xcodebuildmcp -n "$ui wait-for-ui" -l settled-duration-ms -d 'Settled duration in ms' -x
complete -c xcodebuildmcp -n "$ui batch" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui batch" -l ax-cache -d 'AX cache mode' -x -a "perBatch\tCache per batch\nperStep\tCache per step\nnone\tNo cache"
complete -c xcodebuildmcp -n "$ui batch" -l wait-timeout -d 'Wait timeout' -x
complete -c xcodebuildmcp -n "$ui batch" -l poll-interval -d 'Poll interval' -x
complete -c xcodebuildmcp -n "$ui tap" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui tap" -l element-ref -d 'Element ref from snapshot' -x
complete -c xcodebuildmcp -n "$ui tap" -l pre-delay -d 'Delay before action' -x
complete -c xcodebuildmcp -n "$ui tap" -l post-delay -d 'Delay after action' -x
complete -c xcodebuildmcp -n "$ui touch" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui touch" -l element-ref -d 'Element ref from snapshot' -x
complete -c xcodebuildmcp -n "$ui touch" -l down -d 'Send touch down'
complete -c xcodebuildmcp -n "$ui touch" -l up -d 'Send touch up'
complete -c xcodebuildmcp -n "$ui touch" -l delay -d 'Delay in ms' -x
complete -c xcodebuildmcp -n "$ui long-press" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui long-press" -l element-ref -d 'Element ref from snapshot' -x
complete -c xcodebuildmcp -n "$ui long-press" -l duration -d 'Duration in ms' -x
complete -c xcodebuildmcp -n "$ui swipe" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui swipe" -l within-element-ref -d 'Scrollable element ref' -x
complete -c xcodebuildmcp -n "$ui swipe" -l direction -d 'Swipe direction' -x -a "up\tSwipe up\ndown\tSwipe down\nleft\tSwipe left\nright\tSwipe right"
complete -c xcodebuildmcp -n "$ui swipe" -l duration -d 'Duration in ms' -x
complete -c xcodebuildmcp -n "$ui swipe" -l distance -d 'Stroke fraction' -x
complete -c xcodebuildmcp -n "$ui swipe" -l pre-delay -d 'Delay before action' -x
complete -c xcodebuildmcp -n "$ui swipe" -l post-delay -d 'Delay after action' -x
complete -c xcodebuildmcp -n "$ui drag" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui drag" -l element-ref -d 'Element ref from snapshot' -x
complete -c xcodebuildmcp -n "$ui drag" -l direction -d 'Drag direction' -x -a "up\tDrag up\ndown\tDrag down\nleft\tDrag left\nright\tDrag right"
complete -c xcodebuildmcp -n "$ui drag" -l duration -d 'Duration in ms' -x
complete -c xcodebuildmcp -n "$ui drag" -l distance -d 'Stroke fraction' -x
complete -c xcodebuildmcp -n "$ui drag" -l steps -d 'Number of steps' -x
complete -c xcodebuildmcp -n "$ui drag" -l pre-delay -d 'Delay before action' -x
complete -c xcodebuildmcp -n "$ui drag" -l post-delay -d 'Delay after action' -x
complete -c xcodebuildmcp -n "$ui gesture" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui gesture" -l preset -d 'Gesture preset' -x -a "scroll-up\tScroll up\nscroll-down\tScroll down\nscroll-left\tScroll left\nscroll-right\tScroll right\nswipe-from-left-edge\tSwipe from left edge\nswipe-from-right-edge\tSwipe from right edge\nswipe-from-top-edge\tSwipe from top edge\nswipe-from-bottom-edge\tSwipe from bottom edge"
complete -c xcodebuildmcp -n "$ui gesture" -l screen-width -d 'Screen width' -x
complete -c xcodebuildmcp -n "$ui gesture" -l screen-height -d 'Screen height' -x
complete -c xcodebuildmcp -n "$ui gesture" -l duration -d 'Duration in ms' -x
complete -c xcodebuildmcp -n "$ui gesture" -l delta -d 'Delta' -x
complete -c xcodebuildmcp -n "$ui gesture" -l pre-delay -d 'Delay before action' -x
complete -c xcodebuildmcp -n "$ui gesture" -l post-delay -d 'Delay after action' -x
complete -c xcodebuildmcp -n "$ui button" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui button" -l button-type -d 'Hardware button' -x -a "apple-pay\tApple Pay\nhome\tHome\nlock\tLock\nside-button\tSide button\nsiri\tSiri"
complete -c xcodebuildmcp -n "$ui button" -l duration -d 'Duration in ms' -x
complete -c xcodebuildmcp -n "$ui key-press" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui key-press" -l key-code -d 'HID key code' -x
complete -c xcodebuildmcp -n "$ui key-press" -l duration -d 'Duration in ms' -x
complete -c xcodebuildmcp -n "$ui key-sequence" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui key-sequence" -l key-codes -d 'HID key codes' -x
complete -c xcodebuildmcp -n "$ui key-sequence" -l delay -d 'Delay in ms' -x
complete -c xcodebuildmcp -n "$ui type-text" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui type-text" -l element-ref -d 'Element ref from snapshot' -x
complete -c xcodebuildmcp -n "$ui type-text" -l text -d 'Text to type' -x
complete -c xcodebuildmcp -n "$ui type-text" -l replace-existing -d 'Replace existing text'
complete -c xcodebuildmcp -n "$ui screenshot" -l simulator-id -d 'Simulator ID' -x
complete -c xcodebuildmcp -n "$ui screenshot" -l return-format -d 'Screenshot return format' -x -a "path\tFile path\nbase64\tBase64 data"

# --- utilities (clean) ---
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand utilities; and not __fish_seen_subcommand_from clean" -s h -l help -d "Show help"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand utilities; and not __fish_seen_subcommand_from clean" -s v -l version -d "Show version"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand utilities; and not __fish_seen_subcommand_from clean" -a "clean\tClean build products"
set -l uc "__fish_xcodebuildmcp_using_subcommand utilities; and __fish_seen_subcommand_from clean"
complete -c xcodebuildmcp -n "$uc" -l project-path -r -d "Path to the Xcode project"
complete -c xcodebuildmcp -n "$uc" -l workspace-path -r -d "Path to the Xcode workspace"
complete -c xcodebuildmcp -n "$uc" -l scheme -r -d "Build scheme"
complete -c xcodebuildmcp -n "$uc" -l configuration -r -d "Build configuration"
complete -c xcodebuildmcp -n "$uc" -l derived-data-path -r -d "Path to derived data"
complete -c xcodebuildmcp -n "$uc" -l extra-args -r -d "Extra arguments to pass through"
complete -c xcodebuildmcp -n "$uc" -l prefer-xcodebuild -d "Prefer xcodebuild over xcrun"
complete -c xcodebuildmcp -n "$uc" -l platform -x -a "macOS\tmacOS platform\niOS\tiOS platform\niOS Simulator\tiOS Simulator\nwatchOS\twatchOS platform\nwatchOS Simulator\twatchOS Simulator\ntvOS\ttvOS platform\ntvOS Simulator\ttvOS Simulator\nvisionOS\tvisionOS platform\nvisionOS Simulator\tvisionOS Simulator" -d "Target platform"
complete -c xcodebuildmcp -n "$uc" -l profile -r -d "Override the defaults profile"
complete -c xcodebuildmcp -n "$uc" -l json -r -d "JSON object of tool args (merged with flags)"
complete -c xcodebuildmcp -n "$uc" -l output -x -a "text\tPlain text output\njson\tJSON output\njsonl\tJSON lines output\nraw\tRaw output" -d "Output format"
complete -c xcodebuildmcp -n "$uc" -l verbose -d "Render verbose output data"
complete -c xcodebuildmcp -n "$uc" -s h -l help -d "Show help"
complete -c xcodebuildmcp -n "$uc" -s v -l version -d "Show version"

# --- xcode-ide ---
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand xcode-ide; and not __fish_seen_subcommand_from list-tools call-tool" -a "list-tools\tList Xcode-IDE MCP capabilities"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand xcode-ide; and not __fish_seen_subcommand_from list-tools call-tool" -a "call-tool\tCall a remote Xcode IDE MCP tool"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand xcode-ide; and not __fish_seen_subcommand_from list-tools call-tool" -s h -l help -d "Show help"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand xcode-ide; and not __fish_seen_subcommand_from list-tools call-tool" -s v -l version -d "Show version"
for t in list-tools call-tool
    set -l cond "__fish_xcodebuildmcp_using_subcommand xcode-ide; and __fish_seen_subcommand_from $t"
    complete -c xcodebuildmcp -n "$cond" -l profile -x -d "Override defaults profile"
    complete -c xcodebuildmcp -n "$cond" -l json -x -d "JSON object of tool args"
    complete -c xcodebuildmcp -n "$cond" -l output -x -a "text\tText\njson\tJSON\njsonl\tJSONL\nraw\tRaw" -d "Output format"
    complete -c xcodebuildmcp -n "$cond" -l verbose -d "Render verbose output"
    complete -c xcodebuildmcp -n "$cond" -s h -l help -d "Show help"
    complete -c xcodebuildmcp -n "$cond" -s v -l version -d "Show version"
end
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand xcode-ide; and __fish_seen_subcommand_from list-tools" -l refresh -d "Refresh"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand xcode-ide; and __fish_seen_subcommand_from call-tool" -l remote-tool -x -d "Remote Xcode IDE MCP tool"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand xcode-ide; and __fish_seen_subcommand_from call-tool" -l timeout-ms -x -d "Timeout in milliseconds"

# --- daemon ---
set -l daemon_subs start stop status restart list logs
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand daemon; and not __fish_seen_subcommand_from $daemon_subs" -a "start\tStart daemon\nstop\tStop daemon\nstatus\tShow daemon status\nrestart\tRestart daemon\nlist\tList daemons\nlogs\tShow daemon logs"
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand daemon" -l log-level -x -a "none error warn info debug" -d 'Set log verbosity'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand daemon" -l style -x -a "normal minimal" -d 'Output style'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand daemon" -l file-path-render-style -x -a "tree list" -d 'Render file artifacts'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand daemon" -l daemon-log-path -r -d 'Override daemon log path'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand daemon" -l daemon-log-level -x -a "none emergency alert critical error warn notice info debug" -d 'Set daemon log level'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand daemon" -l tail -x -d 'Log lines to show'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand daemon" -s f -l foreground -d 'Run in foreground'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand daemon" -l json -d 'Output JSON'
complete -c xcodebuildmcp -n "__fish_xcodebuildmcp_using_subcommand daemon" -l all -d 'Include stale daemons'
