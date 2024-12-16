complete -c tidy-viewer -s C -l config-details -d 'Show the current config details'
complete -c tidy-viewer -s d -l debug-mode -d 'Print object details to make it easier for the maintainer to find and resolve bugs.'
complete -c tidy-viewer -s e -l extend-width-and-length -d 'Extended width beyond term width (do not truncate). Useful with `less -S`.'
complete -c tidy-viewer -s f -l force-all-rows -d Print\ all\ rows\ in\ file.\ May\ be\ piped\ to\ \'less\ -S\'.\ Example\ `tidy-viewer
complete -c tidy-viewer -s a -l color-always -d 'Always force color output. Example `tv -a starwars.csv | less -R` or `tv -a'
complete -c tidy-viewer -s h -l help -d 'Prints help information'
complete -c tidy-viewer -s D -l no-dimensions -d 'Turns off dimensions of the data'
complete -c tidy-viewer -s R -l no-row-numbering -d 'Turns off row numbering'
complete -c tidy-viewer -n __fish_no_arguments -s V -l version -d 'Prints version information'
complete -c tidy-viewer -s c -l color -d '<color>'
complete -c tidy-viewer -s s -l delimiter -d '<delimiter>                      The delimiter separating the columns.'
complete -c tidy-viewer -s F -l footer -d \<footer\>\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Add\ a\ footer\ to\ your\ tv.\ Example\ \'footer\ info\'\ \[default:\ NA\]
complete -c tidy-viewer -s l -l lower-column-width -d '<lower-column-width>'
complete -c tidy-viewer -s n -l number-of-rows-to-output -d '<row-display>     Show how many rows to display. [default: 25]'
complete -c tidy-viewer -s g -l sigfig -d '<sigfig>                            Significant Digits. Default 3. Max is 7 [default: 3]'
complete -c tidy-viewer -s t -l title -d \<title\>\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Add\ a\ title\ to\ your\ tv.\ Example\ \'Test\ Data\'\ \[default:\ NA\]
complete -c tidy-viewer -s u -l upper-column-width -d '<upper-column-width>    The upper (maximum) width of columns. [default: 20]'
