#!/bin/bash

touch Filtro_Avanzado.txt

echo "IP Publica:" > Filtro_Avanzado.txt
curl -s ifconfig.me >> Filtro_Avanzado.txt

echo "" >> Filtro_Avanzado.txt
echo "Nombre del usuario actual:" >> Filtro_Avanzado.txt
whoami >> Filtro_Avanzado.txt

echo "" >> Filtro_Avanzado.txt
echo "Hash del nombre del usuario actual:" >> Filtro_Avanzado.txt
echo $(whoami) | sha256sum >> Filtro_Avanzado.txt


echo "" >> Filtro_Avanzado.txt
echo "URL del repositorio Git:" >> Filtro_Avanzado.txt
git remote get-url origin >> Filtro_Avanzado.txt


