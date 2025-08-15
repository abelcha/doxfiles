function _git_diff_abr
    string replace --regex '^[ab]/' '' -- $argv
end
