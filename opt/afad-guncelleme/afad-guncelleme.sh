#!/bin/sh
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
                                                              
                       ____    ____ .______   .__   __. 
                       \   \  /   / |   _  \  |  \ |  | 
                        \   \/   /  |  |_)  | |   \|  | 
                         \      /   |   ___/  |  .    | 
                          \    /    |  |      |  |\   | 
                           \__/     | _|      |__| \__| 
                                                        
########################################################################														
#              ${BOLD}${MAVI_FG}AFAD VPN Uygulamasına Hoşgeldiniz!${RESET}                      #
########################################################################
################### ${LILA_FG}Giriş yapabilmeniz için;${RESET} ########################### 
-${LILA_FG}Adım 1${RESET} : Kullanıcı Adınızı girecekesiniz
-${LILA_FG}Adım 2${RESET} : Kullanıcı Şifrenizi gireceksiniz
########################################################################
***${YESIL_FG} ESP tunnel connected${RESET} *** Yazısını gördüğünüzde VPN bağlantınız aktif oldu. 
# Bu terminali VPN bağlantınız boyunca ${KIRMIZI_FG}${BOLD}'KAPATMAYIN'${RESET} yoksa bağlantınız kesilir.
# VPN bağlantınızı ${SARI_FG}sonlandırmak${RESET} için bu terminali kapatın
"""
sudo /usr/sbin/openconnect --protocol=gp merkez.afad.gov.tr --authgroup=GW --servercert pin-sha256:g76Wf4Ae6Axba2I+7HgUfwb8StBuZBXozmgBInIwA4A= 
