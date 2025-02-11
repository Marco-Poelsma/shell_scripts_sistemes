#!/bin/bash
dia=$(date |awk '{print $1}')

horas=$(date |awk '{print $4}' |awk -F: '{print $1}')
minuts=$(date |awk '{print $4}' |awk -F: '{print $2}')
segons=$(date |awk '{print $4}' |awk -F: '{print $3}')

echo "son les $hores hores, $minuts minuts i $segons segons."

case $dia in
    Mon)
        echo "Dilluns"
        ;;
    Tue)
        echo "Dimarts"
        ;;
    Wed)
        echo "Dimecres"
        ;;
    Thu)
        echo "Dijous"
        ;;
    Fri)
        echo "Divendres"
        ;;
    Sat)
        echo "Dissabte"
        ;;
    Sun)
        echo "Diumenge"
        ;;
esac
echo "Avui es $dia"