source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/zsh_hooks.zsh
source ~/.zsh/zaw/zaw.zsh
source ~/.zsh/zplug.zsh

# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH=bin:script:~/.bin:$PATH

# Python
export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"

# PSQL
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export NVM_DIR="/Users/adamg/.nvm"

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# if [ $ITERM_SESSION_ID ]; then
#   export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
# fi

precmd() {
  if [[ -n "$TMUX" ]]; then
    tmux setenv "$(tmux display -p 'TMUX_PWD_#D')" "$PWD"
  fi
}

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/adamg/Sites/alexa-lunchlady/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/adamg/Sites/alexa-lunchlady/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/adamg/Sites/alexa-lunchlady/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/adamg/Sites/alexa-lunchlady/node_modules/tabtab/.completions/sls.zsh