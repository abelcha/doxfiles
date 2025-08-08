function swap --argument-names filea --argument-names fileb
    set tmp (mktemp -d )
    mv $filea $tmp/temp
    mv $fileb $filea
    mv $tmp/temp $fileb
end
