# PATH
export PATH="$HOME/.local/npm-global/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export ZSH="$HOME/.oh-my-zsh"

# BIRA
ZSH_THEME="bira"
export BIRA_PROMPT_PATH=long
export BIRA_SHOW_EXIT_STATUS=true

# OH MY ZSH
plugins=(
  git
  fzf-tab
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Vi-mode
bindkey -v
