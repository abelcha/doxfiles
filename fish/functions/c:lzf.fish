function c:lzf --wraps='compression_tool -encode -a lzf' --description 'alias c:lzf compression_tool -encode -a lzf'
  compression_tool -encode -a lzf $argv
        
end
