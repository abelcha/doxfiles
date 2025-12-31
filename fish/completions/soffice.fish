complete -c "soffice" -s "h" -l "help" -d "Shows this help and quits." # global
complete -c "soffice" -s "?" -l "help" -d "Shows this help and quits." # global
complete -c "soffice" -l "helpwriter" -d "Opens built-in or online Help on Writer." # global
complete -c "soffice" -l "helpcalc" -d "Opens built-in or online Help on Calc." # global
complete -c "soffice" -l "helpdraw" -d "Opens built-in or online Help on Draw." # global
complete -c "soffice" -l "helpimpress" -d "Opens built-in or online Help on Impress." # global
complete -c "soffice" -l "helpbase" -d "Opens built-in or online Help on Base." # global
complete -c "soffice" -l "helpbasic" -d "Opens built-in or online Help on Basic scripting language." # global
complete -c "soffice" -l "helpmath" -d "Opens built-in or online Help on Math." # global
complete -c "soffice" -l "version" -d "Shows the version and quits." # global
complete -c "soffice" -l "nstemporarydirectory" -d "(MacOS X sandbox only) Returns path of the temporary directory for the current user and exits. Overrides all other arguments." # global
complete -c "soffice" -l "quickstart" -d "Activates the Quickstarter service." -xa "no" # global
complete -c "soffice" -l "nolockcheck" -d "Disables check for remote instances using one installation." # global
complete -c "soffice" -l "infilter" -d "Force an input filter type if possible." -xa "Calc Office Open XML Text (encoded):UTF8,LF,,," # global
complete -c "soffice" -l "pidfile" -d "Store soffice.bin pid to {file}." # global
complete -c "soffice" -l "display" -d "Sets the DISPLAY environment variable on UNIX-like platforms." # global
complete -c "soffice" -l "nologo" -d "Disables the splash screen at program start." # global
complete -c "soffice" -l "minimized" -d "Starts minimized. The splash screen is not displayed." # global
complete -c "soffice" -l "nodefault" -d "Starts without displaying anything except the splash screen (do not display initial window)." # global
complete -c "soffice" -l "invisible" -d "Starts in invisible mode." # global
complete -c "soffice" -l "headless" -d "Starts in \"headless mode\" which allows using the application without GUI." # global
complete -c "soffice" -l "norestore" -d "Disables restart and file recovery after a system crash." # global
complete -c "soffice" -l "safe-mode" -d "Starts in a safe mode, i.e. starts temporarily with a fresh user profile." # global
complete -c "soffice" -l "accept" -d "Specifies a UNO connect-string to create a UNO acceptor through which other programs can connect to access the API." # global
complete -c "soffice" -l "unaccept" -d "Closes an acceptor that was created with --accept." -xa "all" # global
complete -c "soffice" -l "language" -d "Uses specified language, if language is not selected yet for UI." # global
complete -c "soffice" -l "terminate_after_init" -d "Exit after initialization complete (no documents loaded)." # global
complete -c "soffice" -l "writer" -d "Creates an empty Writer document." # global
complete -c "soffice" -l "calc" -d "Creates an empty Calc document." # global
complete -c "soffice" -l "draw" -d "Creates an empty Draw document." # global
complete -c "soffice" -l "impress" -d "Creates an empty Impress document." # global
complete -c "soffice" -l "base" -d "Creates a new database." # global
complete -c "soffice" -l "global" -d "Creates an empty Writer master (global) document." # global
complete -c "soffice" -l "math" -d "Creates an empty Math document (formula)." # global
complete -c "soffice" -l "web" -d "Creates an empty HTML document." # global
complete -c "soffice" -s "n" -d "Treats following files as templates for creation of new documents." # global
complete -c "soffice" -s "o" -d "Opens following files for editing, regardless whether they are templates or not." # global
complete -c "soffice" -l "pt" -d "Prints following files to the printer {Printername}, after which those files are closed." # global
complete -c "soffice" -s "p" -d "Prints following files to the default printer, after which those files are closed." # global
complete -c "soffice" -l "view" -d "Opens following files in viewer mode (read-only)." # global
complete -c "soffice" -l "show" -d "Opens and starts the slideshow of the following presentation documents immediately." # global
complete -c "soffice" -l "convert-to" -d "Batch convert files (implies --headless)." # global
complete -c "soffice" -l "print-to-file" -d "Batch print files to file." # global
complete -c "soffice" -l "cat" -d "Dump text content of the following files to console (implies --headless)." # global
complete -c "soffice" -l "script-cat" -d "Dump text content of any scripts embedded in the files to console (implies --headless)." # global
complete -c "soffice" -o "psn" -d "Ignored (MacOS X only)." # global
complete -c "soffice" -o "Embedding" -d "Ignored (COM+ related; Windows only)." # global
complete -c "soffice" -l "nofirststartwizard" -d "Does nothing, accepted only for backward compatibility." # global
complete -c "soffice" -l "protector" -d "Used only in unit tests and should have two arguments." # global
complete -c "soffice" -o "env:<VAR>[=<VALUE>]" -d "Set a bootstrap variable." # global