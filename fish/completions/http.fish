complete -c http -l boundary -d BOUNDARY
complete -c http -l raw -d RAW
complete -c http -l pretty -d '{all,colors,format,none}'
complete -c http -l style -d 'STYLE, -s STYLE'
complete -c http -l response-charset -d ENCODING
complete -c http -l response-mime -d MIME_TYPE
complete -c http -l format-options -d FORMAT_OPTIONS
complete -c http -l format-options -d json.sort_keys:false,json.indent:2
complete -c http -l print -d 'WHAT, -p WHAT'
complete -c http -l output -d 'FILE, -o FILE'
complete -c http -l session -d SESSION_NAME_OR_PATH
complete -c http -l session-read-only -d SESSION_NAME_OR_PATH
complete -c http -l auth -d 'USER[:PASS] | TOKEN, -a USER[:PASS] | TOKEN'
complete -c http -l auth-type -d '{basic,bearer,digest}, -A {basic,bearer,digest}'
complete -c http -l proxy -d PROTOCOL:PROXY_URL
complete -c http -l max-redirects -d MAX_REDIRECTS
complete -c http -l max-headers -d MAX_HEADERS
complete -c http -l timeout -d SECONDS
complete -c http -l verify -d VERIFY
complete -c http -l ssl -d '{ssl2.3,tls1,tls1.1,tls1.2}'
complete -c http -l ciphers -d CIPHERS
complete -c http -l cert -d CERT
complete -c http -l cert-key -d CERT_KEY
complete -c http -l cert-key-pass -d CERT_KEY_PASS
complete -c http -l default-scheme -d DEFAULT_SCHEME
