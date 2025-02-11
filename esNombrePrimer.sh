#!/bin/bash
if [ $1 -le 1 ]; then
    echo "No es primer"
    exit 1
fi

if [ $1 -eq 2 ]; then
    echo "Es primer"
    exit 0
fi

for i in $(seq 2 $(($1/2+1))) # 2 a n/2+1. No fa falta comprovar per nombres més grans ja que a partir de n/2+1 els factors que s'obtenen són factors que es poden multiplicar per factors ja comprovats
do
    if [ $(($1 % $i)) -eq 0 ]; then
        echo "No es primer"
        exit 1
    fi
done

echo "Es primer"
exit 0