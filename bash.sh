#!/bin/bash

S0="\033[1;30m" B0="\033[1;40m"
S1="\033[1;31m" B1="\033[1;41m"
S2="\033[1;32m" B2="\033[1;42m"
S3="\033[1;33m" B3="\033[1;43m"
S4="\033[1;34m" B4="\033[1;44m"
S5="\033[1;35m" B5="\033[1;45m"
S6="\033[1;36m" B6="\033[1;46m"
S7="\033[1;37m" B7="\033[1;47m"
R0="\033[00m"   R1="\033[1;00m"


#--------------- main program ------------#
toilet -f mono12 -F metal zip
toilet -f mono12 -F metal crack
sleep 1
clear
printf "${S6}THISS TOOL IS DOES NOT PROMOTE OR ENCOURAGE ANY ILLEGAL ACTIVITIES , ALL CONTENCE PROVIDED BY THISS CHANNEL IS MEANT FOR EGUCATIONAL PURPOSE ONLY\n${R0}" | pv -qL 20

printf "${S1}PRESS (Y&N) 'Y' FOR CONTINUE 'N' FOR EXIT\n${R0}"
read yn

if [[ $yn == Y || $yn == n ]]; then
printf "${S7}YOU ENTERED $yn\n"
sleep 1
clear
elif [[ $yn == N  || $yn == n ]]; then
printf "${S7}YOU ENTERED $yn\n"
sleep
exit 1
fi

clear

echo

while true; do
printf "${S0}ENTER YOUR FILE PATH =====>${S0}" | pv -qL 20 
read file_path 
printf "${S0}ENTER YOUR PASSWD  PATH =====>${S0}" | pv -qL 20
read pass_path
if [[ ! -f $file_path || ! -f $pass_path ]]; then 
printf "${S1}YOU ENTIRED VALUE IS WRONG \n${S0}"
else
printf "${S4}SUSCESS ONLY USE FOR EGUCATIONAL PURPOSE${S0}"
break 
fi
done
pass_no=$(wc -w $pass_path | awk '{print $1}')
count=1

echo       "

+=============================================+
|................ Zipfile Crack...............|
+---------------------------------------------+
|                                             |
|                 lets started ......         |
|                                             |
+=============================================+
|................ Zipfile Crackin.............|
+---------------------------------------------+ " 
while read -r pass; do
printf "${S1}[*] ${S6}TRYING... ${R0}${S1}: ${S4}${count} ${S1}:: ${S4}${pass}\n"
unzip -o -P ${pass} ${file_path} > /dev/null 2>&1
    if [ $? == '0' ]; then
       printf "${S2}SUCESSFULLY CRACKED!!${R0} ${S4}password is : ${S1}${pass}${R0}\n"
   break
    elif [ ${count} == ${pass_no} ]; then
       echo
       printf "${S1}[!]FAILD TO CRACK. PLEASE TRY WITH ANOTHER PASSWORD LIST${R0}\n"
   fi
count=$(( count+1 ))
done < $pass_path


