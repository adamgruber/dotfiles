if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

# Show git info in prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export GEM_HOME="$HOME/.gems"
export PATH="$PATH:$GEM_HOME/bin"


# Custom colors
DKGREY="\[\e[30;1m\]"
LTGREY="\[\e[37;1m\]"
ORANGE="\[\e[0m\]"

# Color ls command
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Prompt
export PS1="${DKGREY}\u: ${LTGREY}\w \[$txtcyn\]\${git_branch}\[$txtred\]\${git_dirty} ${LTGREY}\$ ${ORANGE}"

# Command aliases
alias g=git
alias ls='ls -GFh'
alias npms='cat package.json | jq .scripts'
alias npmbin='$(npm bin)'

# Shortcut for testing slack-slash
function sstest() {
  if [ -n "$1" ] && [ $1 = "debug" ]; then
    cd ~/Sites/slack-slash-dj/ && SLACK_SLASH_DJ_ROOMS_TOKEN=aTijFDZAaIQtgTti04HEeIBO SLACK_SLASH_JIRA_TOKEN=K7mKPPFVz6gEN2MIRsIxWBLe SLACK_SLASH_AURA_TOKEN=3ofbNlLqtqYE9Eqaucj0mFQ1 npm run debug
  else
    cd ~/Sites/slack-slash-dj/ && SLACK_SLASH_DJ_ROOMS_TOKEN=aTijFDZAaIQtgTti04HEeIBO SLACK_SLASH_JIRA_TOKEN=K7mKPPFVz6gEN2MIRsIxWBLe SLACK_SLASH_AURA_TOKEN=3ofbNlLqtqYE9Eqaucj0mFQ1 npm start
  fi
}
#export NVM_DIR="/Users/adamgruber/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$PATH"
