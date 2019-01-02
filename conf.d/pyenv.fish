if test -d "$HOME/.pyenv"
    set -x PYENV_ROOT "$HOME/.pyenv"

    if test -d "$PYENV_ROOT/bin"
        set PATH $PYENV_ROOT/bin $PATH
    end

    set -x PYENV_VERSION '3.7.1'

    status --is-interactive; and source (pyenv init -|psub)
    status --is-interactive; and source (pyenv virtualenv-init -|psub)
end
