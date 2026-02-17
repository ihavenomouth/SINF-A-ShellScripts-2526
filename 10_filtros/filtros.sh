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
# Ordenar
# -----------------------

# cat datos.txt | sort    # alfabéticamente
# cat datos.txt | sort -n # numéricamente

# cat datos.txt | sort -k 2 # alfabéticamente por el segundo campo
# cat datos.txt | sort -n -k 3 -r # nuuméricamente por el tercer campo en orden inverso




# -------------------------
# cortar por columnas
# -----------------------
# -d " " caracter delimitador
# -f 1 campo o campos que queremos
# cat datos.txt | sort -nrk3 | head -n 1 | cut -d " " -f2,3

# cat /etc/passwd | cut -d ":" -f1,3

# Ejemplo: saber cuántos ficheros hay en el directorio actual

i=0
for item in $(ls -l | cut -c 1);do
  if [ "$item" == "-" ];then
    i=$(( $i + 1 ))
  fi
done

echo "Nº de ficheros: $i"



# -------------------------
# traducir
# -----------------------
echo "Hola caracola" | tr "alc" "x.-" #Ho.x -xrx-o.x
echo "Hola     caracola" | tr -s " "  #Hola caracola

# ----------------------------------------------------
# cortar las líneas que cumplan una expresión regular
# ----------------------------------------------------


