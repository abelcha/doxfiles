function _.args_init --no-scope-shadowing
    #echo (set_color cyan )(set -S argv)(set_color normal )
    #echo "what is third? "
    #set -S xxvalue
    set --append -l escArgs #(string replace '`' '\\`' -- "$argv")
    
    for i in $argv
        set --append escArgs "`$(string replace "`" "\`" -- $i)`,"
        #set --erase argv[1]
    end
    #set argsarr (string join ',' --  $escArgs)
    #ss argsarr
    bun --eval "
                  const egs = [ $escArgs ]
                  const _og_argv_ = egs.join(atob('Cr'))
                  import('/me/dev/abel/args.ts')
                  .then(({mri}) => mri( egs ))
                  .then(res => {
                      let _lineargs_ = res._.join(atob('Cr'))
                      let _sargs_ = res._.join(' ')
                      let _args_ = [_lineargs_, ...res._]
                      return ({...res, _og_argv_, _args_, _lineargs_, _sargs_ })
             })
                  .then(args => console.log(JSON.stringify(args)))
             "
end
