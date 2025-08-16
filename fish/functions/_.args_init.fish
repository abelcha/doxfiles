function _.args_init --no-scope-shadowing
    set --append -l escArgs 
    
    for i in $argv
        set --append escArgs "`$(string replace "`" "\`" -- $i)`,"
    end
    bun --eval "
                  import mri from 'mri@1.2.0'
                  const egs = [ $escArgs ]
                  const _og_argv_ = egs.join(atob('Cr'))
                  const res =  mri( egs )
                      let _lineargs_ = res._.join(atob('Cr'))
                      let _sargs_ = res._.join(' ')
                      let _args_ = [_lineargs_, ...res._]
                      console.log(JSON.stringify({...res, _og_argv_, _args_, _lineargs_, _sargs_ }))
             
                  
             "
end
