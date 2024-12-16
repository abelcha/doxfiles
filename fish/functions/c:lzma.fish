function c:lzma --wraps='compression_tool -encode -a lzma' --description 'alias c:lzma compression_tool -encode -a lzma'
  compression_tool -encode -a lzma $argv
        
end
