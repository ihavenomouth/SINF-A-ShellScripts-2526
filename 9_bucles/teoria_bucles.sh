#!/bin/bash

#----------------------
# Bucles simples
#----------------------

# i=0
# while [ $i -lt 5 ];do
#   echo "Hola!"
#   i=$(( $i + 1 ))
# done


#------------------------
# Bucles patrón iterador
#------------------------

# for animal in loro gato perro zorro ballena caballo;do
#   echo "Eliminando el fichero $animal"
#   rm $animal
# done


# for archivo in $(ls *.sh);do
#   echo "Cambiando los permisos de $archivo"
#   chmod u+x $archivo
# done

#---------------------------------------
# Recorrer ficheros palabra por palabra
#---------------------------------------

# numPalabras=0
# for palabra in $(cat datos.txt);do
#   # echo $numPalabras: $palabra
#   numPalabras=$(( $numPalabras + 1))
# done
# echo "En el fichero hay $numPalabras palabras"

# for palabra in $(cat datos.txt);do
#   correcta=0 #0 = false
#   for p in $(cat diccionario.txt);do
#     if [ "$p" == "$palabra" ];then
#       correcta=1 # 1 = true
#     fi
#   done

#   if [ $correcta -eq 1 ];then
#     echo -n "$palabra "
#   else
#     echo -en "\033[31m$palabra\033[0m "
#     # echo -n "**$palabra**"
#   fi
# done



#---------------------------------------
# Recorrer ficheros palabra por palabra
#---------------------------------------

i=1

while read linea;do
  echo "línea $i: $linea"
  i=$(( $i + 1 ))
done < datos.txt

echo
echo "Total de líneas: $(($i - 1 ))"


