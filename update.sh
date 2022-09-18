#!/bin/bash

REP = "/home/runner/${REPL_SLUG}"

# replit files
up=${REP}/.bin/update.sh
wget https://raw.githubusercontent.com/senapk/replit/master/update.sh -O $up

md=${REP}/Readme.md
wget https://raw.githubusercontent.com/senapk/replit/master/runner.md -O $md

nix=${REP}/replit.nix
wget https://raw.githubusercontent.com/senapk/replit/master/replit.nix -O $nix

cfg=${REP}/.replit
wget https://raw.githubusercontent.com/senapk/replit/master/replit -O $cfg

# baixando tk
tk=${REP}/.bin/tk.py
wget https://raw.githubusercontent.com/senapk/tk/master/tk.py -O $tk
chmod +x $tk

# baixando aux
aux=${REP}/.include/aux.hpp
wget https://raw.githubusercontent.com/senapk/cppaux/master/aux.hpp -O $aux



