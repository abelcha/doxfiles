function jsonll --wraps='jq . -s' --description 'alias jsonll=jq . -s'
  jq . -s $argv
        
end
