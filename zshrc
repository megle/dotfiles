# Oh my ZSH Configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="megle"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

#init rbenv
eval "$(rbenv init -)"

# Customize to your needs...
CDPATH='/Users/manuel/Development/'
alias be='bundle exec'


