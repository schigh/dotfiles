# docker stuff
# [[[[secrets are in secrets.zsh]]]]

# bring up portainer
alias portainer='docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer'
#alias portainer='podman run -d -p 9000:9000'

# get shell (sh) on any running container.  If the container isnt 
# running sh, you're going to have a bad time
function dshell {
    if [ "$#" -lt 1 ]; then
        echo "usage: dshell <container name>"
        return
    fi
    _container=$(docker ps --format={{.ID}} --filter "name=${1}")
    _strlen=`echo -n $_container | wc -m | xargs`
    if [ $_strlen -lt 1 ]; then
        echo "container '${1}' not found"
        return
    fi
    docker exec -it $_container sh
}

# get shell (sh) on any running container.  If the container isnt 
# running sh, you're going to have a bad time
function pshell {
    if [ "$#" -lt 1 ]; then
        echo "usage: pshell <container name>"
        return
    fi
    _container=$(podman ps --format={{.ID}} --filter "name=${1}")
    _strlen=`echo -n $_container | wc -m | xargs`
    if [ $_strlen -lt 1 ]; then
        echo "container '${1}' not found"
        return
    fi
    podman exec -it $_container sh
}