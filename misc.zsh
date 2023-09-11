# check to see who is using what port
function macnst (){
    netstat -Watnlv | grep LISTEN | awk '{"ps -o comm= -p " $9 | getline procname;colred="\033[01;31m";colclr="\033[0m"; print colred "proto: " colclr $1 colred " | addr.port: " colclr $4 colred " | pid: " colclr $9 colred " | name: " colclr procname;  }' | column -t -s "|"
}

# decode a JWT
function unjwt (){
    /opt/homebrew/bin/jq -R 'split(".") | .[1] | @base64d | fromjson' <<< "${1}"
}
