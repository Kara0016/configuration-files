# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Plugins
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# bun completions
[ -s "/home/kara/.bun/_bun" ] && source "/home/kara/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Volta
export VOLTA_HOME="$HOME/.volta"
export VOLTA_PATH="$VOLTA_HOME/bin"

# Zplug
source ~/.zplug/init.zsh
zplug "~/.zsh", from:local
zplug load --verbose

# Start starship prompt
eval "$(starship init zsh)"
