#!/bin/bash
set -e

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

# blue echo
function becho {
  echo -e "\033[36m$@\033[39m"
}

# show a header with newlines, blue echo and hr
function header {
  becho $@
  hr
}

# section done function
function section_done {
  echo -e "$@ ${CHECK}"
}

# footer function with hr and success
function footer {
  hr
  becho "Success!"
  newline
}
