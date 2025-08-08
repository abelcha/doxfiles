function lnk --wraps=lynx
    lynx -anonymous -accept_all_cookies -force_html -nolist -vikeys -notitle -nonumbers -nomore -trim_blank_lines -enable_scrollback -list_inline $argv
end
