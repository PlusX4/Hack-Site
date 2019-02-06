#!/bin/bash
pkg install unzip -y
pkg install python2 -y
pkg install python3 -y
pkg install pip -y
pkg install pip2 -y

cd Modules
unzip *.zip

cd $HOME/Hack-Site/Modules/
mkdir .sqlmap
cd .sqlmap
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

echo -e $r ""
read -p "Done [ Press Enter ] "
cd $HOME/Hack-Site
ls