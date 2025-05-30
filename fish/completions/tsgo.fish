# Common commands
complete --command tsgo --description "Compiles the current project (tsconfig.json in the working directory.)"
complete --command tsgo --description "Compiles specified files with default compiler options" -a "(__fish_complete_suffix .ts)"
complete --command tsgo --description "Build a composite project in the working directory" -s b -l build
complete --command tsgo --description "Creates a tsconfig.json with recommended settings" -l init
complete --command tsgo --description "Compiles the TypeScript project at specified path" -s p -l project -rF
complete --command tsgo --description "Show expanded help with all compiler options" -l help -l all
complete --command tsgo --description "Compiles without emitting files" -l noEmit

# Command line flags
complete --command tsgo --description "Show all compiler options" -l all
complete --command tsgo --description "Print compiler's version" -s v -l version
complete --command tsgo --description "Initialize TypeScript project" -l init
complete --command tsgo --description "Compile project with given config path" -s p -l project -rF
complete --command tsgo --description "Print final configuration" -l showConfig
complete --command tsgo --description "Print help message" -s h -l help
complete --command tsgo --description "Watch input files" -s w -l watch
complete --command tsgo --description "Build projects and dependencies" -s b -l build

# Common compiler options
complete --command tsgo --description "Set JavaScript language version" -s t -l target -xa "es5 es6 es2015 es2016 es2017 es2018 es2019 es2020 es2021 es2022 es2023 es2024 esnext"

complete --command tsgo --description "Specify module code generation" -s m -l module -xa "none commonjs amd system umd es6 es2015 es2020 es2022 esnext node16 nodenext preserve"

complete --command tsgo --description "Specify bundled library declaration files" -l lib -xa "es5 es6 es2015 es7 es2016 es2017 es2018 es2019 es2020 es2021 es2022 es2023 es2024 esnext dom dom.iterable dom.asynciterable webworker webworker.importscripts webworker.iterable webworker.asynciterable scripthost es2015.core es2015.collection es2015.generator es2015.iterable es2015.promise es2015.proxy es2015.symbol es2015.symbol.wellknown es2016.array.include es2016.intl es2017.arraybuffer es2017.date es2017.object es2017.sharedmemory es2017.string es2017.intl es2017.typedarrays es2018. asyncgenerator es2018.asynciterable esnext.asynciterable es2018.intl es2018.promise es2018.regexp es2019. array es2019.object es2019.string es2019.symbol esnext.symbol es2019.intl es2020.bigint esnext.bigint es2020.date es2020.promise es2020.sharedmemory es2020.string es2020.symbol.wellknown es2020.intl es2020. number es2021.promise es2021.string es2021.weakref esnext.weakref es2021.intl es2022.array es2022.error es2022.intl es2022.object es2022.string es2022.regexp es2023.array es2023.collection es2023.intl es2024. arraybuffer es2024.collection es2024.object esnext.object es2024.promise esnext.promise es2024.regexp esnext.regexp es2024.sharedmemory es2024.string esnext.string esnext.array esnext.collection esnext.intl esnext.disposable esnext.decorators esnext.iterator decorators decorators.legacy"

complete --command tsgo --description "Allow JavaScript files in program" -l allowJs
complete --command tsgo --description "Enable error reporting in JS files" -l checkJs

complete --command tsgo --description "Specify JSX code generation" -l jsx    -xa "preserve react-native react react-jsx react-jsxdev"

complete --command tsgo --description "Bundle all outputs into one JS file" -l outFile -rF
complete --command tsgo --description "Specify output folder for emitted files" -l outDir -rF
complete --command tsgo --description "Disable emitting comments" -l removeComments
complete --command tsgo --description "Enable all strict type-checking" -l strict
complete --command tsgo --description "Specify type package names" -l types -r
complete --command tsgo --description "Ease support for CommonJS modules" -l esModuleInterop
complete --command tsgo --description "Enable colored output" -l pretty
complete --command tsgo --description "Generate .d.ts files" -s d -l declaration
complete --command tsgo --description "Create sourcemaps for d.ts files" -l declarationMap
complete --command tsgo --description "Only output d.ts files" -l emitDeclarationOnly
complete --command tsgo --description "Create source map files" -l sourceMap
complete --command tsgo --description "Disable emitting files" -l noEmit
