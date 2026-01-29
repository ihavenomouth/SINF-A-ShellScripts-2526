#!/bin/bash

### Variables


# ----------------------------------
# - Creación
# ----------------------------------

# Las varaibles en shell script no se declaran, se crean dinámicamente
# en el mismo momento en el que se le asigna un valor

# edad=44 # se crean la variable edad con valor 44

# echo "Tienes $edad años"

# nombre = "Javier Mancera"  # Esto falla por los espacios. Bash interpreta
                             # que nombre es la orden que se quiere ejecutar 
                             #segundo 


# Se recupera el valor de una variable usando el $, pero se asigna el valor
# sin él
# nombre="Javier Mancera"
# echo "Hola, $nombre. Tienes $edad años"

# - Modificación de un valor (fíjate que se puede cambiar el tipo)
# nombre="Javier"
# echo "Prefieres que te llame simplemente $nombre"

# edad="Zorro"  # permitido, pero no recomendable
# echo "Tu animal preferido es el $edad"

# Las variables son locales al script. No existen fuera de él.


# ----------------------------------
# - Pedir datos al usuario
# ----------------------------------

# Esto es lo que hemos estado haciendo:
# echo "Tienes $1 años y te llamas $2"
# ./explicación_de_variables.sh 44 "Javier Mancera"

echo -n "Introduce tu nombre: "
read nombre
echo "Te llamas $nombre"



# ----------------------------------
# - Operaciones aritméticas básicas
# ----------------------------------



# ----------------------------------
# - Operaciones complejas
# ----------------------------------



# ----------------------------------
# - Recuperar el resultado de una operación
# ----------------------------------

