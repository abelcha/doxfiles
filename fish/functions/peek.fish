function peek --wraps=sed
    argparse --ignore-unknown --name=from v/verbose C/context= -- $argv; or return
    set line_num $argv[-1]
    set -q _flag_context; or set _flag_context 1
    set min (math $line_num - $_flag_context)
    set max (math $line_num + $_flag_context)
    set q "$min,$max"p
    set lines (sed -n $q $argv[..-2])
    for l in $lines
        #set min (math $min + 1)
        if [ $min != $line_num ]
            echo -n (set_color blue --dim )
        else
            echo -n (set_color normal )
        end
        echo $l
        
        set -q $_flag_verbose; and echo --------------
        set min (math $min + 1)
        
    end
    #echo for i in (seq $_flag_context)
    #fset min max q lines q
    
end
