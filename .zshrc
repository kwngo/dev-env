# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/kareemkwong/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# # Load Antigen
source ~/.zsh/antigen.zsh
# Load Antigen configurations
antigen init .antigenrc

export GOPATH=$HOME/go

export PYENV_ROOT="$HOME/.pyenv"
PATH="/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"



alias gg='git grep'
alias gge='git grep -E'
alias gp='git pull'
alias ga='git add'
alias gau='git add --update'
alias gap='git add -p'
alias gaa='git add -A'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gd='git diff'
alias gdh='git diff HEAD'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(red)%h%C(r) —— %C(bold blue)%an%C(r): %C(white)%s%C(r) %C(dim white) %C(bold green)(%ar)%C(r) %C(bold yellow)%d%C(r)' --all"
# alias gl='git log'
alias gls='git log -S'
alias gs='git status'
alias gst='git stash'
alias g='git'
alias cdc='cd ~/code'
alias ls='ls -la'

