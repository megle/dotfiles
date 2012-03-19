# get the name of the branch we are on
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)${ref#refs/heads/}"
}

# checks if working tree is dirty
parse_git_dirty() {
  local SUBMODULE_SYNTAX=''
  if [[ $POST_1_7_2_GIT -gt 0 ]]; then
        SUBMODULE_SYNTAX="--ignore-submodules=dirty"
  fi
  if [[ -n $(git status -s ${SUBMODULE_SYNTAX}  2> /dev/null) ]]; then
    echo "%{$fg[red]%}"
  else
    echo "%{$fg[blue]%}"
  fi
}
