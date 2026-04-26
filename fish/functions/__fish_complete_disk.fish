function __fish_complete_disk
    set -l list_lines (diskutil list 2>/dev/null)
    
    # Build sections by grouping lines between disk headers, using a delimiter
    set -l full_text ""
    for line in $list_lines
        if string match -qr '^/dev/disk[0-9]+\s+\(.+\):' -- $line
            # New disk section starts - add delimiter
            if test -n "$full_text"
                set full_text "$full_text|||SECTION|||"
            end
        end
        if test -z "$full_text"
            set full_text $line
        else
            set full_text "$full_text\n$line"
        end
    end
    
    # Split by section delimiter
    set -l disk_sections (string split '|||SECTION|||' -- $full_text)
    
    set -l current_disk_path ""
    set -l current_disk_type ""
    set -l current_disk_size ""
    set -l current_volume_names
    
    for disk_section in $disk_sections
        # Split section into lines
        set -l section_lines (string split \n -- $disk_section)
        
        # Find disk header line
        set -l disk_header ""
        for line in $section_lines
            if string match -qr '/dev/disk[0-9]+\s+\(.+\):' -- $line
                set disk_header $line
                break
            end
        end
        
        if test -z "$disk_header"
            continue
        end
        
        # Extract disk path
        set -l disk_path (string match -r '/dev/disk[0-9]+' -- $disk_header)
        
        # Extract disk type
        set -l disk_type_raw (string replace -r '.*/dev/disk[0-9]+\s+\((.+)\):.*' '$1' -- $disk_header)
        
        # Check if synthesized disk
        if string match -qr 'synthesized' -- $disk_type_raw
            # Collect volumes for previous physical disk
            if test -n "$current_disk_path"
                for line in $section_lines
                    if string match -qr 'Volume\s+' -- $line
                        set -l after_volume (string replace -r '.*Volume\s+' '' -- $line)
                        set -l vol_name (string replace -r '\s+[0-9.]+\s+(GB|TB|MB|KB|B).*' '' -- $after_volume)
                        if test -n "$vol_name"; and not string match -qr '^disk' -- $vol_name
                            set vol_name (string trim -- $vol_name)
                            if not contains $vol_name $current_volume_names
                                set -a current_volume_names $vol_name
                            end
                        end
                    end
                end
            end
            continue
        end
        
        # Output previous disk (skip simulator images)
        if test -n "$current_disk_path"
            # Check if it's a simulator image
            set -l is_simulator false
            for vol_name in $current_volume_names
                if string match -qr -i 'simulator' -- $vol_name
                    set is_simulator true
                    break
                end
            end
            
            # Skip simulator images
            if test "$is_simulator" = "false"
                set -l parts
                if test (count $current_volume_names) -gt 0
                    set -a parts (string join "/" $current_volume_names)
                end
                if test -n "$current_disk_size"
                    set -a parts $current_disk_size
                end
                if test -n "$current_disk_type"
                    set -a parts $current_disk_type
                end
                if test (count $parts) -gt 0
                    echo -e "$current_disk_path\t"(string join ", " $parts)
                else
                    echo -e "$current_disk_path\tDisk"
                end
            end
        end
        
        # Start new disk
        set current_disk_path $disk_path
        set current_disk_size ""
        set current_volume_names
        
        # Normalize disk type
        set current_disk_type ""
        if string match -qr 'disk image' -- $disk_type_raw
            set current_disk_type "Image"
        else if string match -qr 'external.*physical' -- $disk_type_raw
            set current_disk_type "External"
        else if string match -qr 'internal.*physical' -- $disk_type_raw
            set current_disk_type "Physical"
        end
        
        # Find size
        for line in $section_lines
            if string match -qr '[*+]' -- $line
                set -l after_marker (string replace -r '.*[*+]' '' -- $line)
                set -l size_fields (string split ' ' -- (string trim -- $after_marker))
                if test (count $size_fields) -ge 2
                    set current_disk_size "$size_fields[1] $size_fields[2]"
                end
                break
            end
        end
        
        # Find volumes
        for line in $section_lines
            if string match -qr 'Volume\s+' -- $line
                set -l after_volume (string replace -r '.*Volume\s+' '' -- $line)
                set -l vol_name (string replace -r '\s+[0-9.]+\s+(GB|TB|MB|KB|B).*' '' -- $after_volume)
                if test -n "$vol_name"; and not string match -qr '^disk' -- $vol_name
                    set vol_name (string trim -- $vol_name)
                    if not contains $vol_name $current_volume_names
                        set -a current_volume_names $vol_name
                    end
                end
            end
        end
    end
    
    # Output last disk (skip simulator images)
    if test -n "$current_disk_path"
        # Check if it's a simulator image
        set -l is_simulator false
        for vol_name in $current_volume_names
            if string match -qr -i 'simulator' -- $vol_name
                set is_simulator true
                break
            end
        end
        
        # Skip simulator images
        if test "$is_simulator" = "false"
            set -l parts
            if test (count $current_volume_names) -gt 0
                set -a parts (string join "/" $current_volume_names)
            end
            if test -n "$current_disk_size"
                set -a parts $current_disk_size
            end
            if test -n "$current_disk_type"
                set -a parts $current_disk_type
            end
            if test (count $parts) -gt 0
                echo -e "$current_disk_path\t"(string join ", " $parts)
            else
                echo -e "$current_disk_path\tDisk"
            end
        end
    end
end
