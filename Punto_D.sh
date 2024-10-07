#!/bin/bash

cd /

# Crea la estructura de directorios
sudo mkdir -p /Estructura_Asimetrica/correo /Estructura_Asimetrica/clientes

# Crea archivos en la carpeta correo
sudo touch /Estructura_Asimetrica/correo/carta_{1..100}

# Crea archivos en la carpeta clientes
sudo touch /Estructura_Asimetrica/clientes/carta_{1..100}

# Crea archivos en la carpeta correo para carteros
sudo touch /Estructura_Asimetrica/correo/cartero_{1..10}

tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
