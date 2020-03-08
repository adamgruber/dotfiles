# Command aliases
alias g=git
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
alias lh='ls -d .*' # Hidden files/directories only
alias npms='cat package.json | jq .scripts'
alias npmv='cat package.json | jq .version'
alias npmbin='$(npm bin)'
alias npml='npm list --depth=0'
alias chg='awchangelog --overwrite'
alias npmrmi='rm -rf node_modules && npm i'
alias npmsetreg='npm config set registry https://npm.aweber.io && npm config get registry'
alias duf='du -sh $(du -s * | sort -n | cut -f2-)'

# Vagrant aliases
alias vssh='vagrant ssh'
alias vlb='vagrant up v-web-loadbalancer'
alias vds='vagrant up v-datasource'
alias vweb='vagrant up v-web-public --provision'
alias vcp='vagrant up v-web-controlpanel --provision'
alias vrlb='vagrant reload v-web-loadbalancer'
alias vup='cd ~/git/puppet-vagrant; vlb; vds; vcp; vweb;'
