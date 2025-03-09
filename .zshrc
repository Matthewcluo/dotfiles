# -------------------------
# MY INSANELY OP ZSH CONFIG
# -------------------------

# zsh workaround for starship's newline before prompt
# combined with `add_newline = false` in starship
# this precmd adds a new line every time
# effectively serving as `add_newline = true`
precmd() { precmd() { echo "" } }
alias clear="precmd() { precmd() { echo } } && clear"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# mkcd - (mkdir xxx && cd xxx)
function mkcd() {
    mkdir -p "$@" && cd "$@"
}

# yazi shell wrapper
# use 'y' to open yazi
# use 'q' to close yazi and automatically
# cd's into whatever dir yazi was in before exiting
# use 'Q' to close yazi without auto cd
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

############################################
#   ------------ ALIASES --------------
############################################

# ---- Clear ----
alias c="clear"

# ---- Neofetch ----
alias nf="neofetch"

# ---- Fastfetch ----
alias ff="fastfetch"

# ---- Window Size (for OCD) ----
alias winsize="tput col && tput lines"

# ---- Eza (better ls) -----
alias ls="eza --icons=always"
alias la="eza --icons=always -a"
alias ll="eza --icons=always -l"
alias lal="eza --icons=always -al"

# ---- Zoxide (smarter cd) ----
alias cd="z"
alias cdi="zi"
alias zw="zoxide query -ls"

# ---- navigating config files ----
alias cdwez="cd ~/.config/wezterm/"
alias cdnvim="cd ~/.config/nvim/"
alias cdconfig="cd ~/.config/"

# ---- LazyGit ----
alias lg="lazygit"

# ---- git helpers ----
alias gits="git status"
alias add="git add"
alias unadd="git restore --staged"
alias commit="git commit -m"
alias rebase="git rebase -i"
alias contin="git rebase --continue"
alias glop="git log --graph --pretty=format:'%C(yellow)%h -- %Cgreen[%an] %Cblue(%ar)%Cred%d %n %C(magenta)%s' --abbrev-commit"

# ---- Java Versions ----
alias j11="export JAVA_HOME=/opt/homebrew/Cellar/openjdk@11/11.0.26/libexec/openjdk.jdk/Contents/Home ; java -version"
alias j23="/opt/homebrew/Cellar/openjdk/23/libexec/openjdk.jdk/Contents/Home ; java -version"
alias j17="/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home ; java -version"
alias j8="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home ; java -version"

# ---- Fall 2024 ----
alias cd162="cd ~/Berkeley/fall_24/cs162/"
alias cd168="cd ~/Berkeley/fall_24/cs168/"
alias cd195="cd ~/Berkeley/fall_24/cs195/"
alias cdastro="cd ~/Berkeley/fall_24/astron_c10/"

# ---- Spring 2025 ----
alias cd164="cd ~/Berkeley/spring_25/cs164/"
alias cd186="cd ~/Berkeley/spring_25/cs186/"
alias cd189="cd ~/Berkeley/spring_25/cs189/"
alias cd135="cd ~/Berkeley/spring_25/ugba135/"

############################################
#   --------- END ALIASES -------------
############################################

# JAVA 11 for CS 186
export JAVA_HOME=/opt/homebrew/Cellar/openjdk@11/11.0.26/libexec/openjdk.jdk/Contents/Home

# pyenv stuff
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# For zoxide
eval "$(zoxide init zsh)"

# For starship
eval "$(starship init zsh)"

# ofc nvim btw
export EDITOR=nvim
