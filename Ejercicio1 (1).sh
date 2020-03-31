read -p "Introduce el numero de subdirectorios: " sub

for line in $(cat nombres.txt); do

i=1
nom=$line
mkdir $nom
cd $nom
while [ $i -le $sub ]; do
mkdir personal$i;
((i++))
done
cd ..
done
