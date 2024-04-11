# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/local:$PATH

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin/:$PATH"
export TERM="xterm-256color"
export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8

ENABLE_CORRECTION="true"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

plugins=(git)
# A L I A S
#Utilities
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

# Android
alias android="ssh uO_a263@10.24.64.43 -p 8022"
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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sugam/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sugam/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sugam/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sugam/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# pnpm
export PNPM_HOME="/home/sugam/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# # For starship
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
fpath+=${ZDOTDIR:-~}/.zsh_functions

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
eval "$(zoxide init zsh)"
source /home/sugam/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/sugam/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/sugam/.zsh/plugins/zsh-bat/zsh-bat.plugin.zsh
