function _mods_list_models
    #xc 'https://openrouter.ai/api/v1/models' | fx '.data.map(e => [e.id, (e.top_provider.moderated ? "****" : "")+ e.description.replace(/[^A-z0-9- ]+/img, " "), ""].join("\t\'")).join("\n")'
    cat /me/.config/mods/mods.yml |yq -o json | fx 'e => Object.entries(e.apis).flatMap(e => e[1].models && Object.entries(e[1].models)).filter(z => z).map(z => z[0] + "\t" + "\'" + (z[1]?.description||JSON.stringify(z[1]))?.split(`\'`, '').join(`:::`)+"\'").join("\n")'
    #yq eval ".apis [].models [] | (key)" ~/config/mods/mods.yml
end
