#!/bin/bash

# Fes un script que ens indiqui si la tecla que hem polsat és una lletra, un número o un altre caràcter
# Fes-ho amb un case
# Ex: Un rang de valors del 0 al 9 es pot avaluar amb [0-9]

repetir=1

while [ $repetir -eq 1 ]; do
    echo "Introdueix un caràcter:"
    read caracter

    case $caracter in
        [a-zA-Z])
            echo "És una lletra"
            ;;
        [0-9])
            echo "És un número"
            ;;
        *)
            echo "És un altre caràcter"
            ;;
    esac

    echo "Vols continuar? (1: Sí, 0: No)"
    read repetir
done