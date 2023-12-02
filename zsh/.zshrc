if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="$HOME/.local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# For emacs
export PATH="$HOME/.emacs.d/bin:$PATH"


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# FOR ZOXIDE
eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# A L I A S
alias em="emacsclient -c -a 'emacs'"
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

# Notes
alias notes="cd ~/Documents/Notes/"
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
alias sdu="sudo dnf update"

# For naviagtion
alias pnp="z /home/sugamsharma/Programming/NLP/Practice/"
alias pns="z /home/sugamsharma/Programming/NLP/Sessions/"
alias pnc="z /home/sugamsharma/Programming/NLP/Class/"
alias pwc="z /home/sugamsharma/Programming/Webdev/Class/"

alias work="cd /home/sugam/Work/"
# ~/.zshrc
alias Ss="flameshot gui -p /home/sugamsharma/Pictures/Screenshots/"

# For starship
eval "$(starship init zsh)"

# For rofi
export PATH=$HOME/.config/rofi/scripts:$PATH

# For Nvim
export EDITOR="nvim"
export VISUAL="nvim"

#

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
# CATPUCCIN SYNTAX HIGHLIGHTING
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
# FOR SYNTAX HIGHLIGHTING
source /home/sugam/zsh/Repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To start tmux by default when terminal starts
#
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
   tmux attach -t default || tmux new -s default
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
