#!/bin/bash

# Crear grupos necesarios
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

PASSWORD="osboxes.org"

# Crear los usuarios y asignar el grupo correspondiente
sudo useradd -m -G p1c2_2024_gAlumno -p "$(openssl passwd -1 $PASSWORD)" p1c2_2024_A1
sudo useradd -m -G p1c2_2024_gAlumno -p "$(openssl passwd -1 $PASSWORD)" p1c2_2024_A2
sudo useradd -m -G p1c2_2024_gAlumno -p "$(openssl passwd -1 $PASSWORD)" p1c2_2024_A3
sudo useradd -m -G p1c2_2024_gProfesores -p "$(openssl passwd -1 $PASSWORD)" p1c2_2024_P1

# Mensaje final
echo "Todos los usuarios han sido creados y asignados a sus grupos correspondientes."

#asignas el propietario de cada y grupo
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores

# p1c2_2024_A1
sudo chmod 700 /Examenes-UTN/alumno_1  
# p1c2_2024_A2
sudo chmod 700 /Examenes-UTN/alumno_2  
# p1c2_2024_A3
sudo chmod 770 /Examenes-UTN/alumno_3
# p1c2_2024_P1
sudo chmod 750 /Examenes-UTN/profesores 

sudo touch /Examenes-UTN/alumno_1/validar.txt
sudo echo "p1c2_2024_A1" >> /Examenes-UTN/alumno_1/validar.txt

sudo -u p1c2_2024_A2 whoami >> /Examenes-UTN/alumno_2/validar.txt
sudo -u p1c2_2024_A3 whoami >> /Examenes-UTN/alumno_3/validar.txt
sudo -u p1c2_2024_P1 whoami >> /Examenes-UTN/profesores/validar.txt
