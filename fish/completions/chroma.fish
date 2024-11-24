function chroma_list_styles
    chroma --list | grep styles | sd 'styles:' '' | plines
end

function chroma_list_fmt
    chroma --list | jh --lines --map "e.match(/aliases:(.+)/)?.[1]" --filter "e.includes('alias')" | sd "\n" ""
end
complete -c chroma -s h -l help -d 'Show context-sensitive help.'
complete -c chroma -n __fish_no_arguments -l version -d 'Show version.'
complete -c chroma -l list -d 'List lexers, styles and formatters.'
complete -c chroma -l unbuffered -d 'Do not buffer output.'
complete -c chroma -l trace -d 'Trace lexer states as they are traversed.'
complete -c chroma -l check -d 'Do not format, check for tokenisation errors instead.'
complete -c chroma -l fail -d 'Exit silently with status 1 if no specific lexer was'
complete -c chroma -l json -d 'Convenience flag to use JSON formatter.'
complete -c chroma -l html -d 'Convenience flag to use HTML formatter.'
complete -c chroma -l svg -d 'Convenience flag to use SVG formatter.'
complete -c chroma -l html-styles -d 'Output HTML CSS styles.'
complete -c chroma -l html-all-styles -d 'Output all HTML CSS styles, including'
complete -c chroma -l html-only -d 'Output HTML fragment.'
complete -c chroma -l html-inline-styles -d 'Output HTML with inline styles (no classes).'
complete -c chroma -l html-lines -d 'Include line numbers in output.'
complete -c chroma -l html-lines-table -d 'Split line numbers and code in a HTML table'
complete -c chroma -l html-linkable-lines -d 'Make the line numbers linkable and be a link'
complete -c chroma -l style -s s -x -a _"abap algol algol_nu arduino autumn average base16-snazzy borland bw catppuccin-frappe catppuccin-latte catppuccin-macchiato catppuccin-mocha colorful doom-one doom-one2 dracula emacs friendly fruity github github-dark gruvbox gruvbox-light hr_high_contrast hrdark igor lovelace manni modus-operandi modus-vivendi monokai monokailight murphy native nord onedark onesenterprise paraiso-dark paraiso-light pastie perldoc pygments rainbow_dash rose-pine rose-pine-dawn rose-pine-moon rrt solarized-dark solarized-dark256 solarized-light swapoff tango trac vim vs vulcan witchhazel xcode xcode-dark"
complete -c chroma -l lexer -s l -x -a "abap abnf as actionscript as3 actionscript3 ada ada95 ada2005 agda al alloy ng2 antlr apacheconf aconf apache apl applescript aql arduino armasm autohotkey ahk autoit awk gawk mawk nawk ballerina bash sh ksh zsh shell bash-session console shell-session bat batch dosbatch winbatch bib bibtex bicep blitzbasic b3d bplus bnf bqn brainfuck bf c csharp c# cpp c++ caddyfile caddy caddyfile-directives caddyfile-d caddy-d capnp cassandra cql ceylon cfengine3 cf3 cfs chai chaiscript chapel chpl cheetah spitfire clojure clj edn cmake cobol coffee-script coffeescript coffee common-lisp cl lisp coq cr crystal css cue cython pyx pyrex d dart dax desktop desktop_entry diff udiff django jinja zone bind docker dockerfile dtd dylan ebnf elixir ex exs elm emacs elisp emacs-lisp erlang factor fennel fnl fish fishshell forth fortran f90 fortranfixed fsharp gas asm gdscript gd gdscript3 gd3 genshi kid xml+genshi xml+kid html+genshi html+kid genshitext cucumber Cucumber gherkin Gherkin glsl gnuplot go golang go-html-template go-template go-text-template graphql graphqls gql groff nroff man groovy handlebars hbs hare haskell hs hx haxe hxsl hcl hexdump hlb hlsl holyc html http hylang idris idr igor igorpro ini cfg dosini io iscdhcpd j java js javascript json julia jl jungle kotlin lighty lighttpd llvm lua make makefile mf bsdmake mako md mkd mason materialize mzsql mathematica mma nb matlab mcfunction meson meson.build metal minizinc MZN mzn mlir modula2 m2 monkeyc morrowind mwscript myghty mysql mariadb nasm natural ndisasm newspeak nginx nim nimrod nixos nix objective-c objectivec obj-c objc objectpascal ocaml octave odin ones onesenterprise 1S 1S:Enterprise openedge abl progress openedgeabl openscad org orgmode pacmanconf perl pl php php3 php4 php5 phtml pig pkgconfig plpgsql text plain no-highlight plutus-core plc pony postgresql postgres postscript postscr pov powerquery pq powershell posh ps1 psm1 psd1 pwsh prolog promela promql java-properties protobuf proto prql psl puppet python py sage python3 py3 python2 py2 qbasic basic qml qbs splus s r racket rkt ragel perl6 pl6 raku jsx react reason reasonml registry rego rst rest restructuredtext rexx arexx spec rb ruby duby rust rs sas sass scala scheme scm scilab scss sed gsed ssed sieve smali smalltalk squeak st smarty snobol sol solidity sp sparql sql squidconf squid.conf squid sml stylus svelte swift systemd systemverilog sv tablegen tal uxntal tasm tcl tcsh csh termcap terminfo terraform tf tex latex thrift toml tradingview tv tsql t-sql turing turtle twig ts tsx typescript typoscript typoscriptcssdata typoscripthtmldata v vlang vsh vshell vala vapi vb.net vbnet verilog v vhdl vhs tape cassette vim vue vuejs wgsl whiley xml xorg.conf yaml yang z80 zed zig"
# complete -c chroma -l formatter -s f -x -a "$(echo "html","json","noop","svg","terminal","terminal16","terminal16m","terminal256","terminal8","tokens"|sd ',' ' ')"
