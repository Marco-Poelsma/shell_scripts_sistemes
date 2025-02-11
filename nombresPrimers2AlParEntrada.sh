#!/bin/bash

n=$1

# Function to check if a number is prime
is_prime() {
    local num=$1 # Variable local
    if [ "$num" -lt 2 ]; then
        return 1
    fi
    for ((i=2; i*i<=num; i++)); do
        if (( num % i == 0 )); then
            return 1
        fi
    done
    return 0
}

# Print prime numbers in the range [2, n]
for ((j=2; j<=n; j++)); do
    if is_prime $j; then
        echo $j
    fi
done