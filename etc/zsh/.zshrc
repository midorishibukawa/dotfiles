# set keybinds
bindkey -e
bindkey '^[[A'  history-substring-search-up
bindkey '^[[B'  history-substring-search-down
bindkey '^[[H'  beginning-of-line
bindkey '^[[F'  end-of-line
bindkey '^[[3~' delete-char

# load comp and colors
autoload -U compinit && compinit -d "${XDG_CACHE_HOME}"/zsh/zcompdump-"${ZSH_VERSION}"
autoload -U colors && colors

# config history file
HIST_STAMPS="dd/mm/yyyy"
export HISTSIZE=100000
export SAVEHIST=100000

# load completion cache
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}"/zsh/zcompcache

# load fasd and starship
eval "$(fasd --init auto)"
eval "$(starship init zsh)"