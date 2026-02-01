#!/bin/bash

set -euo pipefail

apt update
apt install -y zsh tmux fzf ripgrep curl
