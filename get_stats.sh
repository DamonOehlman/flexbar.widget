#!/usr/bin/env bash

main() {
  echo "$(get_system_stats)|$(get_date_time)"
}

get_system_stats() {
  local battery
  local mem
  local cpu

  # retrieve system level stats
  battery="$(pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';')"
  mem="$(ps -A -o %mem | awk '{s+=$1} END {print s}')"
  cpu="$(ps -A -o %cpu | awk '{s+=$1} END { printf("%.2f",s/8); }')"

  echo "${cpu}|${mem}|${battery}";
}

get_date_time() {
  local current_date
  local current_time

  current_date="$(date +"%a %d %b")"
  current_time="$(date +"%H:%M")"

  echo "${current_date}|${current_time}"
}

main "$@"