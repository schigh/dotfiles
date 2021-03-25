# aws stuff
# [[[[secrets are in secrets.zsh]]]]

# get ecr login
function ecrlogin {
    aws ecr get-login-password \
        --region us-east-1 \
        | docker login \
            --username AWS \
            --password-stdin "${AWS_ECR_DEFAULT_ARN}"
}