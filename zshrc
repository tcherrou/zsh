#!bin/sh

setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef
zle_highlight=('paste:none')

unsetopt BEEP


autoload -Uz compinit

zstyle ':completion:*' menu select

zmodload zsh complist

_comp_options+=(globdots)

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

autoload -Uz colors && colors


source "$ZDOTDIR/zsh-functions"

zsh_add_file "zsh-prompt"









