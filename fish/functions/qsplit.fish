function qsplit
    ucsplit $argv[1] -n 3 -k -f "create." -b "%03d.sql" "/CREATE.TABLE/" "{*}"
    fd create. | slice 1 | while read -l line
        echo mv $line (echo $line|sd '.sql'  '.'(head -n 1 $line |rg '`(.+)`' -r '$1' --only-matching)'.sql' )
    end | fx
end
