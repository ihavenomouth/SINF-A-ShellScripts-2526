#!/bin/bash

# Virtualbox
# Crea un script que reciba uno o tres parámetros.
# Si no recibe ninguno, dos o más de tres mostrará un mensaje de error y terminará.


function errorParametros(){
  echo "Error: Nº de parámetros incorrecto" 1>&2
  echo "Debe indicar uno o tres parámetros" 1>&2
  exit 1
}


# if [ $# -eq 0 ];then
#   error
# fi

[ $# -eq 0 ] && errorParametros
[ $# -eq 2 ] && errorParametros
[ $# -gt 3 ] && errorParametros




# Si el primer parámetro es --help, se mostrará la ayuda y terminará.
if [ "$1" == "--help" ];then
  echo "Gestiona máquinas virtuales de Virtualbox"
  echo
  echo "Uso: $0 [--help | lista]"
  echo "Uso: $0 limitar executioncap uuid"
  echo
  echo "Parámetros:"
  echo "   --help       : muestra esta ayuda"
  echo "   lista        : muestra una lista con las máquinas virtuales que se están ejecutando"
  echo "   executioncap : %de CPU máximo que puede usar una máquina virtual"
  echo "   uuid         : identificado de la máquina virtual"
  echo
  echo "Ejemplo:"
  echo "$0 limitar 70 3d79ec34-5a0b-481c-8661-51f85d9db585"
  exit 0
fi


# Si el primer parámetro es lista se ejecutará lo siguiente y terminará:
if [ "$1" == "lista" ];then
  vboxmanage list runningvms
  exit 0
fi


# Si sólo se recibe un parámetro y no es ninguno de esos dos, se mostrará un mensaje de error y terminará.

# Si se llega a esta línea es que hay uno o tres parámetros y el primero no es ni --help ni lista.
if [ $# -eq 1 ];then
  echo "Si sólo indica un parámetro, los únicos válidos son --help o lista" 1>&2
  exit 2
fi


# Si se reciben tres parámetros, el primer parámetro tiene que ser limitar. En caso contrario se mostrará un mensaje de error y terminará.
if [ $# -eq 3 ] && [ "$1" != "limitar" ];then
  echo "Si se indicab tres parámetros, el primero debe ser limitar" 1>&2
  exit 3
fi

# Si llego aquí es porque hay tres parámetros y el primero es limitar


# Si se reciben tres parámetros y el primer parámetro es limitar, se ejecutará una orden que limite al número que se pasa como segundo parámetro el uso de la CPU que puede hacer la máquina virtual cuyo id se pasa como tercer parámetro.

# Por ejemplo:
# ./script limitar 70 3d79ec34-5a0b-481c-8661-51f85d9db585

# Ejecutará:
# # VBoxManage controlvm 3d79ec34-5a0b-481c-8661-51f85d9db585 cpuexecutioncap 70
VBoxManage controlvm $3 cpuexecutioncap $2
