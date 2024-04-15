brew info --json=v2 --installed > brew.json
cp ~/.bun/install/global/package.json .
cargo install --list > cargo.txt
ls -1 $GOPATH/bin > golang.txt
pipx list > pipx.txt
