declare -a impar
declare -a par

for num in $(cat numeros.txt); do

let resto=$num%2

if [ $resto -eq 0 ]; then
par=("${par[@]}" "$num")
else
impar=("${impar[@]}" "$num")
fi

done

totalimpar=${#impar[@]}
totalpar=${#par[@]}

echo "${par[@]} -- total de numeros: $totalpar"
echo "${impar[@]} -- total de numeros: $totalimpar"
