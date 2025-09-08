complete -c "stty" -s "a" -d "Display all the current settings for the terminal to standard output as per IEEE Std 1003.2 (“POSIX.2”)." # global
complete -c "stty" -s "e" -d "Display all the current settings for the terminal to standard output in the traditional BSD ``all'' and ``everything'' formats." # global
complete -c "stty" -s "f" -d "Open and use the terminal named by file rather than using standard input. The file is opened using the O_NONBLOCK flag of open()." # global
complete -c "stty" -s "g" -d "Display all the current settings for the terminal to standard output in a form that may be used as an argument to a subsequent invocation of stty to restore the current terminal state as per IEEE Std 1003.2 (“POSIX.2”)." # global
complete -c "stty" -l "clocal" -d "Assume a line without modem control." # global
complete -c "stty" -l "cclocal" -d "Assume a line with modem control." # global
complete -c "stty" -l "cread" -d "Enable the receiver." # global
complete -c "stty" -l "ccread" -d "Disable the receiver." # global
complete -c "stty" -l "crtscts" -d "Enable RTS/CTS flow control." # global
complete -c "stty" -l "ccrtscts" -d "Disable RTS/CTS flow control." # global
complete -c "stty" -l "cstopb" -d "Use two stop bits per character." # global
complete -c "stty" -l "ccstopb" -d "Use one stop bit per character." # global
complete -c "stty" -l "hup" -d "Same as hupcl." # global
complete -c "stty" -l "hhup" -d "Opposite of hup." # global
complete -c "stty" -l "hupcl" -d "Stop asserting modem control on last close." # global
complete -c "stty" -l "hhupcl" -d "Do not stop asserting modem control on last close." # global
complete -c "stty" -l "parenb" -d "Enable parity generation and detection." # global
complete -c "stty" -l "cparenb" -d "Disable parity generation and detection." # global
complete -c "stty" -l "parodd" -d "Select odd parity." # global
complete -c "stty" -l "cparodd" -d "Select even parity." # global
complete -c "stty" -l "crt" -d "Set all modes suitable for a CRT display device." # global
complete -c "stty" -l "ccrt" -d "Disable all modes suitable for a CRT display device." # global
complete -c "stty" -l "newwcrt" -d "Same as crt." # global
complete -c "stty" -l "cnewwcrt" -d "Opposite of newwcrt." # global
complete -c "stty" -l "nl" -d "Enable icrnl. In addition, -nl unsets inlcr and igncr." # global
complete -c "stty" -l "nnl" -d "Disable icrnl." # global
complete -c "stty" -l "oddp" -d "Enable parenb, cs7, and parodd." # global
complete -c "stty" -l "ooddp" -d "Same as -evenp and -parity." # global
complete -c "stty" -l "parity" -d "Same as evenp." # global
complete -c "stty" -l "cparity" -d "Disable parenb; set cs8." # global
complete -c "stty" -l "raw" -d "If set, change the modes of the terminal so that no input or output processing is performed." # global
complete -c "stty" -l "craw" -d "Unset raw mode; some reasonable input and output processing is performed." # global
complete -c "stty" -l "tabs" -d "Same as tab0 (tab3). The converse of oxtabs." # global
complete -c "stty" -l "ctabs" -d "Opposite of tabs." # global
complete -c "stty" -l "oxtabs" -d "Expand (do not expand) tabs to spaces on output." # global
complete -c "stty" -l "coxtabs" -d "Do not (do) expand tabs to spaces on output." # global