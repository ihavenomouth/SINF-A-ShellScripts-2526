#!/bin/bash

# Crea un script que haga lo siguiente:
# - Debe recibir exactamente un parámetro
# - Si no recibe parámetros, se mostrará la ayuda y terminará
# - Si recibe más de un parámetro, se mostrará la ayuda y terminará
# - Si el primer parámetro es --help, se mostrará la ayuda
# - Si el primer parámetro es cal, se mostrará el calendario
# - Si el primer parámetro es dia, se mostrará la fecha
# - En caso contrario, se mostrará la ayuda y terminará

function ayuda(){
  echo "Script de utilidades relacionadas con la fecha"
  echo
  echo "Parámetros:"
  echo "  --help : muestra esta ayuda"
  echo "  cal    : muestra un calendario"
  echo "  dia    : muestra la fecha"
  echo
  exit 0
}


[ $# -eq 0 ] &&  ayuda
[ $# -gt 1 ] && ayuda
[ "$1" == "--help" ] && ayuda

# Si llego aquí es porque hay un parámetro y no es --help

[ "$1" == "cal" ] && cal && exit 0
[ "$1" == "dia" ] && date && exit 0
ayuda