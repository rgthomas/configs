export PATH=/usr/local/bin:$PATH:$HOME/development/bin
export PS1="%n@%m > "
export EDITOR=vim

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 0
zstyle ':completion:*' original true
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/Users/rthomas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
