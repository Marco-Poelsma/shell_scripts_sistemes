#!/bin/bash

# Definim tres adreces IP a les quals fer ping
ips=($1 $2 $3)
pids=()

# Iniciem els pings en background redirigint la sortida a /dev/null
for ip in "${ips[@]}"; do
    ping "$ip" > /dev/null &
    pids+=($!)  # Emmagatzemem el PID del procés
done

# Mostrem la llista amb el número, el PID i la pàgina (IP)
echo "Llista de pings en execució:"
for i in "${!pids[@]}"; do
    echo "$((i+1))) PID: ${pids[$i]} - IP: ${ips[$i]}"
done

# Demanem a l'usuari quin ping vol aturar
read -p "Introdueix el número del ping que vols aturar: " num

# Verifiquem que l'entrada sigui vàlida
if ! [[ "$num" =~ ^[0-9]+$ ]] || [ "$num" -lt 1 ] || [ "$num" -gt "${#pids[@]}" ]; then
    echo "Número invàlid."
    exit 1
fi

index=$((num - 1))
pid_to_kill=${pids[$index]}

# Aturem el procés amb el PID seleccionat
kill -9 "$pid_to_kill"
echo "Ping a ${ips[$index]} (PID: $pid_to_kill) aturat."
