#!/bin/bash

hora=$(date | awk '{print $5}' | awk -F: '{print $1}')
minuts=$(date | awk '{print $5}' | awk -F: '{print $2}')

horaText=$(cat numeros.txt | awk -F: -v var=$hora '$1==var {print $2}')
minutsText=$(cat numeros.txt | awk -F: -v var=$minuts '$1==var {print $2}')

echo "Son les $horaText hores i $minutsText minuts"