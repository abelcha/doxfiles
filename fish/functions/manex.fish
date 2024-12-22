function manex --wraps=man --wraps=command --wraps='man 1' --argument-names argz
    #man $argz | col -b | sd --flags s '.+(EXAMP.+?)\n([A-Z].+)' '$1'
    set para (MANWIDTH=300 man $argz 2> /dev/null  | col -b |sd '\n' '§'  |rg '§(EXAMPLES.+?)(§[A-Z]+)' --replace '$1' --only-matching )
    test -z "$para" && return
    glow -p (echo $para | sd '§' '\n' | rg -w (_ "(.+)($argz.+)") --replace '`$2`' --passthru |rg --passthru '^[^`]\s*' -r '> '| psub)
end
