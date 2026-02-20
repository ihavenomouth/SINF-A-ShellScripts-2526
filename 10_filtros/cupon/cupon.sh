#!/bin/bash

[ $# -eq 0 ] && echo "Debe indicar un parámetro" 1>&2 && exit 1

[ -f "index.html" ] && rm index.html

# Descargamos la página web
wget https://www.eleconomista.es/sorteos/once/ -q -O index.html

# Extraemos el número
numeroPremiado=$( cat index.html | grep "=\"box-lotto-numbers" |tr ">" "\n" | grep "</li" | head -n 1 | cut -d "<" -f1 )

if [ "$numeroPremiado" == "$1" ];then
  echo "¡Enhorabuena! El número $1 ha sido premiado"
else
  echo "¡Mala suerte! El número $1 no ha sido premiado."
  echo "El número premiado es $numeroPremiado"
fi

