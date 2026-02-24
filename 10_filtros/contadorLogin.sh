#!/bin/bash


## 1. Contador de logins

# **Objetivo:** Uso de `cut`, `sort` y redirecciones simples.
# Crea un script que extraiga los nombres de usuario (los login) del fichero `/etc/passwd`. Ten en cuenta que en este fichero los campos se delimitan por el carácter `:`.

# * El script debe obtener solo el primer campo (el nombre de usuario).
# * El resultado debe guardarse ordenado alfabéticamente en un fichero llamado `usuarios_ordenados.txt`.

# Modifica el script para que se comporte así:
#   * El script recibe exactamente un parámetro. Si no es así mostrará un mensaje de error y terminará.
#   * Si el primer parámetro es --help, mostrará la ayuda y terminará.
#   * Si el primer parámetro es "contar" mostrará el número de usuarios del sistema. Apóyate en `wc -l`.
#   * Si el primer parámetro es "uid" mostrará los UID de los usuarios ordenados numéricamente. El UID es el tercer parámetro en el fichero `/etc/passwd`.
#   * En caso contrario se tomará el primer parámetro como el nombre del fichero en el que se guardarán los logins del sistema ordenados.

if [ $# -ne 1 ];then
  echo "Error: debe indicar sólo un parámetro" 1>&2
  echo "Con --help se obtendrá la ayuda" 1>&2
  exit 1
fi

if [ "$1" == "--help" ];then
  echo "Devuelve información sobre los usuarios del sistema"
  echo "Uso: $0 --help | contar | uid | fichero"
  echo
  echo "Parámetros:"
  echo "   --help     : muestra esta ayuda"
  echo "   contar     : devuelve el número de usuarios del sistema"
  echo "   uid        : devuelve los UID de los usuarios ordenados"
  echo "   fichero    : crea un fichero con los login de los usuarios ordenados"
  exit 0
fi


if [ "$1" == "contar" ];then
  cat /etc/passwd | wc -l
  exit 0
fi

if [ "$1" == "uid" ];then
  cat /etc/passwd | cut -d ":" -f 3 | sort -n
  exit 0
fi

cat /etc/passwd | cut -d ":" -f 1 | sort > "$1"
