#!/bin/bash
clear
cd $HOME/H-Site/.h/
git clone https://github.com/sqlmapproject/sqlmap
clear
cd sqlmap
chmod +x sqlmap*
read -p "Done [ Press Enter ] "
cd $HOME/H-Site
ls