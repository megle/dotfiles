# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

autoload -U colors && colors      # load colors
setopt prompt_subst               # turn on command substitution in the prompt
setopt menucomplete               # show completion on first TAB
autoload compinit && compinit     # load completions for Ruby, Git, etc.

export CDPATH='~/Development/'    # put my dev dir into the cd search path

export PATH=~/.dotfiles/bin:$PATH # put some helper scripts in the PATH

# set up my prompt
. ~/.dotfiles/zsh/git_prompt.zsh
PROMPT='%{$fg[red]%} %(?,★,☆)  %{$reset_color%}'
RPROMPT='%{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info)'

# aliases
alias be='bundle exec'
alias ls='ls -G'
