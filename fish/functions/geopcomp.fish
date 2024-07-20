function pcomp
    set -l tmp $argv[1].compressed.pdf
    du -sh $argv[1]
    /opt/homebrew/bin/gs -dBATCH -dNOPAUSE -q -dCompatibilityLevel=1.5 -dPDFSETTINGS=/screen -r50 -sDEVICE=pdfwrite -sOutputFile=$tmp $argv[1] && du -sh $tmp && trash $argv[1] && mv $tmp $argv[1]
end
