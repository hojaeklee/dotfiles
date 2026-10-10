alias vim=nvim
alias cat='bat --paging=never'
alias ssh='TERM=xterm-256color ssh'

# eza (ls replacement)
alias ls='eza --icons --group-directories-first'
alias ll='eza --long --header --icons --git --group-directories-first'
alias la='eza --long --header --icons --git --all --group-directories-first'
alias tree='eza --tree --icons --git-ignore'

# lf: cd to the last directory on quit (lfcd is in functions.zsh)
alias lf=lfcd
