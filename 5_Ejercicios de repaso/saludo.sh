#!/bin/bash

# Crea un script llamado saludo.sh que reciba dos parámetros: un nombre y un rol (profesor, alumno, administrador, etc.).
# ./saludo.sh Javier profesor

# El script debe imprimir: "Hola [nombre], eres [rol]".
echo "Hola $1, eres $2"

# Debe mostrar cuántos argumentos ha recibido el script en total.
echo "Se han recibido $# parámetros"

# Debe imprimir un mensaje de despedida en una línea diferente.
echo "¡Hasta luego!"