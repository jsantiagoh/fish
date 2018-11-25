function __search
    pyenv versions --bare --skip-aliases | grep "envs"
end

function pyenvx
    set -l instance (__search | fzf --header "Select the virtualenv you want" | xargs)
    pyenv activate "$instance"
end

