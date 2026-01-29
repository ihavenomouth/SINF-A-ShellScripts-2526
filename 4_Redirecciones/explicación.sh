#!/bin/bash

# Las redirecciones permiten que la información que se muestra en pantalla
# sea redirigida a un fichero.

# ----------------------------
# Redirección simple
# ----------------------------

# Si el fichero no existe, lo crea 
# Si el fichero existe, lo sobreescribe

# echo "Hola caracola" > fecha.txt
# echo -n "Hoy es " > fecha.txt
# date > fecha.txt



# ----------------------------
# Redirección doble
# ----------------------------

# Si el fichero no existe, lo crea 
# Si el fichero existe, añade información al final

echo "Hola caracola" > fecha.txt
echo -n "Hoy es " >> fecha.txt
date >> fecha.txt
echo "-------------------" >> saludo.txt



