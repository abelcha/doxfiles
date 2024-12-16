function c:lz4 --wraps='compression_tool -encode -a lz4' --description 'alias c:lz4 compression_tool -encode -a lz4'
  compression_tool -encode -a lz4 $argv
        
end
