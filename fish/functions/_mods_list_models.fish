function _mods_list_models
    yq eval ".apis [].models [] | (key)" ~/config/mods/mods.yml
end
