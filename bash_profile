export GEM_HOME="$HOME/.gems"
export PATH="$PATH:$GEM_HOME/bin"

if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

# git completion
GIT_COMPLETION='/usr/local/git/contrib/completion/git-completion.bash'
if [ -f $GIT_COMPLETION ]; then
  source $GIT_COMPLETION
  __git_complete g __git_main
fi

# Git tab completion
test -f ~/.bash/.git-completion.bash && . $_

# Show git info in prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

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
alias ll='ls -GFhl' # Same as above, but in long listing format
alias lh='ls -d .*' # Hidden files/directories only
alias npms='cat package.json | jq .scripts'
alias npmv='cat package.json | jq .version'
alias npmbin='$(npm bin)'
alias npml='npm list --depth=0'
alias duf='du -sh $(du -sb * | sort -n | cut -f2-)'

#export NVM_DIR="/Users/adamgruber/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$PATH"
