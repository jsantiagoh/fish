function brewup --description "Update and cleanup Homebrew"
    echo "Updating Brew"

    brew update 
    and brew upgrade 
    and brew cleanup 
    and brew cask cleanup
end
