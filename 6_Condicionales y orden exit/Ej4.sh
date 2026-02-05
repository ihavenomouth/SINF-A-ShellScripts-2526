#!/bin/bash

# Crea un shell script que compruebe que recibe un primer parámetro. 


# Si no recibe ningún parámetro mostrará la ayuda y terminará.
if [ $# -eq 0 ] ; then
  echo "Sube los cambios del repositorio actual a Github"
  echo
  echo "USO: $0 comentario"
  echo 
  echo "Parámetros:"
  echo "    comentario : El comentario con el que se creará el commit"
  echo
  exit 0
fi


# Si el primer parámetro es --help mostrará la ayuda y terminará.
if [ "$1" == "--help"  ];then
  echo "Sube los cambios del repositorio actual a Github"
  echo
  echo "USO: $0 comentario"
  echo 
  echo "Parámetros:"
  echo "    comentario : El comentario con el que se creará el commit"
  echo
  exit 0
fi


# En otro caso, tratará el primer parámetro como comentario y ejecutará lo siguiente:

git add . >/dev/null 2>/dev/null
if [ $? -ne 0 ];then
  echo "Se produjo un error al ejecutar: git add ." 1>&2
  exit 1
fi

git commit -m "$1" >/dev/null 2>/dev/null
if [ $? -ne 0 ];then
  echo "Se produjo un error al ejecutar: git commit" 1>&2
  exit 2
fi

git push >/dev/null 2>/dev/null
if [ $? -ne 0 ];then
  echo "Se produjo un error al ejecutar: git push" 1>&2
  exit 1
fi



echo "(˶ᵔ ᵕ ᵔ˶)"

# Haz que se compruebe en cada paso que todo terminó correctamente, en caso contrario mostrará un mensaje explicando qué orden ha fallado y terminará.

# Si todo ha ido bien mostrará un mensaje de despedida alegre: (˶ᵔ ᵕ ᵔ˶)