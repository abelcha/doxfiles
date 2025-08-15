function _fish_complete_vol
    searchfs -l | string replace -r '(?<p1>/.+)\s\((?<p2>\w+)\s?\):\s(?<p3>.+)' '$p3\t\'($2) $p1\''
    #searchfs -l | choose --field-separator ':|\(' -1 0 --output-field-separator \t
end
