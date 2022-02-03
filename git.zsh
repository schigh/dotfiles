# git stuff
# [[[[secrets are in secrets.zsh]]]]

# wat
alias wat='git status --porcelain'

# remove any stale branches locally (only works with master)
alias gitclean="git branch --merged ${1} | grep -v '^[ *]*${1}$' | xargs git branch -d"

# show local branches sorted by age
function gitstale {
    for k in $(git branch -a|awk '{print $1}'); do 
        echo $(git show --pretty=format:"%Cgreen%ci %Cblue%cr %Cred%cn %Creset" $k|head -n 1)\\t$k;
    done | sort -r
}