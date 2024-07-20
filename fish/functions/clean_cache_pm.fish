function clean_cache_pm

  ### NPM (Node Package Manager)
  echo "npm cache clean --force ..."
  npm cache clean --force

### Yarn (Another Node.js package manager)
  echo "yarn cache clean ..."
  yarn cache clean

### PNPM (Performant NPM)
  echo "pnpm store prune ..."
  pnpm store prune
  echo "pnpm store gc ..."   
  pnpm store gc

### Bun (A fast all-in-one JavaScript runtime)
  echo "bun completions cache clean ..."
  bun completions cache clean

### Go (Golang)
  echo "go clean -modcache ..."
  go clean -modcache

### Rust (Cargo - Rust's package manager)
  echo "cargo clean ..."
  cargo clean

### Python (pip)
  echo "pip cache purge ..."
  pip cache purge

### Pipenv (Python package manager)
  echo "pipenv --clear ..."
  pipenv --clear

### Poetry (Python dependency management and packaging tool)
  echo "poetry cache clear --all pypi ..."
  poetry cache clear --all pypi

### Composer (PHP dependency manager)
  echo "composer clear-cache ..."
  composer clear-cache

### RubyGems (Ruby package manager)
  echo "gem cleanup ..."
  echo "gem clean ..."   
  gem cleanup
  gem clean

### Homebrew (macOS package manager)
  echo "brew cleanup ..."
  echo "brew cleanup -s ..."   
  brew cleanup
  brew cleanup -s

### Maven (Java)
  echo "mvn dependency:purge-local-repository ..."
  mvn dependency:purge-local-repository

### Gradle (Java)
  echo "gradle clean ..."
  gradle clean
  echo "gradle --stop ..."   
  gradle --stop
  echo "trash ~/.gradle/caches/ ..."   
  trash ~/.gradle/caches/

### NuGet (.NET)
  echo "dotnet nuget locals all --clear ..."
  dotnet nuget locals all --clear

### Cask (Homebrew for macOS application packages)

If you use Homebrew Cask for installing applications:
  echo "brew cask cleanup ..."
  brew cask cleanup

### Flutter (Dart)
  echo "flutter clean ..."
  flutter clean

### Docker

#To clear Docker images, containers, networks, and volumes that are no longer needed:
  echo "docker system prune -a ..."
  docker system prune -a

# To remove all stopped containers, all unused networks, and all build cache,
# but not unused (dangling) images:
  echo "docker system prune ..."
  docker system prune

### Caches specific to other tools and languages might require different
# commands; however, this list should cover many of the common scenarios.
# Always ensure to back up or check the consequences of clearing caches in
# case you need to retrieve any previously cached content.


end
