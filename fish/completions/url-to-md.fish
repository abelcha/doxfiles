complete -c "url-to-md" -s "V" -l "version" -d "output the version number" # global
complete -c "url-to-md" -s "o" -l "output" -d "Write output to file instead of stdout" # global
complete -c "url-to-md" -l "no-links" -d "Remove webpage links from the output" # global
complete -c "url-to-md" -l "no-images" -d "Remove images from the output" # global
complete -c "url-to-md" -l "no-gif-images" -d "Remove GIF images from the output" # global
complete -c "url-to-md" -l "no-svg-images" -d "Remove SVG images from the output" # global
complete -c "url-to-md" -l "clean-content" -d "Remove common non-content tags (nav, footer, aside, script, style, header, noscript, canvas)" # global
complete -c "url-to-md" -l "include-tags" -d "Include only specific HTML tags and their content" -xa "article main section" # global
complete -c "url-to-md" -l "remove-tags" -d "Remove specific HTML tags from the output" -xa "div span button aside nav" # global
complete -c "url-to-md" -l "wait" -d "Seconds to wait for the page to load" -xa "1.5" # global
complete -c "url-to-md" -l "show-browser" -d "Show the browser window (visible mode)" # global
complete -c "url-to-md" -l "mobile" -d "Use mobile viewport (375x667 - iPhone)" # global
complete -c "url-to-md" -l "tablet" -d "Use tablet viewport (768x1024 - iPad portrait)" # global
complete -c "url-to-md" -l "desktop" -d "Use desktop viewport (1920x1080 - standard desktop)" # global
complete -c "url-to-md" -l "viewport-width" -d "Set viewport width in pixels (320-1920)" # global
complete -c "url-to-md" -l "viewport-height" -d "Set viewport height in pixels (568-1080)" # global
complete -c "url-to-md" -l "disable-web-security" -d "Disable web security (CORS) - use with caution for difficult sites" # global
complete -c "url-to-md" -s "h" -l "help" -d "display help for command" # global