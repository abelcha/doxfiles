# set -gx base16_fish_shell_disable_prompt_colors TRUE

string replace --regex '^(\w+)=(.+)$' 'set -gx $1 "$2"' < ~/.env | source

if type -q batpipe
    batpipe | source
end

# set -x HOMEBREW_AUTO_UPDATE_SECS "42e10"

set regphonefr '(0033|\+33|0)[6-7](\d\d[^\-\.\s]?){4}'
set regphone2 '(33|0033|\+33|0)\W?[67](\d{8}|(\.\d\d){4}|(\s\d\d){4})'
set regfr 'fr(ance|ench)?'
set regemail '[\w\d\-\_\.]+@\w+\.\w{2,3}'

fish_add_path /Applications/Trae.app/Contents/Resources/app/bin
fish_add_path /me/.lmstudio/bin
fish_add_path /Applications/Xcode-beta.app/Contents/Developer/usr/bin/
fish_add_path /mods/bin
# source (fnm env |psub -s fish)

if [ "$(uname -s)" != Darwin ]
    functions --erase ramdisk diskattach diskimage bundleids fbundleid xcodebuild ulfo md qlmanage container ass
end
