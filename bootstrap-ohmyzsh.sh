#!/bin/bash

set -euo pipefail

if ! command -v zsh >/dev/null 2>&1; then
  echo "zsh is not installed." >&2
  exit 1
fi

if [ -d "${HOME}/.oh-my-zsh" ]; then
  echo "oh-my-zsh already installed at ${HOME}/.oh-my-zsh"
  exit 0
fi

if command -v curl >/dev/null 2>&1; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
elif command -v wget >/dev/null 2>&1; then
  sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "curl or wget is required to install oh-my-zsh." >&2
  exit 1
fi

target="${HOME}/dotfiles-server/zsh/.zshrc"
link="${HOME}/.zshrc"

if [ -L "${link}" ]; then
  if [ "$(readlink "${link}")" = "${target}" ]; then
    echo ".zshrc already linked correctly"
  else
    rm "${link}"
    ln -s "${target}" "${link}"
  fi
elif [ -e "${link}" ]; then
  rm "${link}"
  ln -s "${target}" "${link}"
else
  ln -s "${target}" "${link}"
fi
