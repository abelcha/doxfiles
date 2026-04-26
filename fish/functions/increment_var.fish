function increment_var --description 'Increment a numeric variable by 1' --no-scope-shadowing
    if test (count $argv) -eq 0
        echo "Usage: increment_var VAR_NAME" >&2
        return 1
    end
    
    set -l var_name $argv[1]
    if not set -q $var_name
        echo2 "Variable '$var_name' is not set"
        set -f $var_name 1
        return 1
    end
    
    set -l current (eval echo \$$var_name)
    if not string match -q --regex '^-?[0-9]+(\.[0-9]+)?$' $current
        echo "Variable '$var_name' is not numeric" >&2
        return 1
    end
    
    eval set -g $var_name (math $current + 1)
end
