export EDITOR=/usr/local/bin/nvim
export PATH="$PATH:/home/pramodhsathya/.local/bin:/home/pramodhsathya/.local/lib/:/home/pramodhsathya/.cargo/bin:/home/pramodhsathya/go/bin/:$HOME/.pub-cache/bin:/usr/local/cuda-12/bin/:/opt/gradle/gradle-8.14.3/bin"
export LD_LIBRARY_PATH="/usr/local/cuda-12/lib64:$LD_LIBRARY_PATH"
export PROJECT=$HOME/Desktop/Project/
export DOTFILES="$HOME/dotfiles/dotfiles"
export WALLPAPERS="$HOME/Downloads/livewall/"
export TERM=xterm-256color
export GTK_THEME=Adwaita:dark
export FLYCTL_INSTALL="/home/pramodhsathya/.fly"
export PATH="$PATH:$FLYCTL_INSTALL/bin"
alias mux="tmux attach 2>/dev/null || tmux"
alias prime-run="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
