#!/bin/bash
source $(dirname $0)/base.sh

# abort on error
set -e

header "Doing something..."
# put your code here
section_done "Something subsection ok..."

c_echo "print something with color" --blue --bold --underline

footer
