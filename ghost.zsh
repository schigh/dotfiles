function apistop() {
    cd "${HOME}/projects/api";
    docker-compose -f local-docker-compose.yml -f local-docker-compose.override.yml stop;
    docker-compose -f local-docker-compose.yml -f local-docker-compose.override.yml rm -f;
    cd -;
}

function apireload() {
    cd "${HOME}/projects/api";
    docker-compose -f local-docker-compose.yml -f local-docker-compose.override.yml stop api;
    docker-compose -f local-docker-compose.yml -f local-docker-compose.override.yml build api;
    docker-compose -f local-docker-compose.yml -f local-docker-compose.override.yml up -d api;
    cd -;
}
