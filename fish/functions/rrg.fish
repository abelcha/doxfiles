function rrg --wraps='rg --no-ignore' --wraps='command rg --no-ignore' --description 'alias rrg command rg --no-ignore'
  command rg --no-ignore $argv
        
end
