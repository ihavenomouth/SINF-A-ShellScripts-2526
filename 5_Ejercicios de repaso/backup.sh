#!/bin/bash

## Ejercicio de copia de seguridad

# Crea una copia del script llamado backup.sh y modificala para la creación de una copia de seguridad:
# * El script recibirá una extensión como primer parámetro (por ejemplo sh)
# * Imprime un mensaje que indique la extensión que se va a usar, por ejemplo "Se va a realizar una copia de los ficheros sh" 
# * Muestra por pantalla el mensaje: "Procesando el archivo backup.tar.gz..." sin saltar de línea (usa la opción -n de echo).
# * Usa la orden tar para generar un fichero comprimido: `tar -czf backup.tar.gz *.$1`
# * Tras un par de segundos (usa la orden sleep 2), imprime " [OK]" en la misma línea.
# * Finalmente, usa comillas simples para mostrar "Se ha generado el fichero backup.tar.gz"

echo "Se va a realizar una copia de los ficheros $1"

echo -n "Procesando el archivo backup.tar.gz..."
tar -czf backup.tar.gz *.$1

sleep 2
echo " [OK]"


echo 'Se ha generado el fichero backup.tar.gz'
