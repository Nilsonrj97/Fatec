# !/bin/bash

# INPUTAÇÂO ler dois numeros e printar o resultado
echo "Insira dois numeros : "
read a
read b

res=`echo $a + $b | bc`

echo "Resultado : $res"