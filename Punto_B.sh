#!/bin/bash
cd /

# Mostrar las particiones actuales
fdisk -l
DISCO="/dev/sdd"
echo

# Crear particiones de 1GB en el disco especificado
(
# Comenzar a crear particiones
echo n  # Nueva particion
echo p  # Particion primaria
echo 1  # Numero de la particion
echo    # Empezar desde el sector predeterminado
echo +1G  

echo n
echo p
echo 2
echo
echo +1G

echo n
echo p
echo 3
echo
echo +1G

echo n
echo p
echo 4
echo
echo +1G


echo n
echo p
echo 5
echo
echo +1G


echo n
echo p
echo 6
echo
echo +1G

echo n
echo p
echo 7
echo
echo +1G

echo n
echo p
echo 8
echo
echo +1G

echo n
echo p
echo 9
echo
echo +1G


echo n
echo e
echo 10
echo

# Crear una particion logica dentro de la extendida
echo n
echo l
echo
echo +1G


echo w 
) | sudo fdisk $DISCO

# Formatear las particiones creadas con ext4
echo "Formateando las particiones..."
sudo mkfs.ext4 "${DISCO}1"
sudo mkfs.ext4 "${DISCO}2"
sudo mkfs.ext4 "${DISCO}3"
sudo mkfs.ext4 "${DISCO}4"
sudo mkfs.ext4 "${DISCO}5"
sudo mkfs.ext4 "${DISCO}6"
sudo mkfs.ext4 "${DISCO}7"
sudo mkfs.ext4 "${DISCO}8"
sudo mkfs.ext4 "${DISCO}9"
sudo mkfs.ext4 "${DISCO}10"

# Montar las particiones en las carpetas correspondientes
echo "Montando las particiones..."
sudo mount "${DISCO}1" /Examenes_UTN/alumno_1/parcial_1
sudo mount "${DISCO}2" /Examenes_UTN/alumno_1/parcial_2
sudo mount "${DISCO}3" /Examenes_UTN/alumno_1/parcial_3
sudo mount "${DISCO}4" /Examenes_UTN/alumno_2/parcial_1
sudo mount "${DISCO}5" /Examenes_UTN/alumno_2/parcial_2
sudo mount "${DISCO}6" /Examenes_UTN/alumno_2/parcial_3
sudo mount "${DISCO}7" /Examenes_UTN/alumno_3/parcial_1
sudo mount "${DISCO}8" /Examenes_UTN/alumno_3/parcial_2
sudo mount "${DISCO}9" /Examenes_UTN/alumno_3/parcial_3
sudo mount "${DISCO}10" /Examenes_UTN/profesores

# Mostrar el estado de las particiones montadas
echo
df -h | grep /Examenes_UTN




