FROM gmanka/archlinuxarm
RUN pacman -Syu --noconfirm
RUN pacman -Sy --noconfirm sudo base-devel which fish rustup procps-ng curl file git wget ripgrep
RUN useradd -m -G wheel -s /bin/bash abel
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN chsh -s /usr/bin/fish abel

RUN mkdir /mods
RUN mkdir /mods/data
RUN mkdir /mods/data/fish
RUN mkdir /mods/bin
RUN chown -R abel:abel /mods
RUN ln -s  /home/abel /me

USER abel
WORKDIR /home/abel

RUN /bin/bash -c "export NONINTERACTIVE=1; $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"


RUN brew tap oven-sh/bun
RUN brew install go bun choose-rust aria2 atuin automake awscli axel bat-extras bfs bkt broot btop caddy ccache chroma cloudflared cmake codex coreutils croc csvlens dprint duckdb eget eza fd fx fzf gh git glow go-task google-sparsehash gum helix hexyl htop jless jwt-cli killport less  litecli  lzfse lzop massren meson miniserve mods moreutils ncdu neovim ouch readline sd sevenzip sk unar uutils-coreutils uv volta

RUN git config --global user.email "abel@example.com"
RUN git config --global user.name "abel"
RUN git config --global credential.helper store


RUN rm -fr /me/.config

RUN git clone https://github.com/abelcha/doxfiles
RUN mv doxfiles .config
RUN ln -s /me/.config /me/config
RUN echo "BEFORE: $PATH"
RUN echo "BEFORE CARGO HOME: $CARGO_HOME"

SHELL ["fish", "-c"]



ENV CARGO_HOME="/mods/cargo"
ENV RUSTUP_HOME="/mods/rustup"
ENV GOPATH="/mods/golang"
ENV PATH="/mods/cargo/bin:/mods/golang/bin:${PATH}"

RUN echo "AFTER: $PATH"
RUN echo "AFTER: CARGO HOME: $CARGO_HOME"
RUN rustup default stable
RUN cargo install amber cargo-binstall cargo-cache cargo-sweep cargo-watch cfspeedtest coreutils genson-rs jfmt ssd-benchmark stdrename teehee xcp
RUN cargo install --git https://github.com/will-lynas/lnx
RUN cargo install --git https://github.com/abelcha/bat

RUN go install github.com/tidwall/jj/cmd/jj@latest
RUN go install github.com/zyedidia/eget@latest
RUN go install github.com/abhimanyu003/sttr@latest

RUN mkdir -p ~/.ssh
RUN chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
RUN chmod 600 ~/.ssh/authorized_keys


