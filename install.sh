#!/bin/bash
clear
pkg install python2 -y
clear
cd $HOME
git clone https://github.com/sqlmapproject/sqlmap
clear
cd sqlmap
chmod +x sqlmap*
echo ""
echo ""
echo ""
echo ""
read -p "Done [ Press Enter ] "
cd $HOME/H-Site
ls
