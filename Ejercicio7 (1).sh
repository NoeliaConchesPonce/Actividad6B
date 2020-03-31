read -p "Introduce el nombre del directorio: " direcotrio

if [ -d $(pwd)/$archivo/ ]; then
echo "Si, existe"
else
echo "No existe"
exit
fi

i=0
cd $directorio

cant=$(ls *.txt | wc -l)

rm -r *.txt
echo "Se han borrado $cant directorios"

