complete -c bbuild -l compile -d 'Generate a standalone Bun executable containing your bundled code'
complete -c bbuild -l watch -d 'Automatically restart the process on file change'
complete -c bbuild -l target -d 'The intended execution environment for the bundle. "browser", "bun" or "node"'
complete -c bbuild -l outdir -d 'Default to "dist" if multiple files'
complete -c bbuild -l outfile -d 'Write to a file'
complete -c bbuild -l sourcemap -d Build\ with\ sourcemaps\ -\ \'inline\',\ \'external\',\ or\ \'none\'
complete -c bbuild -l format -d 'Specifies the module format to build to. Only "esm" is supported.'
complete -c bbuild -l root -d 'Root directory used for multiple entry points'
complete -c bbuild -l splitting -d 'Enable code splitting'
complete -c bbuild -l public-path -d 'A prefix to be appended to any import paths in bundled code'
complete -c bbuild -s e -l external -d 'Exclude module from transpilation (can use * wildcards). ex: -e react'
complete -c bbuild -l entry-naming -d 'Customize entry point filenames. Defaults to "[dir]/[name].[ext]"'
complete -c bbuild -l chunk-naming -d 'Customize chunk filenames. Defaults to "[name]-[hash].[ext]"'
complete -c bbuild -l asset-naming -d 'Customize asset filenames. Defaults to "[name]-[hash].[ext]"'
complete -c bbuild -l server-components -d 'Enable React Server Components (experimental)'
complete -c bbuild -l no-bundle -d 'Transpile file only, do not bundle'
complete -c bbuild -l minify -d 'Enable all minification flags'
complete -c bbuild -l minify-syntax -d 'Minify syntax and inline data'
complete -c bbuild -l minify-whitespace -d 'Minify whitespace'
complete -c bbuild -l minify-identifiers -d 'Minify identifiers'
complete -c bbuild -l conditions -d 'Pass custom conditions to resolve'