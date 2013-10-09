#!/bin/bash
# Buscar dentro del directorio /var/log/ los archivos que hayan sido 
# modificados entre ayer y anteayer
clear
find /var/log -type f -mtime -2
echo
