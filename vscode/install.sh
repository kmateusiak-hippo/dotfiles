#!/usr/bin/env zsh

set -e

ln -sf "${DOTFILES_LOCATION}/vscode/settings.json" "${HOME}/Library/Application Support/Code/User/settings.json"

CODE_EXTENSIONS=(
  ms-vscode-remote.remote-containers
  dbaeumer.vscode-eslint
  esbenp.prettier-vscode
  statelyai.stately-vscode
  ChakrounAnas.turbo-console-log
  tamj0rd2.ts-quickfixes-extension
  github.copilot
  github.copilot-chat
  github.vscode-pull-request-github
)
for ext in "${CODE_EXTENSIONS[@]}"; do printf "installing %s\n" "${ext}" && code --install-extension "${ext}" --force; done