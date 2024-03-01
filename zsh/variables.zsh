


export HOME="/Users/abelchalier"
export CONFIG="$HOME/.config"
export GOPATH="$HOME/.golang"
export LLVM_PATH="/opt/homebrew/opt/llvm"
export BUN_INSTALL="$HOME/.bun"
export ZENO_HOME="$CONFIG/zeno"

XPATH=$PATH
#XPATH+=":/Applications/VisualStudioCode-Insiders.app/Contents/Resources/app/bin"
XPATH+=":$HOME/.cargo/bin"
XPATH+=":/Applications/VLC.app/Contents/MacOS"
XPATH+=":/opt/homebrew/opt/mysql@5.7/bin"
XPATH+=":/opt/homebrew/bin"
XPATH+=":$GOPATH/bin"
XPATH+=":$HOME/abin"
XPATH+=":$HOME/.clib/bin"
# XPATH+=":$HOME/abin/zls/zig-out/bin"
# XPATH+=":$HOME/dev/zig-bootstrap/out/zig-aarch64-macos-none-apple_m1"
# XPATH+=":$HOME/abin/zls/zig-out/bin/zls"
XPATH+=":$BUN_INSTALL/bin"
XPATH+=":$HOME/.jenv/bin"
XPATH+=":$HOME/.npm-global/bin"
XPATH+=":$HOME/.local/bin"
XPATH+=":$HOME/.rbenv/bin"
XPATH+=":$LLVM_PATH/bin"
export PATH=$XPATH


export PNPM_HOME="$HOME/Library/pnpm"
export EDITOR="micro"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

export OPENAI_API_KEY=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
# bun

export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(rbenv init -)"

# export LLVM_INSTALL_PREFIX="/opt/homebrew/opt/llvm/"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/lib"
# export LLVM_INCLUDE_DIRS="$LLVM_LOCATION/include:$LLVM_LOCATION/include/llvm-c:$LLVM_LOCATION/llvm-c/Support"
# export CLANG_INCLUDE_DIRS="$LLVM_LOCATION/include:$LLVM_LOCATION/include/clang:$LLVM_LOCATION/include/clang-c:$LLVM_INCLUDES/clang-c/Support"

#export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$LLVM_PATH/lib:/usr/local/lib:/usr/local/lib/pkgconfig/lib"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$DYLD_LIBRARY_PATH"
#export CPPFLAGS="-I$LLVM/include"
#export LDFLAGS="-L$LLVM/lib/clang -Wl,-rpath,$LLVM/lib/c++"

export PATH="/opt/homebrew/opt/bison/bin:$PATH"
