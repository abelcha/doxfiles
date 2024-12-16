function path_depth --argument argpath
    test -z $argpath; and set argpath $PWD
    string match -a -r '\/' (realpath $argpath) | string join '' | string length
end
