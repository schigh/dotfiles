# go stuff
# [[[[secrets are in secrets.zsh]]]]

export GOPATH="${HOME}/go"
export GOBIN="${GOPATH}/bin"
export GO111MODULE="auto"
export GOPRIVATE="${GOPRIVATE_LOCAL}" # re-assigning here for visibility...original is in secrets file

# pretty test output (REQUIRES GRC)
alias gotest="/usr/local/bin/grc go test -race -v -cover ${1}"

