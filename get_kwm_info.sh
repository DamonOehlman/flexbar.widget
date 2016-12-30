#!/usr/bin/env bash

KWMC="/usr/local/bin/kwmc"

main() {
  echo "$(get_workspace_details)|$(get_window_details)"
}

get_workspace_details() {
  echo "$(${KWMC} query space active name)"
}

get_window_details() {
  echo "$(${KWMC} query window focused name)"
}

main "$@"
