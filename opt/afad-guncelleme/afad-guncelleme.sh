#!/bin/bash

KIRMIZI_FG=`tput setaf 1`
YESIL_FG=`tput setaf 2`
SARI_FG=`tput setaf 3`
MAVI_FG=`tput setaf 4`
MOR_FG=`tput setaf 5`
LILA_FG=`tput setaf 6`
KIRMIZI_BG=`tput setab 1`
YESIL_BG=`tput setab 2`
SARI_BG=`tput setab 3`
MAVI_BG=`tput setab 4`
MOR_BG=`tput setab 5`
LILA_BG=`tput setab 6`
RESET=`tput sgr0`
BOLD=`tput bold`
CIZ=`tput sgr 0 1`
echo """                      ___       _______    ___       _______  
                     /   \     |   ____|  /   \     |       \ 
                    /  ^  \    |  |__    /  ^  \    |  .--.  |
                   /  /_\  \   |   __|  /  /_\  \   |  |  |  |
                  /  _____  \  |  |    /  _____  \  |  '--'  |
                 /__/     \__\ |__|   /__/     \__\ |_______/ 
                                                              

                                                        
########################################################################														
#              ${BOLD}${MAVI_FG}AFAD Guncelleme Uygulamasına Hoşgeldiniz!${RESET}                      #
########################################################################
################### ${LILA_FG}Pardus sürümünüz 19'dan 21'e yükseltilecektir.${RESET} ########################### 
-${LILA_FG}Adım 1${RESET} : Bu işlem yaklaşık 1 saat sürmektedir.(yavaş pclerde daha fazla)
-${LILA_FG}Adım 2${RESET} : Yükseltme sırasında PC üzerinde işlem yapmayınız, Kapatmayınız.
-${LILA_FG}Adım 2${RESET} : Yükseltme tamamlanınca PC yeniden başlayacaktır.
########################################################################
***${YESIL_FG} Yükseltme Tamamlandı ${RESET} *** Yazısını gördüğünüzde  PC yeniden başlayacaktır.
# Bu terminali yükseltme boyunca ${KIRMIZI_FG}${BOLD}'KAPATMAYIN'${RESET} yoksa işleminiz kesilir.
# Bu terminal üzerinden yükseltme ve kurulum adımlarını takip edebilirsiniz.
"""
pardus_version=$(less /etc/os-release |grep VERSION_ID | cut -d '"' -f2)
str1="21.0"
str2="19.5"
if [ "$pardus_version" == "$str2" ] ; then
#if [ "$str1" == "$str2" ]; then
echo "Pardus Sürümünüz $pardus_version . Yükseltme işlemine başlamak için Enter tuşuna basınız" 
read -p "Press any key to continue"
sudo /opt/afad-guncelleme/19to21.sh && echo ok1;
else 
echo "Pardus Sürümünüz $pardus_version . Pardus sürümünüz 19.5 olmadığı için yükseltme başlamıyor."
read -p "Çıkmak için  bir tuşa basın."
fi

