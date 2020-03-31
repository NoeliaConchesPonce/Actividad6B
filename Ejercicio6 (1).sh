read -p "Introduce el nombre del directorio: " direc

i=0
cd $direc

cant=$(ls *.txt | wc -l)

read -p "Vas a borrar $cant directorios, estas seguro Y/N: " res

while [ $res == 'Y' ] && [ $res == 'N' ] ; do 
echo "Valor introducido no correcto, vuelve a introducir"
read -p "Vas a borrar $cant directorios, estas seguro Y/N: " res
done

if [ $res == 'Y' ]; then
rm -r *.txt
echo "Se han borrado $cant directorios"
elif [ $res == 'N' ]; then
echo "No se ha borrado ningun archivo"
fi
