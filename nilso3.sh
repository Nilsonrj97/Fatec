#!/bin/bash

clear
         
#Pegando o parametro Nome do Usuario e armazenando em $usu
echo -n "Escreva o nome do usuario: "
read usu
 
#fazendo o teste para ver se o usuario realmente existe
teste=$(grep -w ^$usu /etc/passwd | cut -d: -f 1)
#testando se o campo digitado foi nulo
if [ -z $usu ]; then
echo "ERRO!"
echo
echo "Parametro invalido!!!"
echo "Aguarde..."
sleep 3
/bin/bash ./nilso3.sh
#testando se o $teste é vazio
elif [ -z $teste ]; then
echo "O usuario nao existe"
echo "Aguarde..."
sleep 3
/bin/bash ./nilso3.sh
else
echo "O nome do usuario é $(cat /etc/passwd | grep $usu | cut -d , -f 1|cut -d , -f 1)"
echo
echo "O GID do $usu é $(id -gn $usu)"
echo
echo "O UID do $usu é $(id -u $usu)"
echo
echo "O último login do usuário foi em: $(last -1 $usu | cut -d" " -f1,4,5,6)"
echo
echo "Uso do /home é \n$(du -sh /home/$usu | cut -d" " -f1)"
fi