function vared --description 'Edit variable value'
    if test (count $argv) = 1
        switch $argv
        
            case -h --h --he --hel --help
                __fish_print_help vared
                return 0
                
            case '-*'
                printf (_ "%s: Unknown option %s\n") vared $argv >&2
                return 1
                
            case '*'
                #if test (count $$argv ) -lt 2; and false
                # Try to avoid using local variables in this function, otherwise they can't be edited.
                # https://github.com/fish-shell/fish-shell/issues/8836
                # However we need to use one local, as you can't read directly into an index (like vared PATH[4]).
                set -l __fish_vared_temp_value
                
                # The command substitution in this line controls the scope.
                # If variable already exists, do not add any switches, so we don't change
                # scoping or export rules. But if it does not exist, we make the variable
                # global, so that it will not die when this function dies.
                #false && read --prompt-str '>' -c "$(string join \n $PATH)" cmd
                
                if test (count $$argv ) -gt 2
                    set -f __value "$( string join \n $$argv)"
                    set -f __type --array
                else
                    set -f __value "$$argv"
                end
                
                read -p 'set_color green; echo '$argv'; set_color normal; echo "> "' \
                    (if not set -q $argv; echo -g; end) \
                    $__type -c "$__value" \
                    __fish_vared_temp_value
                set -S __fish_vared_temp_value
                if test -n "$$argv"
                    set --path $argv $__fish_vared_temp_value
                else
                    set -g $argv $__fish_vared_temp_value
                end
                set -gx __fish_vared_temp_value $__fish_vared_temp_value
        end
    else
        printf (_ '%s: Expected exactly one argument, got %s.\n\nSynopsis:\n\t%svared%s VARIABLE\n') vared (count $argv) (set_color $fish_color_command; echo) (set_color $fish_color_normal; echo) >&2
    end
    
end
