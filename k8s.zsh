# kubernetes stuff
# [[[[secrets are in secrets.zsh]]]]

function k8sshowc() {
    kubectl config get-contexts -o name
}

function k8susec() {
    kubectl config use-context "${1}"
}

function k8sctx() {
    CTX="$(kubectl config get-contexts -o name | grep ${1})"
    kubectl config use-context "${CTX}"
}