set -U EDITOR /usr/local/bin/nvim
alias nv=$EDITOR

set -U fish_path ~/.config/fish/.fisherman

set fish_function_path $fish_path/functions $fish_function_path
set fish_complete_path $fish_path/completions $fish_complete_path

for file in $fish_path/conf.d/*.fish
  builtin source $file 2> /dev/null
end

if not test -f ~/.config/fish/functions/fisher.fish
  curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
  fisher
end

source $HOME/.localrc
