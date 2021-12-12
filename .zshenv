# export ZSH_DEBUG=1
if [[ -v ZSH_DEBUG ]] echo 'Z env'



############################################################################
### ENV
############################################################################
if [[ -v ZSH_DEBUG ]] echo  'Loading .env'

export PIPENV_VENV_IN_PROJECT=true
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ZDOTDIR=$HOME
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PROMPT_COMMAND='history -a'
export VISUAL="/usr/bin/nano"
export EDITOR="$VISUAL"
export PIPENV_VERBOSITY=-1
export GOPATH="/Users/$USER/_workbench/go"




# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# Avoid issues with `gpg` as installed via Homebrew.
# https://stackoverflow.com/a/42265848/96656
export GPG_TTY=$(tty);


[[ -a ~/local-dotfiles/.env ]] && source ~/local-dotfiles/.env


############################################################################
### PATH
############################################################################
# source ~/.path
export PATH=~/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

[[ -a ~/local-dotfiles/.path ]] && source ~/local-dotfiles/.path
