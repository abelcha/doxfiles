#string replace -a -- {} enca  {} --help
complete -c enca -s g -l guess -d Behave\ as\ `enca\'\ \(just\ detect\ encoding\ by\ default\)
complete -c enca -s c -l auto-convert -d Behave\ as\ `enconv\'\ \(autoconvert\ by\ default\)
complete -c enca -s d -l details -d 'Print failure reason when encoding was not recognized'
complete -c enca -s e -l enca-name -d Print\ enca\'s\ encoding\ name\ \(passed\ to\ converters\)
complete -c enca -s f -l human-readable -d 'Print full (descriptive) encoding name (default)'
complete -c enca -s i -l iconv-name -d 'Print how iconv calls the encoding'
complete -c enca -s m -l mime-name -d 'Print preferred MIME encoding name'
complete -c enca -s r -l rfc1345-name -d 'Print RFC 1345 (or otherwise canonized) encoding name'
complete -c enca -s s -l cstocs-name -d 'Print how cstocs calls the encoding'
complete -c enca -s p -l with-filename -d 'Print the file name for each result'
complete -c enca -s P -l no-filename -d 'Suppress the prefixing filename on output'


complete -c enca -s L -l language -d 'Set language of FILEs; obligatory'
complete -c enca -s C -l try-converters -d "  Converters to be tried (associative)"
complete -c enca -s E -l external-converter-program -d " Set external converter program name (default: piconv)"



complete -c enca -s V -l verbose -d 'Increase verbosity level'
complete -c enca -s G -l license -d 'Print full enca license and terminate'
complete -c enca -s h -l help -d 'Print this help and terminate'
complete -c enca -n __fish_no_arguments -s v -l version -d 'Print version and build information and terminate'
