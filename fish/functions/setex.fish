function setex --description 'replace extension from filename' --argument path ext
    set -l spl (string split '.' $argv[1])
    set -l newext (string trim -c '.' $argv[2])
    set spl[-1] $newext
    string join -n '.' $spl
end
