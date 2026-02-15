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

# SSH agent bootstrap (persistent across tmux shells)
export SSH_ENV="$HOME/.ssh/agent.env"

if [ -z "$SSH_AUTH_SOCK" ] && [ -f "$SSH_ENV" ]; then
  . "$SSH_ENV" >/dev/null
fi

if ! kill -0 "$SSH_AGENT_PID" 2>/dev/null; then
  ssh-agent -s >"$SSH_ENV"
  . "$SSH_ENV" >/dev/null
fi

if [[ $- == *i* ]] && [ -f "$HOME/.ssh/yoga-frontend-server" ]; then
  if ! ssh-add -l >/dev/null 2>&1; then
    ssh-add "$HOME/.ssh/yoga-frontend-server"
  fi
fi
