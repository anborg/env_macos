## To Copy paste from mac_setenv.sh to to ~/.zshrc
#ENVIRONMENT MACOS - To copy paste these two lies to ~/.zshrc
export APPS_DIR="/Volumes/data01/apps"
export ENV_HOME="${APPS_DIR}/env_macos"
#source ${ENV_HOME}/bin/mac_setenv.sh

export PATH="$PATH":${ENV_HOME}/bin
#touch ${ENV_HOME}/bin/mac_setenv.sh #ENV_HOME is defined in .zhrc
chmod ugo+rx ${ENV_HOME}/bin/*

#alias core 
### Shortcut tools/commands -- revise sourcep later
alias sourcep="source ${ENV_HOME}/bin/mac_setenv.sh"
export PATH="/usr/local/sbin:$PATH"
#alias idea="/Volumes/data01/apps/idea.app/Contents/bin/restarter"


#TOOLS
alias python="python3"
# ANACONDA 
export PATH="/usr/local/anaconda3/bin:$PATH"

#flutter
export PATH="${APPS_DIR}/flutter/bin:$PATH"
#autoload -U +X bashcompinit && bashcompinit

#vault
export PATH="${APPS_DIR}/hashicorp/bin:$PATH"
#complete -o nospace -C /usr/local/bin/vault vault

#Dart webdev cache path
export PATH="$PATH":"$HOME/.pub-cache/bin"


#Rust setup 
export CARGO_HOME="/Volumes/data01/apps/rust-home/.cargo"
export RUSTUP_HOME="/Volumes/data01/apps/rust-home/.rustup"
export PATH=$PATH:${CARGO_HOME}/bin


#GLOALG SETUP
export GOPATH="/Volumes/data01/projects/projects_go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
echo "Go proj: ${GOPATH}"
# test -d "${GOPATH}" || mkdir "${GOPATH}"
# mkdir -p $GOPATH $GOPATH/src $GOPATH/pkg $GOPATH/bin


#ElasticSearch-Kibana-Metric
export ELASTICSEARCH_CONFIG_DIR=${ENV_HOME}/elastic_conf
export ELASTICSEARCH_BIN=/Volumes/data01/apps/elasticsearch-7.6.2/bin 
echo "elastic conf : ${ELASTICSEARCH_CONFIG_DIR}"
export ELASTICSEARCH_CONFIG_DIR=${ENV_HOME}/elastic_conf

export KIBANA_BIN=${APPS_DIR}/elasticsearch-kibana-7.6.2-darwin-x86_64/bin
export KIBANA_CONFIG_DIR=${ENV_HOME}/kibana_conf

export METRICBEAT_BIN=${APPS_DIR}/elasticsearch-metricbeat-7.6.2-darwin-x86_64
export METRICBEAT_CONFIG_DIR=${ENV_HOME}/metricbeat_conf

#Tomcat 
export TOMCAT_HOME=${APPS_DIR}/apache-tomcat-9.0.34

#Imagemagic - brew install imagemagic@6
export PATH=$PATH:/usr/local/opt/imagemagick@6/bin

#-------- Quick Actions --------
alias code="${APPS_DIR}/vscode.app/Contents/MacOS/Electron"

alias edit-env="code ${ENV_HOME}"
alias goto-env="cd ${ENV_HOME}"
