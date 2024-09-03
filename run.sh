#!/bin/sh
wget https://dl.grafana.com/oss/release/grafana-11.2.0.linux-amd64.tar.gz
tar -zxvf grafana-11.2.0.linux-amd64.tar.gz

GRAFANA_DIR=grafana-v11.2.0
# copy the custiom.ini file to the conf directory
# check https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/
cp custom.ini $GRAFANA_DIR/conf
cd $GRAFANA_DIR
echo "Start Grafana"
./bin/grafana-server