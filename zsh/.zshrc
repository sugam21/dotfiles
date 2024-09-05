export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:/usr/local:$PATH
export PATH="$HOME/.local/bin:$PATH"
# export PATH="$HOME/.cargo/bin/:$PATH"
# export TERM="xterm-256color"
export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8


ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

ZSH_THEME=spaceship

plugins=(git poetry)

source $ZSH/oh-my-zsh.sh

# A L I A S
alias cls="clear"
alias ls="lsd"
alias bat="batcat"

# ctrl + arrow skip word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# WIFI
alias wifi-off="nmcli radio wifi off"
alias wifi-on="nmcli radio wifi on"

# RSTUDIO
alias rstudio="sudo rstudio --no-sandbox"

alias cd="z"

#Github
alias gs="git status"
alias ga="git add ."
alias gb="git branch"
alias gp="git push -u origin"
alias gf="git fetch"
alias gpo="git pull origin"

alias lg="lazygit"

# work
alias work="cd ~/work/"
alias pt="cd ~/work/python/"
alias cpp="cd ~/work/cpp/"
# Fuzzy Finder
alias fn="fd --type f --hidden --exclude .git| fzf-tmux -p --reverse --height 40% --border double| xargs nvim"

# FOR FUZZY FINDER
alias fw="z ~ && z \$(find ~/work -type d | fzf --height 50% --border rounded)"
alias fd="z ~ && z \$(find ~/dotfiles/ -type d -not -path '*/\.git/*' | fzf --height 50% --border rounded)"
alias fdd="z ~ && z \$(find  ~/Downloads/ ~/Pictures/ -type d | fzf --height 50% --border rounded)"

# J U P Y T E R - N O T E B O O K
alias jl="jupyter lab"

# S H O U T D O W N
alias ssn="sudo shutdown now"
alias sr="sudo reboot"

alias sdca="sudo dnf clean all"


#navigation
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

# Vim
alias v="nvim"

# Arch updated
alias spu="sudo pacman -Syu"
alias snu="sudo apt-get update && sudo apt-get upgrade"
alias syu="yay -Syu"

# For How do I 
alias h='function hdi(){ howdoi $* -c -n 2; }; hdi'


# For Nvim
export EDITOR="nvim"
export VISUAL="nvim"
#export TERM="wezterm"

# To start tmux by default when terminal starts
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
   tmux attach -t main || tmux new -s main
fi

export PATH=$PATH:/home/sugam/.spicetify

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
fpath+=${ZDOTDIR:-~}/.zsh_functions

eval "$(zoxide init zsh)"
source /home/sugam/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/sugam/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/sugam/.zsh/plugins/zsh-bat/zsh-bat.plugin.zsh
