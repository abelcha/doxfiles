function clean_cache_pm
    function cleandir
        echo "trashing $(du -sh $argv) ..."
        trash "$argv/*"
    end

    function runcom
        if type -q $argv[1]
            echo "running $argv"
            command $argv
        end
    end

    cleandir ~/Library/Caches
    cleandir  ~/Library/Developer/Xcode/DerivedData
    runcom npm cache clean --force
    runcom yarn cache clean
    runcom pnpm store prune
    runcom pnpm store gc
    runcom bun completions cache clean
    runcom go clean -modcache
    runcom cargo clean
    runcom pip cache purge
    runcom pipenv --clear
    runcom poetry cache clear --all pypi
    runcom composer clear-cache
    runcom gem cleanup
    runcom gem clean
    runcom brew cleanup
    runcom brew cleanup -s
    runcom mvn dependency:purge-local-repository
    runcom gradle clean
    runcom gradle --stop
    runcom trash ~/.gradle/caches/
    runcom dotnet nuget locals all --clear
    runcom brew cask cleanup
    runcom flutter clean
    runcom docker system prune -a
    runcom docker system prune

end
