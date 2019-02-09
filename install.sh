#!/bin/bash
pkg install unzip -y
pkg install python2 -y
pkg install python3 -y
pkg install pip -y
pkg install pip2 -y

cd Modules
unzip 1.zip
unzip 2.zip
unzip 3.zip
unzip 4.zip
rm -rif *zip

cd $HOME/Hack-Site/Modules/
mkdir .sqlmap
cd $HOME
cp -r sqlmap $HOME/Hack-Site/Modules/.sqlmap
cd $HOME/Hack-Site/Modules/.sqlmap
git clone https://github.com/sqlmapproject/sqlmap
cd sqlmap
chmod 777 *py

cd $HOME/Hack-Site/Modules/.nikto/program/
chmod 777 *pl

cd $HOME/Hack-Site/Modules/.angryFuzzer
pip2 install -r requirements.txt
pip2 install requests
chmod +x angryFuzzer.py

cd $HOME/Hack-Site/Modules/.IPGeoLocation
pip install -r requirements.txt 
chmod +x ipgeolocation.py

cd $HOME/Hack-Site/Modules/.hash
chmod +x hash.py

cd $HOME/Hack-Site/Modules/.admin-panel
chmod +x admin-panel.py


cd $HOME/Hack-Site/Modules/.sql
chmod +x *php


cd $HOME/Hack-Site/Modules/.gasmask
pip2 install -r requirements.txt

echo -e $r ""
read -p "Done [ Press Enter ] "
cd $HOME/Hack-Site
chmod +x *sh
ls