function detect_runtime
    if test -f 'gleam.toml'
        echo gleam # run $argv
    else if test -f "Cargo.toml"
        echo cargo # run $argvw w-w
    else if test -f "go.mod"
        echo go # run $argv
    else if test -f "build.zig"
        echo zig # run $argv
    else if test -f "Package.swift"
        echo swift # run $argv
    end
end
