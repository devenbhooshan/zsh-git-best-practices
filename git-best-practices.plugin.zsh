# ZSH Git Prompt Plugin from:
# https://github.com/olivierverdier/zsh-git-prompt
__GIT_BEST_PRACTICES_DIR="${0:A:h}"


git_warn() {
  if [ $GIT_CHANGED -ge 0 ]; then
    echo "tum chutyiye ho "
  fi

  if [ $GIT_CHANGED -le 0 ]; then
    echo "tum sahi ho "
  fi
}

function precmd_update_git_status() {
  local gitstatus="$__GIT_BEST_PRACTICES_DIR/gitstatus.py"
  _GIT_STATUS=$(python ${gitstatus} 2>/dev/null)
  __CURRENT_GIT_STATUS=("${(@s: :)_GIT_STATUS}")
  GIT_CHANGED=$__CURRENT_GIT_STATUS[6]
  GIT_UNTRACKED=$__CURRENT_GIT_STATUS[7]
  GIT_STAGED=$__CURRENT_GIT_STATUS[4]

}
autoload -U add-zsh-hook
add-zsh-hook precmd precmd_update_git_status
