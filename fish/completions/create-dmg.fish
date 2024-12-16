# complete -c create-dmg -l volname -d '<name>'
# complete -c create-dmg -l volicon -d '<icon.icns>'
# complete -c create-dmg -l background -d '<pic.png>'
# complete -c create-dmg -l window-pos -d '<x> <y>'
# complete -c create-dmg -l window-size -d '<width> <height>'
# complete -c create-dmg -l text-size -d '<text_size>'
# complete -c create-dmg -l icon-size -d '<icon_size>'
# complete -c create-dmg -l icon -d 'file_name <x> <y>'
# complete -c create-dmg -l hide-extension -d '<file_name>'
# complete -c create-dmg -l app-drop-link -d '<x> <y>'
# complete -c create-dmg -l ql-drop-link -d '<x> <y>'
# complete -c create-dmg -l eula -d '<eula_file>'
# complete -c create-dmg -l format -d '<format>'
# complete -c create-dmg -l filesystem -d '<filesystem>'
# complete -c create-dmg -l add-file -d '<target_name> <file>|<folder> <x> <y>'
# complete -c create-dmg -l disk-image-size -d '<x>'
# complete -c create-dmg -l codesign -d '<signature>'
# complete -c create-dmg -l notarize -d '<credentials>'


complete -c create-dmg -l volname -d 'set volume name (displayed in the Finder  sidebar and window title)' -r
complete -c create-dmg -l volicon -d 'set volume icon' -r
complete -c create-dmg -l background -d 'set folder background image (provide  png, gif, or jpg)' -r
complete -c create-dmg -l window-pos -d 'set position the folder window' -r
complete -c create-dmg -l window-size -d 'set size of the folder window' -r
complete -c create-dmg -l text-size -d 'set window text size (10-16)' -r
complete -c create-dmg -l icon-size -d 'set window icons size (up to 128)' -r
complete -c create-dmg -l icon -d "set position of the file's icon" -r
complete -c create-dmg -l hide-extension -d 'hide the extension of file' -r
complete -c create-dmg -l app-drop-link -d 'make a drop link to Applications, at location x,y' -r
complete -c create-dmg -l ql-drop-link -d 'make a drop link to user QuickLook  install dir, at location x,y' -r
complete -c create-dmg -l eula -d 'attach a license file to the dmg (plain text or RTF)' -r
complete -c create-dmg -l no-internet-enable -d 'disable automatic mount & copy'
complete -c create-dmg -l format -d 'specify the final disk image format  (UDZO|UDBZ|ULFO|ULMO)' -xa 'UDZO UDBZ ULFO ULMO'
complete -c create-dmg -l filesystem -d 'specify the disk image filesystem (HFS+|APFS)' -xa 'HFS+ APFS'
complete -c create-dmg -l encrypt -d 'enable encryption for the resulting disk image (AES-256 - you will be prompted for password)'
complete -c create-dmg -l encrypt-aes128 -d 'enable encryption for the resulting disk image (AES-128 - you will be prompted for password)'
complete -c create-dmg -l add-file -d 'add additional file or folder (can be used multiple times)' -r
complete -c create-dmg -l disk-image-size -d 'set the disk image size manually to x MB' -r
complete -c create-dmg -l hdiutil-verbose -d 'execute hdiutil in verbose mode'
complete -c create-dmg -l hdiutil-quiet -d 'execute hdiutil in quiet mode'
complete -c create-dmg -l bless -d 'bless the mount folder (deprecated, needs macOS 12.2.1 or older)'
complete -c create-dmg -l codesign -d 'codesign the disk image with the specified signature' -r
complete -c create-dmg -l notarize -d 'notarize the disk image (waits and staples) with the keychain stored credentials' -r
complete -c create-dmg -l sandbox-safe -d 'execute hdiutil with sandbox compatibility and do not bless (not supported for APFS disk images)'
complete -c create-dmg -l version -d 'show create-dmg version number'
complete -c create-dmg -s h -l help -d 'display this help screen'
