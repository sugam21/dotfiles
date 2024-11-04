export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:/usr/local:$PATH
export PATH="$HOME/.local/bin:$PATH"
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH="$PATH:/usr/lib/jvm/java-11-openjdk-amd64/bin"
PATH=$PATH:$HOME/dotfiles/scripts/python_project/
# For Fluuter
export PATH=$HOME/development/flutter/bin:$PATH
export ANDROID_HOME=$HOME/Android/Sdk/
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8


ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

#ZSH_THEME=spaceship
#ZSH_THEME=afowler
ZSH_THEME=awesomepanda
#ZSH_THEME=gozilla

plugins=(git poetry asdf)

source $ZSH/oh-my-zsh.sh

# A L I A S
alias cls="clear"
alias l="eza --icons=always --group-directories-first"
alias bat="batcat"

# ctrl + arrow skip word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

alias cd="z"

#Github
alias gs="git status"
alias ga="git add ."
alias gb="git branch"
alias gp="git push -u origin"
alias gf="git fetch"
alias gpo="git pull origin"
alias gl="git log --oneline --graph"
alias gd="git diff"

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
alias snu="sudo apt-get update -y && sudo apt-get upgrade -y"
alias syu="yay -Syu"

# For How do I 
alias h='function hdi(){ howdoi $* -c -n 2; }; hdi'


# For Nvim
export EDITOR="nvim"
export VISUAL="nvim"
#export TERM="wezterm"

# To start tmux by default when terminal starts
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#    tmux attach -t main || tmux new -s main
# fi
#
export PATH=$PATH:/home/sugam/.spicetify

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(zoxide init zsh)"
source /home/sugam/dotfiles/zsh/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/sugam/dotfiles/zsh/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/sugam/dotfiles/zsh/.zsh/plugins/zsh-bat/zsh-bat.plugin.zsh

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

