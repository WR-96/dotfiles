export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git virtualenv pyenv ruby rvm bundler)

source $ZSH/oh-my-zsh.sh

# Pyenv config
eval "$(pyenv init -)"

# nvm config

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias lcat='lolcat'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias lf='ls -p | grep -v / '
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

# Python alias
alias python="python3"
alias pip="python3 -m pip"
