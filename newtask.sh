#!/bin/bash
source $(dirname $0)/base.sh

header "Creating a new task..."

echo "Please inform the new task name:"
read name
cp ./scripts/{example,$name}.sh
chmod +x ./scripts/$name.sh

cat <<EOT >> Makefile

# call ${name}
${name}:
  \$(call script,${name})
EOT

section_done "${name} task created."

footer
