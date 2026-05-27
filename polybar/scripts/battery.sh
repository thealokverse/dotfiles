#!/bin/bash

BAT="/sys/class/power_supply/BAT1/capacity"
STATUS="/sys/class/power_supply/BAT1/status"

if [[ -f "$BAT" ]]; then
  PERC=$(cat "$BAT")
  STAT=$(cat "$STATUS")

  if [[ "$STAT" == "Charging" ]]; then
    echo "  $PERC%"
  else
    echo "  $PERC%"
  fi
fi

