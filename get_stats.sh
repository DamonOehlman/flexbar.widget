#!/usr/bin/env bash

main() {
  local battery
  local mem

  battery=$(pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';')

  mem=$(ps -A -o %mem | awk '{s+=$1} END {print s}')

  echo "${battery}|${mem}";
}

main "$@"