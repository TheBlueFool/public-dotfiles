# User configuration
if [[ -v ZSH_DEBUG ]] echo 'Z RC'

setopt AUTO_CD
setopt NO_CASE_GLOB

# ZSH History
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt EXTENDED_HISTORY
SAVEHIST=5000
HISTSIZE=2000
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

setopt CORRECT
setopt CORRECT_ALL

############################################################################
### ALIAS
############################################################################
# source ~/.alias
[[ -a ~/.alias ]] && source ~/.alias
[[ -a ~/local-dotfiles/.alias ]] && source ~/local-dotfiles/.alias

############################################################################
### COMPLETION
############################################################################
# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix


if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

eval "$(_PIPENV_COMPLETE=zsh_source pipenv)"

eval "$(pyenv init -)"

autoload -Uz compinit && compinit

############################################################################
### PROMPT
############################################################################
eval "$(starship init zsh)"
