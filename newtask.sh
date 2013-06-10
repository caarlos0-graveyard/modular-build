#!/bin/bash
source $(dirname $0)/base.sh

# not-so-pretty little hack for TAB char inside heredocs
TAB="$(printf '\t')"

header "Creating a new task..."

# prompts for new script name (with hack to do it in the same line)
printf 'Please inform the new task name: '
read -r name

# create it and fix permissions
cp ./scripts/{example,$name}.sh
chmod +x ./scripts/$name.sh

# append content to Makefile
cat <<EOT >> Makefile

# call ${name}
${name}:
${TAB}\$(call script,${name})
EOT

# done
section_done "${name} task created."
footer
