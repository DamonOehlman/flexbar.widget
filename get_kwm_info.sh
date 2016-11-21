#!/usr/bin/env bash

main() {
  echo "$(get_workspace_details)|$(get_window_details)"
}

get_workspace_details() {
  echo "$(kwmc query space active name)"
}

get_window_details() {
  echo "$(kwmc query window focused name)"
}

main "$@"