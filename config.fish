# change exa color
export EXA_COLORS="da=0;90"
export LS_COLORS="di=0;36"

# basic alias
alias vim=nvim
alias g=git
alias cls=clear
alias vimconf="nvim /home/hudy/.config/nvim"
alias fishconf="nvim ~/.config/fish/config.fish"
alias ufish="source ~/.config/fish/config.fish"
alias work="cd ~/ws"

# change fish greeting
set -g fish_greeting

#tmux configuration file
alias tmuxconf="nvim ~/.tmux.conf"

# navigation
alias ..="cd .."
alias ...="cd ../.."

# change "ls" to "exa"
alias ll="exa --icons -al --color=always --group-directories-first"
alias lt="exa --icons -aT --color=always --group-directories-first"

# Nvim configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

cd ~/ws
tmux
clear
