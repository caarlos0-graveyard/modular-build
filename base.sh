#!/bin/bash
set -e
set -o pipefail

source $(dirname $0)/env.sh

export CHECK="\033[32m✔ Done\033[39m"
export HR="\033[37m--------------------------------------------------\033[39m"

# \n\n
function newline {
  echo -e "\n\n"
}

# shows a horizontal line
function hr {
  echo -e "${HR}"
}

# show a header with newlines, blue echo and hr
function header {
  c_echo "-----> $@" --blue --bold
}

# section done function
function section_done {
  echo -e "$@ ${CHECK}" | prefixed
}

# footer function with hr and success
function footer {
  c_echo "Success!" --green --bold | prefixed
  hr
  newline
}

# print with colors bold and underline
# usage:
# c_echo "Text" --color --bold --underline
function c_echo {
  # reset formatting
  RESET='\e[0m'
  TEXT=$1
  while [ "$2" != "" ]; do
    PARAM=`echo $2 | awk -F= '{print $1}'`
    VALUE=`echo $2 | awk -F= '{print $2}'`

    case $PARAM in
      --black)
        color='\033[30m'
        ;;
      --red)
        color='\033[31m'
        ;;
      --green)
        color='\033[32m'
        ;;
      --yellow)
        color='\033[33m'
        ;;
      --blue)
        color='\033[34m'
        ;;
      --magenta)
        color='\033[35m'
        ;;
      --cyan)
        color='\033[36m'
        ;;
      --white)
        color='\033[37m'
        ;;

      --bold)
        style=$style'\033[1m'
        ;;
      --underline)
        style=$style'\033[4m'
        ;;
      *)
        echo "ERROR: unknown parameter \"$PARAM\""
        exit 1
        ;;
    esac
    shift
  done
  echo -e "${style}${color}${TEXT}${RESET}"
}

# assert that some command exists; exit if not
function assert_command {
  cmd="$1"
  command -v $cmd >/dev/null 2>&1 || {
    c_echo "$cmd: Command required but not found. Aborting." --red >&2;
    exit 1;
  }
  echo "$cmd: $(command -v $cmd)";
}

# assert if an array of commands exists.
function assert_commands {
  commands="$@"
  for cmd in $commands; do
    assert_command $cmd
  done
}

# kinda tab
function prefixed {
  sed -e "s/^/       /"
}

# of course, you can add more functions here!
