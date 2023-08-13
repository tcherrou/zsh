#!bin/sh
# export PATH=$PATH:export PATH=/home/taoufik/.local/bin:$PATH
# export PATH="$PATH:/home/taoufik/.local/share/cs/bin"

export PATH="$PATH:/home/taoufik/.config/lein"
# path+=('/usr/local/go/bin')
# path+=('/var/lib/neo4j/bin')
# path+=('/home/taoufik/.cargo/bin')
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef
zle_highlight=('paste:none')

unsetopt BEEP


autoload -Uz compinit

zstyle ':completion:*' menu select

zmodload zsh/complist

_comp_options+=(globdots)

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

autoload -Uz colors && colors


source "$ZDOTDIR/zsh-functions"

zsh_add_file "zsh-prompt"
zsh_add_file "zsh-aliases"



zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"













[ -f "/home/taoufik/.ghcup/env" ] && source "/home/taoufik/.ghcup/env" # ghcup-env
alias luamake=/home/taoufik/.config/lsps/lua-language-server/3rd/luamake/luamake
