#!/bin/bash

REP="/home/runner/${REPL_SLUG}"
mkdir -p ${REP}/.bin
mkdir -p ${REP}/.include

# replit files
REMOTE="https://raw.githubusercontent.com/senapk/replit/master"

wget -nv ${REMOTE}/Readme.md  -O ${REP}/Readme.md
wget -nv ${REMOTE}/replit.nix -O ${REP}/replit.nix
wget -nv ${REMOTE}/replit     -O ${REP}/.replit
wget -nv ${REMOTE}/update.sh  -O ${REP}/.bin/update.sh
ln -sf ${REP}/.bin/update.sh ${REP}/.bin/update
chmod +x ${REP}/.bin/update.sh

# baixando tk
TKREMOTE="https://raw.githubusercontent.com/senapk/tk/master"
tk=${REP}/.bin/tk.py
wget -nv {TKREMOTE}/tk.py -O $tk
chmod +x $tk
ln -sf $tk ${REP}/.bin/tk

# baixando aux
aux=${REP}/.include/aux.hpp
wget -nv https://raw.githubusercontent.com/senapk/cppaux/master/aux.hpp -O $aux



