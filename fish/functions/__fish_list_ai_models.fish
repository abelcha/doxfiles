function __fish_list_ai_models
     pi --list-models| choose 1| rg -v  '\d{2,}'
end
