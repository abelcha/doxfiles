function dryrun --wraps=command
    argparse --ignore-unknown "dry" "dry-run=?" -- $argv
    #echo "Dry:|$DRY|"
    if set -q _flag_dry_run; or set -q DRY;or set -q _flag_dry
        echo "<__> $argv" | chroma --lexer fish --style dracula >>/dev/stderr
    else
        echo ">  $argv" | shiki --lexer shell --style nord >>/dev/stderr
        eval $argv
    end
end
