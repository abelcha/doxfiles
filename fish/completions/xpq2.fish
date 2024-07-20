complete -f -c xpq2 -n __fish_use_subcommand -a count -d 'Show num of rows'
complete -f -c xpq2 -n __fish_use_subcommand -a frequency -d 'Show frequency counts for each column/value'
complete -f -c xpq2 -n __fish_use_subcommand -a help -d 'Print this message or the help of the given subcommand(s)'
complete -f -c xpq2 -n __fish_use_subcommand -a read -d 'Read rows from parquet'
complete -f -c xpq2 -n __fish_use_subcommand -a sample -d 'Randomly sample rows from parquet'
complete -f -c xpq2 -n __fish_use_subcommand -a schema -d 'Show parquet schema'


# for sub in count frequency help read sample schema
set -l sub ''
complete -c xpq2 -n '' -s c -l columns -d 'Select columns from parquet'
complete -c xpq2 -n '' -s f -l format -d 'Output format' -x -a 'table tabular vertical csv'
complete -c xpq2 -n '' -s l -l limit -d 'Max number of rows [default: 500]'
complete -c xpq2 -n '' -s s -l search -d 'Search columns'
complete -c xpq2 -n '' -s h -l help -d 'Print help information'
# end
