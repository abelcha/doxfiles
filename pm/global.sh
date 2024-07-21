
cargo install fnm                    ;
cargo install atuin                   ;
cargo install dx-cli                  ;
cargo install eza                     ;
cargo install helix-term              ;
cargo install hexyl                   ;
cargo install pqrs                    ;
cargo install sqlite2dir              ;
cargo install stdrename               ;
cargo install stu                     ;
cargo install tealdeer                ;
cargo install xpq2                    ;
cargo install xq                      ;
cargo install xsv                     ;
cargo install ripgrep-all             ;
cargo install watchexec               ;
cargo install uv                      ; 
cargo install sk                      ; 
cargo install rga                     ; 
cargo install unar                    ; 
cargo install csvlens                 ; 



go install github.com/ducaale/xh@latest
go install github.com/charmbracelet/mods@latest
go install github.com/abhimanyu003/sttr@latest
go install github.com/junegunn/fzf@latest
go install github.com/sharkdp/fd@latest

#!/bin/bash

# This script installs specified packages on Debian 12

# Update the package lists
sudo apt-get update -y

# Install common packages
sudo apt-get install -y \
  ag \ # The Silver Searcher
  aria2c \ # Download utility with resuming and segmented downloading
  cmake \ # Build system generator
  git \ # Version control system
  jq \ # JSON processor
  node \ # JavaScript runtime
  pipx \ # Package installer for Python
  rclone \ # Rsync for cloud storage
  wget \ # Network downloader
  xh \ # Friendly and fast tool for working with XML files
  zig \ # General-purpose programming language

# Install Docker
sudo apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Install Go
wget https://go.dev/dl/go1.17.linux-amd64.tar.gz
tar -xvf go1.17.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Install Fish shell
sudo apt-get install -y fish

# Install FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install RG and RGA
sudo apt-get install -y ripgrep

# Install Bat
sudo apt-get install -y bat

# Install Deno
curl -fsSL https://deno.land/x/install/install.sh | sh

# Install GH CLI
sudo apt-get install -y gh

# Install DuckDB
wget https://github.com/duckdb/duckdb/releases/download/v0.5.0/duckdb.Linux.x86_64-musl.tar.gz
tar -xvf duckdb.Linux.x86_64-musl.tar.gz
sudo mv duckdb /usr/local/bin

# Install Atuin
curl -L https://github.com/ellie/atuin/releases/latest/download/atuin_x86_64.Linux.tar.gz | tar xz
sudo mv atuin /usr/local/bin

# Install PV
sudo apt-get install -y pv

# Install unar
sudo apt-get install -y unar

# Install watchexec
cargo install --locked watchexec

# Install fd
sudo apt-get install -y fd-find

# Create a log file
exec > >(tee -i install_packages.log)
echo "Package installation completed. Check install_packages.log for details."