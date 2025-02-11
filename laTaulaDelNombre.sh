#!/bin/bash
#Aquest exercici l'ha proposat el JM a classe en veu alta.
echo "Taula del $1" > taula_del_$1.txt #Evita duplicar fitxers

for i in $(seq 1 10); do
    echo "$1 x $i = $(($1*$i))" >> taula_del_$1.txt
done