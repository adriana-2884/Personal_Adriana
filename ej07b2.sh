#!/bin/bash
# Determinar que proces está consumiendo mas CPU
clear
echo
echo "El proceso que está consumiendo mas CPU, es: "
echo
echo "%CPU COMANDO"
echo "============"
ps aux | awk '{print $3, $11}' | sort -k1rn | head -n 1
#ps -e -o pcpu,state,args --sort pcpu | tail -n 1
echo
