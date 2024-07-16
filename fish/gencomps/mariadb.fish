complete -c mariadb -l print-defaults -d 'Print the program argument list and exit.'
complete -c mariadb -l no-defaults -d Don\'t\ read\ default\ options\ from\ any\ option\ file.
complete -c mariadb -s I -l help -d 'Synonym for -?'
complete -c mariadb -l abort-source-on-error
complete -c mariadb -l auto-rehash -d Enable\ automatic\ rehashing.\ One\ doesn\'t\ need\ to\ use
complete -c mariadb -s A -l no-auto-rehash
complete -c mariadb -l auto-vertical-output
complete -c mariadb -s B -l batch -d Don\'t\ use\ history\ file.\ Disable\ interactive\ behavior.
complete -c mariadb -l binary-as-hex -d 'Print binary data as hex'
complete -c mariadb -l binary-mode -d 'Binary mode allows certain character sequences to be'
complete -f -c mariadb -n __fish_use_subcommand -a DELIMITER -d 'in non-interactive mode (i.e., when binary mode'
complete -f -c mariadb -n __fish_use_subcommand -a is -d 'combined with either 1) piped input, 2) the --batch'
complete -f -c mariadb -n __fish_use_subcommand -a mysql -d option,\ or\ 3\)\ the\ \'source\'\ command\).\ Also,\ in
complete -f -c mariadb -n __fish_use_subcommand -a binary -d mode,\ occurrences\ of\ \'\\r\\n\'\ and\ ASCII\ \'\\0\'\ are
complete -f -c mariadb -n __fish_use_subcommand -a preserved -d within\ strings,\ whereas\ by\ default,\ \'\\r\\n\'\ is
complete -f -c mariadb -n __fish_use_subcommand -a translated -d to\ \'\\n\'\ and\ \'\\0\'\ is\ disallowed\ in\ user\ input.
complete -f -c mariadb -n __fish_use_subcommand -a --character-sets-dir -d name
complete -f -c mariadb -n __fish_use_subcommand -a Directory -d 'for character set files.'
complete -f -c mariadb -n __fish_use_subcommand -a --column-names -d 'Write column names in results.'
complete -c mariadb -s N -l skip-column-names
complete -c mariadb -l column-type-info -d 'Display column type information.'
complete -c mariadb -s c -l comments -d 'Preserve comments. Send comments to the server. The'
complete -c mariadb -s C -l compress -d 'Use compression in server/client protocol.'
complete -c mariadb -l connect-expired-password
complete -c mariadb -l debug-check -d 'Check memory and open file usage at exit.'
complete -c mariadb -s T -l debug-info -d 'Print some debug info at exit.'
complete -c mariadb -l enable-cleartext-plugin
complete -c mariadb -s f -l force -d 'Continue even if we get an SQL error. Sets'
complete -c mariadb -s H -l html -d 'Produce HTML output.'
complete -c mariadb -s i -l ignore-spaces -d 'Ignore space after function names.'
complete -c mariadb -l line-numbers -d 'Write line numbers for errors.'
complete -c mariadb -s L -l skip-line-numbers
complete -c mariadb -l local-infile -d 'Enable LOAD DATA LOCAL INFILE.'
complete -c mariadb -s G -l named-commands
complete -f -c mariadb -n __fish_use_subcommand -a otherwise -d 'only from the first line, before an enter.'
complete -f -c mariadb -n __fish_use_subcommand -a Disable -d 'with --disable-named-commands. This option is'
complete -f -c mariadb -n __fish_use_subcommand -a disabled -d 'by default.'
complete -f -c mariadb -n __fish_use_subcommand -a --net-buffer-length -d '#'
complete -f -c mariadb -n __fish_use_subcommand -a The -d 'buffer size for TCP/IP and socket communication.'
complete -f -c mariadb -n __fish_use_subcommand -a -b -d '--no-beep       Turn off beep on error.'
complete -f -c mariadb -n __fish_use_subcommand -a -o -d '--one-database  Ignore statements except those that occur while the'
complete -c mariadb -l progress-reports -d 'Get progress reports for long running commands (like'
complete -c mariadb -s q -l quick -d Don\'t\ cache\ result,\ print\ it\ row\ by\ row.\ This\ may\ slow
complete -c mariadb -s r -l raw -d 'Write fields without conversion. Used with --batch.'
complete -c mariadb -l reconnect -d 'Reconnect if the connection is lost.'
complete -c mariadb -s U -l safe-updates -d 'Only allow UPDATE and DELETE that uses keys.'
complete -c mariadb -s U -l i-am-a-dummy -d 'Synonym for option --safe-updates, -U.'
complete -c mariadb -l sandbox -d Disallow\ commands\ that\ access\ the\ file\ system\ \(except\ \\P
complete -c mariadb -l secure-auth -d 'Refuse client connecting to server if it uses old'
complete -c mariadb -l show-query-costs -d 'Show query cost after every statement.'
complete -c mariadb -l show-warnings -d 'Show warnings after every statement.'
complete -c mariadb -l sigint-ignore -d 'Ignore SIGINT (CTRL-C).'
complete -c mariadb -s s -l silent -d 'Be more silent. Print results with a tab as separator,'
complete -c mariadb -l ssl -d 'Enable SSL for connection (automatically enabled with'
complete -c mariadb -l ssl-verify-server-cert
complete -c mariadb -s t -l table -d 'Output in table format.'
complete -c mariadb -s n -l unbuffered -d 'Flush buffer after each query.'
complete -c mariadb -s v -l verbose -d 'Write more. (-v -v -v gives the table output format).'
complete -c mariadb -n __fish_no_arguments -s V -l version -d 'Output version information and exit.'
complete -c mariadb -s E -l vertical -d 'Print the output of a query (rows) vertically.'
complete -c mariadb -s w -l wait -d 'Wait and retry if connection is down.'
complete -c mariadb -s X -l xml -d 'Produce XML output.'
