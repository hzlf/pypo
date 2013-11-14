#!/bin/bash
############################################
# just a wrapper to call the notifyer      #
# needed here to keep dirs/configs clean   #
# and maybe to set user-rights             #
############################################

# Absolute path to this script
SCRIPT=`readlink -f $0`
# Absolute path this script is in
SCRIPTPATH=`dirname $SCRIPT`

cd ${SCRIPTPATH}
cd "../"
timeout 45 env/bin/python liquidsoap_scripts/pyponotify.py "$@"