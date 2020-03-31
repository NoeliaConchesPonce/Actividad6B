for line in $(awk '{print $2}' precipitaciones.txt); do
total=$((total+line))

done

i=$(cat precipitaciones.txt | wc -l)

media=$((total/i))
echo "La media es $media"
