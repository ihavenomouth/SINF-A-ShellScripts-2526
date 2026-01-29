#!/bin/bash

# Crea un shell script que haga lo siguiente:
# 1- Borrará la pantalla
# 2- Mostrará el mensaje "Fecha: " seguido de la fecha actual
#    en la misma línea
# 3- Mostrará un mensaje que salude al usuario cuyo nombre se
#    pasa como primer parámetro. Por ejemplo: Hola Javier


# 1- Borrará la pantalla
clear

# 2- Mostrará el mensaje "Fecha: " seguido de la fecha actual
echo -n "Fecha: "
date

# 3- Mostrará un mensaje que salude al usuario cuyo nombre se
#    pasa como primer parámetro. Por ejemplo: Hola, Javier
echo "Hola, $1"

