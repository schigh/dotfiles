# kubernetes stuff
# [[[[secrets are in secrets.zsh]]]]
# change clusters
function k8sctx() {
    CTX="$(kubectl config get-contexts -o name | grep ${1})"
    kubectl config use-context "${CTX}"
}