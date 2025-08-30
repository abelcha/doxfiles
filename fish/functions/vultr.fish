function vultr --wraps='vultr-cli' --description 'alias vultr VULTR_API_KEY=$VULTR_API_KEY vultr-cli'
    VULTR_API_KEY=$VULTR_API_KEY vultr-cli $argv

end
