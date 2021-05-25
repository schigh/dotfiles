# git stuff
# [[[[secrets are in secrets.zsh]]]]

# wat
alias wat='git status'

# remove any stale branches locally (only works with master)
alias gitclean="git branch --merged ${1} | grep -v '^[ *]*${1}$' | xargs git branch -d"