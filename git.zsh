# git stuff
# [[[[secrets are in secrets.zsh]]]]

# wat
alias wat='git status'

# remove any stale branches locally (only works with master)
alias gitclean="git branch --merged master | grep -v '^[ *]*master$' | xargs git branch -d"

# remove any stale branches locally
alias gcmain="git branch --merged main | grep -v '^[ *]*main$' | xargs git branch -d"