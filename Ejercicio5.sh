contadorwin=0
procesowin=0
contadorli=0
procesoli=0
proceso=0

for line in $(cat listado.txt | awk '{if ($2=="Windows" ) print $3}')
do
((contadorwin++))
procesowin=$((procesowin+line))

done

for line in $(cat listado.txt | awk '{if ($2=="Linux" )
print $3}')
do
((contadorli++))
procesoli=$((procesoli+line))

done
echo Windows $contadorwin  $procesowin 
echo Linux $contadorli  $procesoli
