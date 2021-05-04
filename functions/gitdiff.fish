function gitdiff --description "Use bat to display git diff"
    git diff --name-only --diff-filter=d | xargs bat --diff
end
