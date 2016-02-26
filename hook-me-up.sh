#!/bin/sh
BUNDLES=bundles/
source ${BUNDLES}/includes/main.sh

echo "Calibrating tachion emmiter polarity, sit back..."
sh ${BUNDLES}package-managers.sh
sh ${BUNDLES}department-specifics.sh
sh ${BUNDLES}work-apps.sh
sh ${BUNDLES}ssh-keys.sh
sh ${BUNDLES}github.sh
echo "Calibration complete. Have a nice day."

#ToDo
#apache (hosts + vhosts)
#php7
#phpstorm
