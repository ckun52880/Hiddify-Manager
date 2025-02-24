#!/bin/bash

mkdir /hiddify-data/ssl/
rm -rf /opt/hiddify-manager/log/*.lock
cd $(dirname -- "$0")
DO_NOT_INSTALL=true ./install.sh install-docker --no-gui $@
./status.sh --no-gui

echo Hiddify is started!!!! in 5 seconds you will see the system logs
sleep 5
tail -f /opt/hiddify-manager/log/system/*