#!/bin/bash
set -e

function becho {
  echo -e "\033[36m$@\033[39m"
}

becho "=============================="
becho " modular-build installer \n"
becho " > by caarlos0"
becho " https://github.com/caarlos0/modular-build "
becho "==============================\n\n"

# clone repo
becho "Downloading scripts..."
git clone https://github.com/caarlos0/modular-build.git scripts

# link Makefile
becho "\nLinking Makefile..."
ln -s scripts/Makefile .

becho "\nFixing permissions..."
chmod +x scripts/*.sh

becho "\n\n"
becho "=============================="
becho " modular-build installer \n"
becho " Installation successfully finished."
becho "=============================="
