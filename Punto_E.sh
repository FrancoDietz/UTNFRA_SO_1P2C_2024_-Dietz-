echo "Información de la RAM:" > Filtro_Basico.txt
grep "MemTotal" /proc/meminfo >> Filtro_Basico.txt
grep "MemFree" /proc/meminfo >> Filtro_Basico.txt
grep "MemAvailable" /proc/meminfo >> Filtro_Basico.txt


echo "" >> Filtro_Basico.txt
echo "Informacion del fabricante del chasis:" >> Filtro_Basico.txt
sudo dmidecode -t chassis >> Filtro_Basico.txt
