function c:zlib --wraps='compression_tool -encode -a zlib' --description 'alias c:zlib compression_tool -encode -a zlib'
  compression_tool -encode -a zlib $argv
        
end
