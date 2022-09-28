#!/bin/bash

REP="/home/runner/${REPL_SLUG}"
mkdir -p ${REP}/.bin
mkdir -p ${REP}/.include

# replit files
up=${REP}/.bin/update.sh
wget https://raw.githubusercontent.com/senapk/replit/master/update.sh -O ${up}
ln -sf ${up} ${REP}/.bin/update
chmod +x ${up}

nix=${REP}/replit.nix
wget https://raw.githubusercontent.com/senapk/replit/master/replit.nix -O $nix

cfg=${REP}/.replit
wget https://raw.githubusercontent.com/senapk/replit/master/replit -O $cfg

# baixando tk
tk=${REP}/.bin/tk.py
wget https://raw.githubusercontent.com/senapk/tk/master/tk.py -O $tk
chmod +x $tk
ln -sf $tk ${REP}/.bin/tk

# baixando aux
aux=${REP}/.include/aux.hpp
wget https://raw.githubusercontent.com/senapk/cppaux/master/aux.hpp -O $aux



