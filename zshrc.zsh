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
# git stuff
source "${DOTFILES_HOME}/git.zsh"
# misc
source "${DOTFILES_HOME}/misc.zsh"
# ghost cli
source "${DOTFILES_HOME}/ghost.zsh"
# java
source "${HOME}/.cargo/env"
# rust
source "${HOME}/java.zsh"

# source last
source "${DOTFILES_HOME}/alias.zsh"

# set last
_PATH="${HOME}/bin"
_PATH="${_PATH}:${HOME}/.local/bin"
_PATH="${_PATH}:${HOME}/sdk/go/bin"
_PATH="${_PATH}:${HOME}/go/bin"
_PATH="${_PATH}:${HOME}/.cargo/bin"
_PATH="${_PATH}:/usr/local/sbin"
_PATH="${_PATH}:/opt/homebrew/opt/postgresql@15/bin"
_PATH="${_PATH}:/opt/homebrew/opt/openjdk/bin"
export PATH="${_PATH}:${PATH}"
