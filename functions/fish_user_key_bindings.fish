function fish_user_key_bindings
    bind -M insert \cs pet-select
    bind \cr '__fzf_reverse_isearch'
    bind -M insert \cr '__fzf_reverse_isearch'
end
