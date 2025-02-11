fact=1
for i in $(seq 1 $1)
do
    fact=$((fact * i))
done
echo $fact