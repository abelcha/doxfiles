function parallel --wraps=command --description 'alias parallel parallel --eta --progress --bar'
    command parallel --ungroup --eta --progress --bar $argv

end
