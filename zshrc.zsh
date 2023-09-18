export DOTFILES_HOME="${HOME}/dotfiles"
export EDITOR="/usr/bin/nano"

# source first
source "${DOTFILES_HOME}/secrets.zsh"

# go stuff
source "${DOTFILES_HOME}/go.zsh"
# google cloud stuff
source "${DOTFILES_HOME}/gcloud.zsh"
# node stuff
source "${DOTFILES_HOME}/node.zsh"
# misc
source "${DOTFILES_HOME}/misc.zsh"

# source last
source "${DOTFILES_HOME}/alias.zsh"

# set last
_PATH="${PATH}:${HOME}/bin"
_PATH="${_PATH}:${HOME}/sdk/go/bin"
_PATH="${_PATH}:${HOME}/go/bin"
_PATH="${_PATH}:/usr/local/sbin"
export PATH="${_PATH}"
