if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Trigger ~/.bashrc commands
export GOPATH=$HOME/go
export PYENV_ROOT="$HOME/.pyenv"
PATH="/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin"
export PATH="$PYENV_ROOT/bin:$PATH"
. ~/.bashrc
source $(brew --prefix autoenv)/activate.sh
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
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative | emojify | less -r "
alias glp='git log --pretty=format:"%C(yellow) %h %Cgreen%ad%C(red)[%an]%C(cyan)%d %Creset%s" --graph --date=short'
alias gls='git log -S'
alias gs='git status'
alias gst='git stash'
alias g='git'
alias cdc='cd ~/code'
source /Users/kwngo/.pgvm/pgvm_env
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias ls='ls -GFh'
alias de='docker exec -it'
alias weather='curl wttr.in'
alias todo='todoist --color'
alias todot='todoist --color l --f "(overdue|today)"'
# Manpiulates PATH, so place at end of shell script
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

