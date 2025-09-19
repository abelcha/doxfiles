FROM gmanka/archlinuxarm

COPY root_dependencies.sh /root_dependencies.sh
RUN /root_dependencies.sh

COPY root_setup.sh /root_setup.sh
RUN /root_setup.sh

USER abel
WORKDIR /home/abel

ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"

COPY brew_setup.sh /brew_setup.sh
RUN /brew_setup.sh

COPY config_setup.sh /config_setup.sh
RUN /config_setup.sh

ENV CARGO_HOME="/mods/cargo"
ENV RUSTUP_HOME="/mods/rustup"
ENV GOPATH="/mods/golang"
ENV PATH="/mods/cargo/bin:/mods/golang/bin:${PATH}"

COPY fish_setup.fish /fish_setup.fish
RUN /fish_setup.fish
