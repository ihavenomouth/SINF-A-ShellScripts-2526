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

# echo "Hola caracola" > fecha.txt
# echo -n "Hoy es " >> fecha.txt
# date >> fecha.txt
# echo "-------------------" >> saludo.txt



# ----------------------------------------
# Salida estándar y salida de error
# ----------------------------------------

# Cuando un proceso se ejecuta se le asignan tres flujos: uno de entrada y dos de salida 
# (estándar y la de error)

#   ---in (0) ---->[ Proc ] ---out (1)--->
#                      |-----err (2)--> 

# ls *.txt *.lolololo 1>listado.txt 2>error.txt


# Podemos redirigir la salida estándar a la de error:
echo "Error: debe indicar al menos un parámetro" 1>&2 # el & es obligatorio

