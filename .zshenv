export EDITOR=/bin/nvim
export PATH="$PATH:/home/pramodhsathya/.local/bin:/home/pramodhsathya/.local/lib/:/home/pramodhsathya/.cargo/bin:/home/pramodhsathya/go/bin/:$HOME/.pub-cache/bin:/usr/local/cuda-12/bin/"
export LD_LIBRARY_PATH="/usr/local/cuda-12/lib64:$LD_LIBRARY_PATH"
export PROJECT=$HOME/Desktop/Project/
export DOTFILES="$HOME/dotfiles/dotfiles"
export WALLPAPERS="$HOME/Downloads/livewall/"
export TERM=xterm-256color
alias edit=nvim
alias q=exit
alias c=clear
alias gpo="git push origin"
alias gpl="git pull origin"
alias gi="git init"
alias gc="git clone"
alias ga.="git add ."
alias twitch="/home/pramodhsathya/Documents/twitch-cli_1.1.22_Linux_x86_64/twitch"
alias qtileconfig="nvim ~/.config/qtile/config.py"
alias dwmpatchesconfig="nvim $DOTFILES/dwm-flexipatch/patches.h"
alias dwmconfig="nvim $DOTFILES/dwm-flexipatch/config.h"
alias dwmblocksconfig="nvim $DOTFILES/dwmblocks/blocks.h"
alias rebuild="cd $DOTFILES/dwm-flexipatch && sudo make uninstall && sudo make clean install && cd $DOTFILES/dwmblocks && sudo make uninstall && sudo make clean install && cd $DOTFILES/dmenu && sudo make uninstall && sudo make clean install"
alias alacrittyconfig="nvim ~/.config/alacritty/alacritty.yml"
. "$HOME/.cargo/env"
alias prime-run="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"
alias cvim="nvim -S Session.vim"
alias mux='pgrep -vx tmux > /dev/null && \
        tmux new -d -s delete-me && \
        tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh && \
        tmux kill-session -t delete-me && \
        tmux attach || tmux attach'
export GTK_THEME=Adwaita:dark
export FLYCTL_INSTALL="/home/pramodhsathya/.fly"
export PATH="$PATH:$FLYCTL_INSTALL/bin"
