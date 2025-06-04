clear && fastfetch | dotacat
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^?'      backward-delete-char          # bs         delete one char backward
bindkey '^[[3~'   delete-char                   # delete     delete one char forward
bindkey '^[[H'    beginning-of-line             # home       go to the beginning of line
bindkey '^[[F'    end-of-line                   # end        go to the end of line
bindkey '^[[1;5C' forward-word                  # ctrl+right go forward one word
bindkey '^[[1;5D' backward-word                 # ctrl+left  go backward one word
bindkey '^H'      backward-kill-word            # ctrl+bs    delete previous word
bindkey '^[[3;5~' kill-word                     # ctrl+del   delete next word
bindkey '^[[D'    backward-char                 # left       move cursor one char backward
bindkey '^[[C'    forward-char                  # right      move cursor one char forward
bindkey '^[[A'    up-line-or-beginning-search   # up         prev command in history
bindkey '^[[B'    down-line-or-beginning-search # down       next command in history
plugins=(sudo history-substring-search)
source $ZSH/oh-my-zsh.sh

#Some aliases
alias ls="lsd"
alias cat="bat"
alias fastfetch="fastfetch | dotacat"
alias spotx="bash <(curl -sSL https://spotx-official.github.io/run.sh) -i"

export PATH=$PATH:$HOME/.spicetify:$HOME/.emacs.d/bin:/home/alvaro/.local/bin
export _JAVA_AWT_WM_NONREPARENTING=1
export TERM="xterm-256color"
