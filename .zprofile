if [[ -v ZSH_DEBUG ]] echo 'Z profile'
if [[ -v ZSH_DEBUG ]] echo  'Loading .alias'
# New shell aliases
alias gcl='gcloud'
alias tf='terraform'
alias ll='ls -gohcpta'

alias pr='git pull-request --browse --draft'
alias k='kubectl'

alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'

alias showpath='echo "${PATH//:/$'"'\n'}\""
alias gitroot="cd \$(git rev-parse --show-toplevel)"
alias go_="cd ~/_workbench"

