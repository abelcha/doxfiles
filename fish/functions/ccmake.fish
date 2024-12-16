function ccmake --wraps="cmake --directory build"

    cmake --directory build $argv
    return
    if test -d './build'
        .blue build file allready exists
        make --directory build $argv
    else
        mkdir -p build
        cd build
        cmake .. $argv
    end
    #mkdir -p build
    #cd build
    #cmake $argv

end
