# PATH
export PATH="$HOME/.local/npm-global/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export ZSH="$HOME/.oh-my-zsh"

# BIRA
ZSH_THEME="bira"
export BIRA_PROMPT_PATH=long
export BIRA_SHOW_EXIT_STATUS=true

# OH MY ZSH
source $ZSH/oh-my-zsh.sh

# ZINIT
source /usr/share/zinit/zinit.zsh
zinit light aloxaf/fzf-tab
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

# Completion
autoload -Uz compinit
compinit -u
zinit cdreplay -q

# Zoxide
eval "$(zoxide init zsh)"

# Vi-mode
bindkey -v
