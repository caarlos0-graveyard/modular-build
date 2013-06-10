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

# print with colors bold and underline
function c_echo {
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

	echo -e "$style$color"$TEXT
}