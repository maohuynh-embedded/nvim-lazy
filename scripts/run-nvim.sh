#!/usr/bin/env bash
set -euo pipefail

# Default NVIM appname path relative to project root
NVIM_APPNAME_DEFAULT=".nvim/lua/user"
: "${NVIM_APPNAME:=$NVIM_APPNAME_DEFAULT}"
export NVIM_APPNAME

usage(){
  cat <<'USAGE'
Usage: run-nvim.sh [--appname NAME] [-- nvim-args...]

Options:
  --appname NAME   Set NVIM_APPNAME explicitly (overrides env)
  -h, --help       Show this help

Any remaining args are forwarded to nvim.
USAGE
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ "${1:-}" == "--appname" ]]; then
  if [[ -z "${2:-}" ]]; then
    echo "Error: missing value for --appname" >&2
    exit 2
  fi
  NVIM_APPNAME="$2"
  export NVIM_APPNAME
  shift 2
fi

exec nvim "$@"
