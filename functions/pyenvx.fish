function __search
    docker ps --format "table {{.Names}}" | tail -n +2
end

function dexec
    set -l instance (__search | fzf --header "Select the container to connect to")
    docker exec -ti $instance sh
end

