# Wifi
alias wifi="nmtui"

# Git through tor
alias git="proxychains git"

# Go Path
export GOPATH="$HOME/.go"

# Editor
export EDITOR="nvim"
export VISUAL="nvim"

alias vi="nvim"
alias vim="nvim"

set -o vi

# Better command line environment
eval "$(starship init zsh)"

# Better cd
alias cd="z"
eval "$(zoxide init zsh)"

# Better ls
alias ls="eza --grid --no-time --no-user"

# Better cat
export BAT_THEME="gruvbox-dark"
alias cat="bat"

# Better grep
alias grep="rg"

# FZF fuzzy finding
export FZF_DEFAULT_OPTS="\
--color=fg:#ebdbb2,bg:#282828,hl:#b16286 \
--color=fg+:#fe8019,bg+:#282828,hl+:#d3869b \
--color=info:#504945,prompt:#cc241d,pointer:#cc241d \
--color=marker:#8ec07c,spinner:#cc241d,header:#fabd2f"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'

# Pacman
alias pc="sudo pacman --verbose --color=always"
#alias pc="sudo pacman --verbose --debug --color=always"

# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust
### End of Zinit's installer chunk

# Zinit plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

bindkey '^y' autosuggest-accept
