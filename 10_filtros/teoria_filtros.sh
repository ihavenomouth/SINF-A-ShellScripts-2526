#!/bin/bash

# -------------------------
# more & less
# -----------------------

# cat datos.txt | more # paginadores
# cat datos.txt | less


# -------------------------
# head & tail
# -----------------------
# cat datos.txt | head -n 5 # muestra las 5 primeras líneas
# cat datos.txt | tail -n 1 # muestra la última línea


# -------------------------
# Ordenar (orden sort)
# -----------------------

# cat datos.txt | sort    # alfabéticamente
# cat datos.txt | sort -n # numéricamente

# cat datos.txt | sort -k 2 # alfabéticamente por el segundo campo
# cat datos.txt | sort -n -k 3 -r # nuuméricamente por el tercer campo en orden inverso




# -------------------------
# cortar por columnas (orden cut)
# -----------------------
# -d " " caracter delimitador
# -f 1 campo o campos que queremos
# cat datos.txt | sort -nrk3 | head -n 1 | cut -d " " -f2,3

# cat /etc/passwd | cut -d ":" -f1,3

# Ejemplo: saber cuántos ficheros hay en el directorio actual

# i=0
# for item in $(ls -l | cut -c 1);do
#   if [ "$item" == "-" ];then
#     i=$(( $i + 1 ))
#   fi
# done

# echo "Nº de ficheros: $i"



# -------------------------
# traducir (orden tr)
# -----------------------
echo "Hola caracola" | tr "alc" "x.-" #Ho.x -xrx-o.x
echo "Hola     caracola" | tr -s " "  #Hola caracola

# -------------------------
# contar (orden wc)
# -----------------------
echo -n "Hola" | wc -c  # 4 caracteres
cat /etc/passwd | wc -l  # 200 usuarios (líneas)


# ----------------------------------------------------
# cortar las líneas que cumplan una expresión regular (orden grep)
# ----------------------------------------------------
cat /etc/passwd | grep "^javier:" | cut -d ":" -f6

#  ^ --> comienzo de la línea
#  $ --> final de la línea
#  . -- > cualquier caracter
#  * --> O ó N repeticiones de lo que tenga delante
#  ? --> O ó 1 repeticiones de lo que tenga delante
#  () --> agrupación
#  [] --> selección de uno de los caracteres que contenga
#  \. --> caracter de escape





