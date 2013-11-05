# OS-specific settings
if [[ -n $CSIDL_WINDOWS ]]
then
    echo "[zshrc] initializing for Windows..."
    export $PATH:.
    export EDITOR=gvim
else
    echo "[zshrc] initializing for OSX/Linux..."
    export PATH=/usr/local/bin:$PATH:$HOME/development/bin:.
    export EDITOR=mvim
    export GIT_EDITOR='mvim -f'
fi

# OS-independent settings
export PS1="%n@%m > "

setopt autocd autopushd pushdignoredups
bindkey -e

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
