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

#export NVM_DIR="/Users/adamgruber/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$PATH"
