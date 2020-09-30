#!/bin/sh
ipaddress=$(wget http://ipecho.net/plain -O - -q ; echo)
sudo apt-get update -y 
sudo apt-get install xrdp -y
sudo apt-get install xfce4 -y
echo xfce4-session >~/.xsession
sudo apt-get install firefox -y
clear 
sudo service xrdp restart

echo
echo 'Kurulum Bilgileri'
echo '#################!! Kurulum tamamlandi.!!##########################'
echo "Sunucu adresi: $ipaddress"
echo 'Kullanıcı adı ve şifreniz SSH giriş bilgileriniz ile aynıdır.'
echo '###########################################'

exit
