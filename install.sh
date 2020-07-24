#!/bin/zsh
#ENVIRONMENT MACOS - To copy paste these two lies to ~/.zshrc
cat <<MY_ENV > ~/.zshrc
export APPS_DIR="/Volumes/data01/apps"
export ENV_HOME=\${APPS_DIR}/env_macos
MY_ENV

echo "Installed Prem Env hooks into ~/.zshrc"
cat ~/.zshrc