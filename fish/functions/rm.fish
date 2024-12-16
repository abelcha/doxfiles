function rm --wraps=trash --description 'alias rm trash'
    argparse -i f/force r/recursive -- $argv
    if set --query _flag_f
        /bin/rm -r $argv
        return
    end
    trash $argv
end
