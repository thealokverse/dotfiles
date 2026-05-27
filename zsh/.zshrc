# FASTFETCH (run once per login session)
if [[ ! -f /tmp/fastfetch-$USER ]]; then
    touch /tmp/fastfetch-$USER
    fastfetch
fi

# POWERLEVEL10K INSTANT PROMPT
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# ENVIRONMENT
export ZSH="$HOME/.oh-my-zsh"

export TERM="xterm-256color"
export COLORTERM="truecolor"

export PATH="$HOME/.local/bin:$PATH"


# THEME
ZSH_THEME="powerlevel10k/powerlevel10k"


# PLUGINS
plugins=(
  git
  z
)


# LOAD OH-MY-ZSH
source $ZSH/oh-my-zsh.sh


# AUTOSUGGESTIONS
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# SYNTAX HIGHLIGHTING
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# COLORS
autoload -U colors && colors
setopt PROMPT_SUBST


# ALIASES
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la --color=auto --group-directories-first'

alias cat='bat --theme=Catppuccin-mocha'
alias grep='grep --color=auto'

alias update='sudo dnf update'

alias vim='nvim'
alias code='code'
alias c='clear'


# POWERLEVEL10K CONFIG
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# OPENCODE
export PATH=/home/alok/.opencode/bin:$PATH
export PATH="$HOME/go/bin:$PATH"
export PATH=$HOME/.npm-global/bin:$PATH
