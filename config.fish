set -U EDITOR /usr/local/bin/nvim

set -U fish_path ~/.config/fish/.fisherman

for file in $fish_path/conf.d/*.fish
    builtin source $file ^ /dev/null
end

set fish_function_path $fish_path/functions $fish_function_path
set fish_complete_path $fish_path/completions $fish_complete_path

# set PATH "(python -m site --user-base)/bin"
