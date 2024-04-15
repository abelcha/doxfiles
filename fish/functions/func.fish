function func
    argparse --min-args=1 -- $argv or return
    # argparse h/help n/name -- $argv or return
    echo mi "~/config/fish/functions/$argv.fish"
end
