# path stuff
# [[[[secrets are in secrets.zsh]]]]

_PATH="${HOME}/bin"
_PATH="${_PATH}:${GOBIN}"
_PATH="${_PATH}:/usr/local/bin"
_PATH="${_PATH}:/usr/bin"
_PATH="${_PATH}:/bin"
_PATH="${_PATH}:/usr/local/sbin"
_PATH="${_PATH}:/usr/sbin"
_PATH="${_PATH}:/sbin"

# aws
_PATH="${_PATH}:/usr/local/opt/awscli/bin"

# llvm
_PATH="${_PATH}:/usr/local/opt/llvm/bin"

# zig
_PATH="${_PATH}:${HOME}/zig/bin"

# kafka
_PATH="${_PATH}:/usr/local/Cellar/kafka/${KAFKA_VERSION}/bin"

export PATH="${_PATH}"

export LIBRARY_PATH="/usr/local/opt/openssl/lib"