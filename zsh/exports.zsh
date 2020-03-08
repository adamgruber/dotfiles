# Currently this path is appendend to dynamically when picking a ruby version
export PATH=/opt/local/bin:/opt/local/sbin:node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:~/.local/bin:$PATH

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='vim'
#export PYTHONPATH=/usr/local/lib/python3.6/site-packages
# CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LC_COLLATE=C

export JIRA_URL='https://jira.aweber.io'
export JENKINS_URL='http://jenkins-webapp.svc.prd.csh/'

# Postgres
export PGHOST=yugg.colo.lair
export PGPORT=6000
export PGDATABASE=app