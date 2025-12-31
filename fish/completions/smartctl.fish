complete -c smartctl -s h -l help -d "Display this help and exit" # global
complete -c smartctl -s V -l version -d "Print license, copyright, and version information and exit" # global
complete -c smartctl -s i -l info -d "Show identity information for device" # global
complete -c smartctl -l identify -d "Show words and bits from IDENTIFY DEVICE data (ATA)" -xa "w nvb" # global
complete -c smartctl -s g -l get -d "Get device setting" -xa "all aam apm dsn lookahead security wcache rcache wcreorder wcache-sct" # global
complete -c smartctl -s a -l all -d "Show all SMART information for device" # global
complete -c smartctl -s x -l xall -d "Show all information for device" # global
complete -c smartctl -l scan -d "Scan for devices" # global
complete -c smartctl -l scan-open -d "Scan for devices and try to open each device" # global
complete -c smartctl -s j -l json -d "Print output in JSON or YAML format" -xa "c g i o s u v y" # global
complete -c smartctl -s q -l quietmode -d "Set smartctl quiet mode to one of" -xa "errorsonly silent noserial" # global
complete -c smartctl -s d -l device -d "Specify device type" -xa "ata scsi[+TYPE] nvme[,NSID] sat[,auto][,N][+TYPE] usbasm1352r,N usbcypress[,X] usbjmicron[,p][,x][,N] usbprolific usbsunplus[/sat] sntasmedia[/sat] sntjmicron[,NSID][/sat] sntrealtek[/sat] jmb39x[-q[2]],N[,sLBA][,force][+TYPE] jms56x,N[,sLBA][,force][+TYPE] auto test" # global
complete -c smartctl -s T -l tolerance -d Tolerance -xa "normal conservative permissive verypermissive" # global
complete -c smartctl -s b -l badsum -d "Set action on bad checksum" -xa "warn exit ignore" # global
complete -c smartctl -s r -l report -d "Report transactions (see man page)" # global
complete -c smartctl -s n -l nocheck -d "No check if (ATA, SCSI)" # global
complete -c smartctl -s s -l smart -d "Enable/disable SMART on device" -xa "on off" # global
complete -c smartctl -s o -l offlineauto -d "Enable/disable automatic offline testing on device (ATA)" -xa "on off" # global
complete -c smartctl -s S -l saveauto -d "Enable/disable Attribute autosave on device (ATA)" -xa "on off" # global
complete -c smartctl -s s -l set -d "Enable/disable/change device setting" -xa "aam,[N|off] apm,[N|off] dsn,[on|off] lookahead,[on|off] security-freeze standby,[N|off|now] wcache,[on|off] rcache,[on|off] wcreorder,[on|off[,p]] wcache-sct,[ata|on|off[,p]]" # global
complete -c smartctl -s H -l health -d "Show device SMART health status" # global
complete -c smartctl -s c -l capabilities -d "Show device SMART capabilities (ATA, NVMe)" # global
complete -c smartctl -s A -l attributes -d "Show device SMART vendor-specific Attributes and values" # global
complete -c smartctl -s f -l format -d "Set output format for attributes (ATA)" -xa "old brief hex[,id|val]" # global
complete -c smartctl -s l -l log -d "Show device log" -xa "error selftest selective directory[,g|s] xerror[,N][,error] xselftest[,N][,selftest] background sasphy[,reset] sataphy[,reset] scttemp[sts,hist] scttempint,N[,p] scterc[,N,M][,p|reset] devstat[,N] defects[,N] ssd gplog,N[,RANGE] smartlog,N[,RANGE] nvmelog,N,SIZE tapedevstat zdevstat envrep farm" # global
complete -c smartctl -s v -l vendorattribute -d "Set display OPTION for vendor Attribute N (ATA)" # global
complete -c smartctl -s F -l firmwarebug -d "Use firmware bug workaround (ATA)" -xa "none nologdir samsung samsung2 samsung3 xerrorlba swapid" # global
complete -c smartctl -s P -l presets -d "Drive-specific presets (ATA)" -xa "use ignore show showall" # global
complete -c smartctl -s B -l drivedb -d "Read and replace [add] drive database from FILE (ATA)" # global
complete -c smartctl -s t -l test -d "Run test" -xa "offline short long conveyance force vendor,N select,M-N pending,N afterselect,[on|off]" # global
complete -c smartctl -s C -l captive -d "Do test in captive mode (along with -t)" # global
complete -c smartctl -s X -l abort -d "Abort any non-captive test on device" # global
complete -c smartctl -x -a '(__fish_complete_disk)'
