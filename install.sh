#!/bin/bash
clear
mkdir .H-Site
cd $Home
cp -r sqlmap $HOME/Hack-Site/.H-Site
cd $HOME/Hack-Site/.H-Site
git clone https://github.com/sqlmapproject/sqlmap
clear
cd sqlmap/
chmod +x sqlmap*
echo ""
echo ""
echo ""
echo ""
read -p "Done [ Press Enter ] "
cd $HOME/Hack-Site
ls
