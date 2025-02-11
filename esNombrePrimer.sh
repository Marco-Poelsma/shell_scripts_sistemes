if [ $1 -le 1 ]; then
    echo "No es primer"
    exit 1
fi

for i in $(seq 2 $(($1-1)))
do
    if [ $(($1 % $i)) -eq 0 ]; then
        echo "No es primer"
        exit 1
    fi
done

echo "Es primer"
exit 0