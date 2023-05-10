# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
#
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ben/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Added by ghcup
[ -f "/home/ben/.ghcup/env" ] && source "/home/ben/.ghcup/env" # ghcup-env
# End of added by ghcup

# Set prompt
PS1="%F{green}[%0~]%f%F{red}%n%f%F{blue}%#%f "
RPS1="%F{yellow}[%T]%f"

source $HOME/.aliases
source $ZDOTDIR/.zshenv
