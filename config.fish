set -x EDITOR (which nvim)
alias nv=$EDITOR
alias nvf="$EDITOR (fzf)"

#Fisherman: Changing the installation prefix
set -g fisher_path $HOME/.config/fisherman_path

set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path
set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2> /dev/null
end

# Fisherman: Bootstrap installation
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

if test -d $HOME/bin
    set PATH $HOME/bin $PATH
end

if test -e $HOME/.localrc
    source $HOME/.localrc
end
