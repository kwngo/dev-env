if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Trigger ~/.bashrc commands
eval "$(pyenv init -)"
export GOPATH=$HOME/go
PATH="/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin"
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
alias gl='git log --decorate=full'
alias glp='git log --pretty=format:"%C(yellow) %h %Cgreen%ad%C(red)[%an]%C(cyan)%d %Creset%s" --graph --date=short'
alias gls='git log -S'
alias gs='git status'
alias gst='git stash'
alias g='git'
source /Users/kwngo/.pgvm/pgvm_env

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\[\033[36m\]\u\[\033[m\] at \[\033[32m\]\h in \[\033[33;1m\]\w\[\033[m\] on $git_branch \n$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

