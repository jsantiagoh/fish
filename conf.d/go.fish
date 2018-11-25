# Go Configuration
if test -d $HOME/go
    set -x GOPATH $HOME/go
    set PATH $GOPATH/bin $PATH
end
