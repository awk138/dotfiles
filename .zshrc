# Starship(https://starship.rs/)
# auto start
eval "$(starship init zsh)"

# alias
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias yzi='yazi'
alias lg='lazygit'
alias cl='clear'
alias vim='nvim'

# misc
export EDITOR=hx

function ssh_colored() {
    local HOST="$1"

    local DEFAULT_BG_COLOR='#161821'
    local PROD_COLOR='#800000'
    local DEV_COLOR='#191970'

    local BG_COLOR=""

    if [[ "$HOST" =~ "prod" ]]; then
        BG_COLOR="$PROD_COLOR"
    elif [[ "$HOST" =~ "dev" ]]; then
        BG_COLOR="$DEV_COLOR"
    fi

    trap 'printf "\033]11;${DEFAULT_BG_COLOR}\033\\"; trap - EXIT' EXIT INT TERM HUP
    printf "\033]11;${BG_COLOR}\033\\"

    /usr/bin/ssh "$@"
}

alias ssh='ssh_colored'
