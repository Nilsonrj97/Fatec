#!/bin/bash
#Nome da Máquina, Data e Hora Atual, Desde quando a máquina está ativa, Versão do Kernel, Quantidade de CPUs/Cores, Modelo da CPU, Total de Memória RAM Disponível, Partições.
echo ""
echo "== Relatório de Informações da Máquina =="

echo ""
echo 'Dia:'
date

echo ""
echo 'Nome da maquina:'
uname -n

echo ""
echo 'Usuario:'
whoami

echo ""
echo 'Máquina Ativa desde:'
uptime

echo ""
echo 'Versão do Kernel:'
uname -r
echo ""

lscpu | grep 'CPU(s):'
echo ""

lscpu | grep 'Nome do modelo:'
echo ""

echo 'Partições:'
df -kh
echo ""

echo 'Total de memoria:'
MemTotal /proc/meminfo
echo ""

lscpu | grep 'Arquitetura:'
echo ""

lscpu | grep 'Modo(s) operacional da CPU:'
echo ""

echo 'Relatório de BUGS (nCPUs):' ; cat /proc/cpuinfo | grep 'bugs'
echo ""

echo 'Identidade do vendedor (nCPUs):'
cat /proc/cpuinfo | grep 'vendor_id'
echo ""

echo 'Fim do Script'
echo ""