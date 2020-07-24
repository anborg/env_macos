
Execute this snippet in the mac


cat <<EOSCRIPT  >> ~/.zhrc
export APPS_DIR="/Volumes/data01/apps"
export ENV_HOME="${APPS_DIR}/env_macos"
source ${ENV_HOME}/bin/mac_setenv.sh

EOSCRIPT

source ~/.zshrc
