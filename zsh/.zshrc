# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.emacs.d/bin/:$PATH"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

ENABLE_CORRECTION="true"

# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

plugins=(git)
# A L I A S
#Utilities
alias cls="clear"
# alias ls="logo-ls"
alias lsa="logo-ls -a"
alias lsl="logo-ls -la"
# RSTUDIO
alias rstudio="sudo rstudio --no-sandbox"
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
alias fff="cd ~ && cd \$(find * -type d | fzf --height 40% --border double)"

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

# Fedora updated
alias spu="sudo pacman -Syu"
alias syu="yay -Syu"


# For starship
eval "$(starship init zsh)"

# For rofi
export PATH=$HOME/.config/rofi/scripts:$PATH

# For Nvim
export EDITOR="nvim"
export VISUAL="nvim"
#export TERM="wezterm"

# To start tmux by default when terminal starts
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
   tmux attach -t main || tmux new -s main
fi

export PATH=$PATH:/home/sugam/.spicetify
