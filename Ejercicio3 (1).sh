i=1
for line in $(awk '{print $2}' precipitaciones.txt); do
if [ $line -eq 0 ]; then

j=$i
while [ $i -gt 7 ]; do
let i=$i-7
echo "Empieza otra semana"
done

case $i in 
    1)
        echo "Lunes no llovio"
        ;;
    2)
        echo "Martes no llovio"
        ;;
    3)
        echo "Miercoles no llovio"
        ;;
    4)
        echo "Jueves no llovio"
        ;;
    5)
        echo "Viernes no llovio"
        ;;
    6)
        echo "Sabado no llovio"
        ;;
    7)
        echo "Domingo no llovio"
        ;;
esac
i=$j
((i++))
elif [ $line -gt 0 ]; then 
((i++))
fi
done
