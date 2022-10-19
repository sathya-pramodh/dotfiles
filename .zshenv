export EDITOR=/bin/nvim
export PATH=$PATH:/home/pramodhsathya/.local/bin:/home/pramodhsathya/.local/lib/:/home/pramodhsathya/.cargo/bin
export PROJECT=$HOME/Desktop/Project/
export DOTFILES="$HOME/dotfiles/dotfiles"
export WALLPAPERS="$HOME/Downloads/livewall/"
alias edit=nvim
alias q=exit
alias c=clear
alias gpo="git push origin"
alias gpl="git pull origin"
alias gi="git init"
alias gc="git clone"
alias ga.="git add ."
alias qtileconfig="nvim ~/.config/qtile/config.py"
alias dwmpatchesconfig="nvim $DOTFILES/dwm-flexipatch/patches.h"
alias dwmconfig="nvim $DOTFILES/dwm-flexipatch/config.h"
alias dwmblocksconfig="nvim $DOTFILES/dwmblocks/blocks.h"
alias rebuild="cd $DOTFILES/dwm-flexipatch && sudo make uninstall && sudo make clean install && cd $DOTFILES/dwmblocks && sudo make uninstall && sudo make clean install && cd $DOTFILES/dmenu && sudo make uninstall && sudo make clean install"
alias alacrittyconfig="nvim ~/.config/alacritty/alacritty.yml"
. "$HOME/.cargo/env"
alias prime-run="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"
