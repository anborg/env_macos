
#/usr/local/bin/grafana-server
GRAFANA_BASE=$ENV_HOME/grafana_conf
GRAFANA_CONF=$GRAFANA_BASE/grafana.ini
GRAFANA_HOME=$GRAFANA_BASE/home

GRAFANA_LOG_DIR=/tmp/grafana-logs
GRAFANA_DATA_DIR=$GRAFANA_BASE/data
GRAFANA_PLUGINS_DIR=$GRAFANA_BASE/plugins


grafana-server --config=$GRAFANA_CONF --homepath $GRAFANA_HOME --packaging=brew cfg:default.paths.logs=$GRAFANA_LOG_DIR cfg:default.paths.data=$GRAFANA_DATA_DIR cfg:default.paths.plugins=GRAFANA_PLUGINS_DIR