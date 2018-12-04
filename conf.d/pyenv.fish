if test -d "$HOME/.pyenv"
    set -x PYENV_ROOT "$HOME/.pyenv"

    if test -d "$HOME/.pyenv/bin"
        set PATH $PYENV_ROOT/bin $PATH
    end

    status --is-interactive; and source (pyenv init -|psub)
    status --is-interactive; and source (pyenv virtualenv-init -|psub)
    # source /usr/local/opt/asdf/asdf.fish
end
