#!/bin/bash

# Comprova que s'hagi introduït exactament 1 argument
if [ "$#" -ne 1 ]; then
    echo "Ús: $0 <fitxer_o_directori>"
    exit 1
fi

# Comprova que el fitxer/directori existeixi
if [ ! -e "$1" ]; then
    echo "Error: '$1' no existeix."
    exit 1
fi

# Busca el directori que conté el fitxer/directori
abs_path=$(realpath "$1")
containing_dir=$(dirname "$abs_path")

# Determina qui n'és el propietari
if stat --version >/dev/null 2>&1; then
    # GNU stat
    owner=$(stat -c '%U' "$1")
else
    # BSD stat (macOS)
    owner=$(stat -f '%Su' "$1")
fi

# Mira si és un fitxer o un directori
if [ -d "$1" ]; then
    echo -n "El directori $1"
elif [ -f "$1" ]; then
    echo -n "El fitxer $1"
else
    echo -n "L'ítem $1"
fi

echo " es troba al directori $containing_dir i pertany a $owner."