function dryrun --wraps=command
    argparse --ignore-unknown "dry-run=?" -- $argv
    #echo "Dry:|$DRY|"
    if set -q _flag_dry_run; or set -q DRY
        echo "<__> $argv" | chroma --lexer fish --style dracula >>/dev/stderr
    else
        echo ">  $argv" | shiki --lexer shell --style nord >>/dev/stderr
        eval $argv
    end
end
