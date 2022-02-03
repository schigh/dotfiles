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

function ecrloginp {
    aws ecr get-login-password \
        --region us-east-1 \
        | podman login \
            --username AWS \
            --password-stdin "${AWS_ECR_DEFAULT_ARN}"
}

alias getparam='aws ssm get-parameter --with-decryption --name'
alias getparamspath='aws ssm get-parameters-by-path --with-decryption --recursive --path'
alias deleteparam='aws ssm delete-parameter --name'