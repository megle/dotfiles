#init rbenv
eval "$(rbenv init -)"

# Colors
autoload -U colors
colors
setopt prompt_subst

# Show completion on first TAB
setopt menucomplete

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

PATH=~/.dotfiles/bin:$PATH

# Customize to your needs...
CDPATH='/Users/manuel/Development/'
alias be='bundle exec'
alias mvim='mvim --remote'

PROMPT='$(git-cwd-info)%{$fg[red]%} %(?,★,☆)  %{$reset_color%}'
RPROMPT='%{$fg[blue]%}%~%{$reset_color%}'

