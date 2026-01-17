export PATH=./:/home/$USER/.local/bin:$PATH
export EDITOR=/usr/bin/nvim
export PROMPT_EOL_MARK=''

## Options
setopt extendedglob                                          # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                            # Case insensitive globbing
setopt rcexpandparam                                         # Array expension with parameters
setopt nocheckjobs                                           # Don't warn about running processes when exiting
setopt numericglobsort                                       # Sort filenames numerically when it makes sense
setopt nobeep                                                # No beep
setopt appendhistory                                         # Immediately append history instead of overwriting
setopt histignorealldups                                     # If a new command is a duplicate, remove the older one
setopt autocd                                                # if only directory path is entered, cd there.

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'    # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"      # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                           # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000
WORDCHARS=${WORDCHARS//\/[&.;]}                              # Don't consider certain characters part of the word

## Keybindings section
bindkey -e
bindkey '^[[7~' beginning-of-line                            # Home key
bindkey '^[[H' beginning-of-line                             # Home key
if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line             # [Home] - Go to beginning of line
fi
bindkey '^[[8~' end-of-line                                  # End key
bindkey '^[[F' end-of-line                                   # End key
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}" end-of-line                    # [End] - Go to end of line
fi
bindkey '^[[2~' overwrite-mode                               # Insert key
bindkey '^[[3~' delete-char                                  # Delete key
bindkey '^[[C'  forward-char                                 # Right key
bindkey '^[[D'  backward-char                                # Left key
bindkey '^[[5~' history-beginning-search-backward            # Page up key
bindkey '^[[6~' history-beginning-search-forward             # Page down key
	
# Navigate words with ctrl+arrow keys
bindkey '^[Oc' forward-word
bindkey '^[Od' backward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^H' backward-kill-word                              # delete previous word with ctrl+backspace
bindkey '^[[Z' undo                                          # Shift+tab undo last action

# bindkey -s '^l' '^ureset\n'                                  # bind ctrl+l to reset instead of clear

## Alias section 
alias c="clear && printf '\033[3J'"
alias v="vim"
alias d="ls -alh"
alias ls="ls -a --color=auto"
alias mv="mv -iv"
alias cp="cp -iv"
alias mb="make build"
alias y="yt-dlp"

# Curl
alias weather="curl https://wttr.in/"
alias crypto="curl rate.sx"
alias myip="curl ipinfo.io/ip"

# Functions
function mkcd() {
	mkdir -p -- "$1" &&
	cd -P -- "$1"
}

# Theming section  
autoload -U compinit colors zcalc
compinit -d
colors

# Use syntax highlighting
source /home/$USER/.local/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Use history substring search
source /home/$USER/.local/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# Use autosuggestion
source /home/$USER/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# bind UP and DOWN arrow keys to history substring search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up			
bindkey '^[[B' history-substring-search-down

# Style prompt
PS1='%(?.%F{green}λ.%F{red}λ %?) '
