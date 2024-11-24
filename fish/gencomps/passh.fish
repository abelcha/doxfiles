complete -c passh -s c -d '<N>          Send at most <N> passwords (0 means infinite. Default: 0)'
complete -c passh -s C -d 'Exit if prompted for the <N+1>th password'
complete -c passh -s h -d Help
complete -c passh -s i -d 'Case insensitive for password prompt matching'
complete -c passh -s n -d Nohup\ the\ child\ \(e.g.\ used\ for\ `ssh\ -f\'\)
complete -c passh -s p -d \<password\>\ \ \ The\ password\ \(Default:\ `password\'\)
complete -c passh -s p -d 'env:<var>    Read password from env var'
complete -c passh -s p -d 'file:<file>  Read password from file'
complete -c passh -s P -d '<prompt>     Regexp (BRE) for the password prompt'
complete -c passh -s l -d '<file>       Save data written to the pty'
complete -c passh -s L -d '<file>       Save data read from the pty'
complete -c passh -s t -d '<timeout>    Timeout waiting for next password prompt'
complete -c passh -s T -d 'Exit if timed out waiting for password prompt'
complete -c passh -s V -d 'Show version'
complete -c passh -s y -d Auto\ answer\ `\(yes/no\)\?\'\ questions
