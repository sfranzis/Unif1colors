#!/bin/bash

############################################################################
# Config section - change and add your public key in system/advanced section
#
ACCESS_POINT=erdgeschoss
USER=admin
#
############################################################################

COLORS=(
  "255,0,0"
  "255,63,0"
  "255,127,0"
  "255,255,0"
  "127,255,0"
  "0,255,0"
  "0,255,127"
  "0,255,255"
  "0,127,255"
  "0,0,255"
  "127,0,255"
  "255,0,255"
  "255,0,127"
)

while :
do
  for color in "${COLORS[@]}"; do
    # cmd="echo ${color}; echo -n ${color} > /proc/ubnt_ledbar/custom_color"
    cmd="echo -n ${color} > /proc/ubnt_ledbar/custom_color"
    ssh ${USER}@${ACCESS_POINT} ${cmd}
    sleep 1
  done
done
