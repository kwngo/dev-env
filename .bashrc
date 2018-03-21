export NVM_DIR="/Users/kwngo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# source /Users/kwngo/.pyenv/shims/activate.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Run twolfson/sexy-bash-prompt
PROMPT_USER_COLOR="$(tput bold)$(tput setaf 9)" # BOLD RED
PROMPT_UNPUSHED_SYMBOL="↑"
. ~/.bash_prompt


