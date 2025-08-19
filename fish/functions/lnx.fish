function lnx --description "Creates symbolic links with resolved absolute paths"
    # Parse arguments using Fish's built-in argparse
    argparse 'h/help' 'r/real-path=' 'f/fake-path=' -- $argv
    or return
    
    # Show help if requested
    if set -ql _flag_help
        echo "lnx - Creates symbolic links with resolved absolute paths"
        echo ""
        echo "Usage: lnx --real-path <path> --fake-path <path>"
        echo ""
        echo "Options:"
        echo "  -r, --real-path   The target path the symlink will point to (real path)"
        echo "  -f, --fake-path   The path where the symlink will be created (fake path)"
        echo "  -h, --help        Show this help message"
        return 0
    end
    
    # Validate required arguments
    if not set -ql _flag_real_path
        echo "Error: --real-path is required" >&2
        return 1
    end
    
    if not set -ql _flag_fake_path
        echo "Error: --fake-path is required" >&2
        return 1
    end
    
    set -l real_path $_flag_real_path
    set -l fake_path $_flag_fake_path
    
    # Resolve real path (must exist)
    if not test -e "$real_path"
        echo "Error: real_path '$real_path' does not exist." >&2
        return 1
    end
    
    set -l resolved_real_path (realpath "$real_path")
    if test $status -ne 0
        echo "Error: Failed to resolve real_path '$real_path'" >&2
        return 1
    end
    
    # Resolve fake path (convert to absolute if relative)
    set -l resolved_fake_path
    if string match -q '/*' "$fake_path"
        # Already absolute
        set resolved_fake_path "$fake_path"
    else
        # Make it absolute by joining with current directory
        set resolved_fake_path (pwd)/"$fake_path"
    end
    
    # Create parent directories if they don't exist
    set -l parent_dir (dirname "$resolved_fake_path")
    if not test -d "$parent_dir"
        if not mkdir -p "$parent_dir"
            echo "Error creating directories '$parent_dir'" >&2
            return 1
        end
    end
    
    # Create the symbolic link
    if not ln -s "$resolved_real_path" "$resolved_fake_path"
        echo "ln command failed" >&2
        return 1
    end
    
    echo "Created symbolic link: $resolved_fake_path -> $resolved_real_path"
end
