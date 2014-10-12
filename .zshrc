HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Enable autocompletion
autoload -Uz compinit
compinit

# Get autocompletions for commands not in $PATH in a sudo
zstyle ':completion:*:sudo:*' command-path /bin /usr/bin /sbin /usr/sbin /usr/local/sbin /usr/local/bin

# Create a cache for completions (useful when completions take time)
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-patch ~/.zsh_cache

# Autocompletion selectable with arrow keys
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p %s

# Custom prompt
PROMPT="$(print '%{\e[1;35m%}%n%{\e[0m%}')@$(print '%{\e[1;34m%}%M%{\e[0m%}')%(!.#.$) "
RPROMPT="$(print '%{\e[0;32m%}%~%{\e[0m%}')"

# Emacs bindkey
bindkey -e

# Activate Home and End keys
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[1;5D" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[3~" delete-char

# Options
unsetopt beep hist_beep list_beep
unsetopt auto_remove_slash
setopt rm_star_silent
setopt appendhistory
setopt correct
setopt hist_no_store
setopt hist_ignore_dups
setopt null_glob

# Load aliases
ALIAS_PATH="/etc/profile.d/aliases.sh"
if [ -r $ALIAS_PATH ]; then
    . $ALIAS_PATH
fi

# Global aliases or with suffixes
alias -s txt=$EDITOR
alias -s java=$EDITOR
alias -g L='|less'
