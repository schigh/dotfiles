alias git="/opt/homebrew/bin/grc /opt/homebrew/bin/git"
alias python3="/opt/homebrew/bin/python3"
alias python="/opt/homebrew/bin/python3"
alias lls="/opt/homebrew/bin/grc ls -lAh"
alias zshrc="/opt/homebrew/bin/zed /Users/steve/.zshrc /Users/steve/dotfiles"
alias env="/usr/bin/env | /usr/bin/sort"
alias wat="/opt/homebrew/bin/git status --porcelain"
alias brwe="brew"
alias portainer='docker run -d -p 9001:9000 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer-ce:linux-arm64 && sleep 1 && open http://localhost:9001'
alias cat="/opt/homebrew/bin/bat"
alias cobra="/Users/steve/go/bin/cobra-cli"
alias tf="/opt/homebrew/bin/terraform"
alias tfmt="/opt/homebrew/bin/terraform fmt -recursive"
alias tg="/opt/homebrew/bin/terragrunt"
alias docker="/opt/homebrew/bin/grc /usr/local/bin/docker"
alias dprune="/usr/local/bin/docker system prune --all --volumes --force"

# specific to the api project
alias apirestart="docker-compose -f ./local-docker-compose.yml build api && docker-compose -f ./local-docker-compose.yml restart api"
