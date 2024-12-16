function ulfo --wraps=hdiutil --wraps='hdiutil create ' --wraps='hdiutil create -srcfolder'
    argparse --ignore-unknown 'format=' -- $argv
    set basedir (path normalize $argv[1]) # fix trailing slasj
    set -l dest (path change-extension '.dmg' $basedir)
    # echo "==> $dest|$basedir"c
    hdiutil create "$dest" -format (§ $_flag_format |§ ULFO) -srcfolder "$basedir" -verbose -puppetstrings $argv[2..]; and test -e "$fest"; and trash $basedir
end
