# Ordered, flag-ignoring subcommand-path matcher.
# True when the non-option tokens after the command equal the args in order.
function __fish_seen_subcommand_path
    set -l subs
    for t in (commandline -pxc)[2..]
        string match -q -- '-*' $t; and continue
        set -a subs $t
    end
    test "$subs" = "$argv"
end
complete -c "ccx" -l "dir" # global
complete -c "ccx" -l "group" -xa "flat proj tree chain fork repo projects daily" # global
complete -c "ccx" -l "initial-focus" -xa "tmux cwd" # global
complete -c "ccx" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # global
complete -c "ccx" -l "search" # global
complete -c "ccx" -l "session" # global
complete -c "ccx" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # global
complete -c "ccx" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # global
complete -c "ccx" -s "v" -d "print version and exit (shorthand)" # global
complete -c "ccx" -l "version" -d "print version and exit" # global
complete -c "ccx" -l "view" -xa "sessions config plugins stats" # global
complete -c "ccx" -l "worktree-dir" # global
complete -f -c "ccx" -n "__fish_use_subcommand" -a "urls" -d "List URLs from the Claude session (interactive on TTY)" # sub
complete -f -c "ccx" -n "__fish_use_subcommand" -a "refs" -d "List PR/Jira references with resolved status (interactive on TTY)" # sub
complete -f -c "ccx" -n "__fish_use_subcommand" -a "files" -d "List file paths touched by the session (interactive on TTY)" # sub
complete -f -c "ccx" -n "__fish_use_subcommand" -a "changes" -d "List file changes made by the session (interactive on TTY)" # sub
complete -f -c "ccx" -n "__fish_use_subcommand" -a "images" -d "List image paths from the session (interactive on TTY)" # sub
complete -f -c "ccx" -n "__fish_use_subcommand" -a "conversation" -d "List conversation turns from the Claude session (interactive on TTY)" # sub
complete -f -c "ccx" -n "__fish_use_subcommand" -a "info" -d "Show the matched Claude session metadata" # sub
complete -f -c "ccx" -n "__fish_use_subcommand" -a "sessions" -d "List session IDs with metadata (use --pick for TUI JSON picker)" # sub
complete -f -c "ccx" -n "__fish_use_subcommand" -a "move" -d "Move a session's project path to a new location (--from, --session, --help)" # sub
complete -f -c "ccx" -n "__fish_use_subcommand" -a "config" -d "View/edit ccx config and get/set dot-path values" # sub
complete -f -c "ccx" -n "__fish_use_subcommand" -a "help" -d "Show available commands and usage" # sub
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'config'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "group" -xa "flat proj tree chain fork repo projects daily" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "initial-focus" -xa "tmux cwd" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "preview" -xa "conv stats mem scratch tasks agents wf shells contexts refs outputs" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "search" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "session" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "tmux" -d "enable tmux integration (auto-detected if inside tmux)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "tmux-auto-live" -d "auto-enter live session in same tmux window on startup" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -s "v" -d "print version and exit (shorthand)" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "view" -xa "sessions config plugins stats" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "worktree-dir" # subcommands flags
complete -c "ccx" -n "__fish_seen_subcommand_from 'urls'" -l "plain" -d "force plain text output (no interactive picker)" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'refs'" -l "plain" -d "force plain text output (no interactive picker)" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'files'" -l "plain" -d "force plain text output (no interactive picker)" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'changes'" -l "plain" -d "force plain text output (no interactive picker)" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'images'" -l "plain" -d "force plain text output (no interactive picker)" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'conversation'" -l "plain" -d "force plain text output (no interactive picker)" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'info'" -l "plain" -d "force plain text output (no interactive picker)" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "all" -d "list all sessions (default: current tmux window only)" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "dir" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "multi" -d "allow multi-select (with --pick)" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "pick" -d "launch interactive picker and emit JSON on stdout" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'sessions'" -l "search" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "dir" -d "path to Claude data directory" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "from" -d "project directory to move by path instead of session ID (moves every session under it)" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'move'" -l "session" -d "session ID to move (prefix match); default: current tmux window's session" # global
complete -c "ccx" -n "__fish_seen_subcommand_from 'help'" -l "plain" -d "force plain text output (no interactive picker)" # global
