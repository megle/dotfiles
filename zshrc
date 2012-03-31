eval "$(rbenv init -)"            # initialize rbenv 

autoload -U colors && colors      # load colors
setopt prompt_subst               # turn on command substitution in the prompt
setopt menucomplete               # show completion on first TAB
autoload compinit && compinit     # load completions for Ruby, Git, etc.

export CDPATH=$HOME/Development   # put my dev dir into the cd search path
export PATH=~/.dotfiles/bin:$PATH # put some helper scripts in the PATH
typeset -U path cdpath fpath      # Remove duplicates

# set up my prompt
. ~/.dotfiles/zsh/git_prompt.zsh
# PROMPT='%{$fg[red]%} %(?,★,☆)  %{$reset_color%}'
PROMPT='%{$fg[red]%} %(?,>>,??) %{$reset_color%}'
RPROMPT='%{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info)'

# aliases
alias be='bundle exec'
alias ls='ls -G'
alias mvim='open -a MacVim'
