autoload -Uz compinit

_comp_files=($XDG_CACHE_HOME/zsh/zcompcache(Nm-20))
if (( $#_comp_files )); then
  compinit -i -C -d "$XDG_CACHE_HOME/zsh/zcompcache"
else
  compinit -i -d "$XDG_CACHE_HOME/zsh/zcompcache"
fi
unset _comp_files

zstyle ':completion:*' menu select _extensions _complete _approximate
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
[[ -z "$LS_COLORS" ]] || zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
