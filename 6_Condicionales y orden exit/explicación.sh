#!/bin/bash


# --------------------------
# Orden exit
# --------------------------

# La orden exit sirve para salir prematuramente de un script
# Si exit no tiene ningún parámetro, es como si saliera con un exit 0


# exit 
# echo "Hola caracola" # este echo no se vería

# Los parámetros de exit definen cómo terminó el script:
# Si el script terminó correctamente, se usará exit 0
# Si el script no terminó correctamente, se usará exit número, ese número indica el código de error

# Si el script termina porque no hay más instrucciones que ejecutar, termina en realidad con un 
# código de error 0, es decir correctamente.

# Es posible saber si una operación terminó correctamente viendo el contenido de la variable
# de entorno $?

# mkdir $(pwd)   #  no se puede crear un directorio que ya existe
# echo $?        # devolverá un número diferente a 0


# --------------------------
# Condicionales
# --------------------------

# Sintáxis básica
# --------------------------

# if [ condición ];then
#   código
# fi

# Ejemplo:
# if [ "$1" == "--help" ];then
#   echo "Ayuda"
# fi


# Sintáxis básica + else
# --------------------------

# if [ condición ];then
#   código
# else 
#   codigo2
# fi

# Ejemplo:
# if [ "$1" == "--help" ];then
#   echo "Ayuda"
# else
#   echo "Hola"
# fi

# Sintáxis completa
# --------------------------

# if [ condición ];then
#   código
# elif [ condición2 ];then
#   código2
# else 
#   codigo3
# fi

# Ejemplo:
# if [ "$1" == "--help" ];then
#   echo "Ayuda"
# elif [ "$1" == "Paco" ];then
#   echo "Hola, paco"
# else
#   echo "Hola, ciudadano anónimo"
# fi


# Importante: Es muy tiquismiquis con la sintaxis, tiene que respetarse los espacios de la condición.

# if[ "$1" == "--help" ];then   # fallo porque falta un espacio: if[
# if ["$1" == "--help" ];then   # fallo porque falta un espacio: ["$1"
# if [ "$1"== "--help" ];then   # fallo porque falta un espacio: "$1"==
# if [ "$1" =="--help" ];then   # fallo porque falta un espacio: =="--help"
# if [ "$1" == "--help"];then   # fallo porque falta un espacio: "--help"]
# if [ "$1" == "--help"] then   # fallo porque falta el ;




# -----------------------------
# Comparaciones y condiciones
# -----------------------------

# Comparaciones de cadenas de caracteres
# --------------------------------------

# [ "$1" == "--help" ]   # Si son iguales
# [ "$1" != "--help" ]   # Si son diferentes


# Comparaciones numéricas
# --------------------------------------

# [ $# -eq 0 ]        # -eq = equals
# [ $# -ne 0 ]        # -ne = not equals
# [ $# -gt 0 ]        # -gt = greater than
# [ $# -ge 0 ]        # -ge = greater than or equals
# [ $# -lt 5 ]        # -lt = less than
# [ $# -le 5 ]        # -le = less than or equals

# if [ $# > 1 ];then
#   echo "Error: No puede indicar más de un parámetro" 1>&2
#   exit 1
# fi


# Comparaciones de ficheros
# --------------------------------------

# [ -f "fichero.txt" ]    # Comprueba si existe un fichero que se llame "fichero.txt"
# [ -d "fichero.txt" ]    # Comprueba si existe un directorio que se llame "fichero.txt"
# [ -e "fichero.txt" ]    # Comprueba si existe un fichero o directorio que se llame "fichero.txt"



# Comparaciones de permisos
# --------------------------------------
# [ -r "f.txt" ]   # Comprueba si el usuario que ejecuta el script tiene permisos de lectura
# [ -w "f.txt" ]   # Comprueba si el usuario que ejecuta el script tiene permisos de escritura
# [ -x "f.txt" ]   # Comprueba si el usuario que ejecuta el script tiene permisos de ejecución


# -----------------------------
# Condiciones complejas
# -----------------------------

# Se utilizan los parámetros &&, || y !

edad=17

if [ $edad -lt 13 ];then
  echo "Niño"
elif [ edad -ge 13 ] && [ edad -le 17 ];then
  echo "Adolescente"
elif [ edad -ge 18 ] && [ edad -le 25 ];then
  echo "Joven"
else
  echo "Adulto"
fi

