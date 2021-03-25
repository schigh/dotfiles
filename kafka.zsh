# kafka stuff
# [[[[secrets are in secrets.zsh]]]]

# run kafdrop against local docker instance
# UI is accessible on port 9001
# usage: kafdrop $KAFKA_HOSTS
function kafdrop {
    docker run -d --rm -p 9001:9000 \
        -e KAFKA_BROKERCONNECT=${1} \
        -e JVM_OPTS="-Xms32M -Xmx64M" \
        -e SERVER_SERVLET_CONTEXTPATH="/" \
        obsidiandynamics/kafdrop:latest
}