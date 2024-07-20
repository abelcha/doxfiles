function vcftocsv
    echo 'name;postalCode;city;phone'
    sd '\n' '•' | sd '•BEGIN:VCARD•VERSION:3.0•' '\n' | sd '•END:VCARD' '' | jh --lines --map "Object.values(_.pick(_.zipObject('a b c d e f g h i j k l m'.split(' '), e.split(/\s-\s|;|•/)), 'a','b', 'i')).join(';')" --jsonl | jh --map "e.split(';')[0]?.split(' ').slice(2).join(' ') + ';' + e.split(';')?.[1]?.split(' ')?.[0]+';'+e.split(';')[1]?.split(' ').slice(1)+';'+ e.split('VOICE: ')[1]" --lines
end
