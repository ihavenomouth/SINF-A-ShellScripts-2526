#!/bin/bash

# Crea un script llamado edad.sh que haga lo siguiente:
# * Salude al usuario actual del sistema usando la variable de entorno $USER.
# * Pida al usuario (mediante read) su año de nacimiento.
# * Calcule cuántos años cumplirá el usuario en el año actual (puedes usar el año actual como una variable fija o investigar el comando `date +%Y`).
# * Muestre el resultado con un mensaje claro.

echo "Hola, $USER"

echo -n "Introduce tu año de nacimiento: "
read annoNacimiento

annoActual=$( date +%Y )

annosACumplir=$(( $annoActual - $annoNacimiento ))

echo "Este año cumplirás $annosACumplir"
