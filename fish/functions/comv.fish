function comv --wraps='git commit --no-verify -m' --description 'alias comv git commit --no-verify -m'
        git commit --no-verify -m "$argv"
    
end
