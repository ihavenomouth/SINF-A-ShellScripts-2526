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

# echo -n "Introduce tu nombre: "
# read nombre
# echo "Te llamas $nombre"



# ----------------------------------
# - Operaciones aritméticas básicas
# ----------------------------------
# edad=44
# echo "Tienes $edad años"

# edadCursoSiguiente=$(( $edad + 1 ))
# echo "Y el año que viene tendrás $edadCursoSiguiente"

# echo $(( 45 + 56 ))
# echo $(( 45 - 56 ))
# echo $(( 45 * 56 ))
# echo $(( 6 / 4 ))  # No indica decimales, el resultado es 1.5, pero muestra 1


# ----------------------------------
# - Recuperar el resultado de una orden
# ----------------------------------
# resultado=$( date )
# echo "La fecha es $resultado"

# Ejemplo:
# listadoAnterior=$( ls )
# mkdir borrar borrar2
# listadoActual=$( ls )

# echo "Estado inicial:"
# echo "$listadoAnterior"
# echo
# echo "Estado actual":
# echo "$listadoActual"



# ----------------------------------
# - Operaciones complejas
# ----------------------------------
# echo "(34 *45+23)/7" | bc -l

# resultado=$( echo "(34 *45+23)/7" | bc -l  )
# echo "El resultado es $resultado"



# ----------------------------------
# - Variables de entorno
# ----------------------------------

# Son variables que contienen información sobre el sistema operativo, 
# el usuario, etc. Es decir, sobre el entorno de ejecución

# echo $SHELL      # Muestra la shell que se está usando (el intérprete)
# /bin/bash

# echo $USER       # Muestra el login del usuario actual
# javier

# echo $UID        # Muestra el UID del usuario (el identificador)
# 1000

# echo $HOSTNAME   # Muestra el nombre del equipo
# j-roy

# echo $RANDOM     # Muestra un número aleatorio en la pantalla

