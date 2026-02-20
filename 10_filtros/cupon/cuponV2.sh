[ $# -eq 0 ] && echo "Debe indicar un parámetro" 1>&2 && exit 1

[ -f "index.html" ] && rm index.html

# Descargamos la página web
wget https://www.eleconomista.es/sorteos/once/ -q -O index.html

busqueda=$( cat index.html | grep "class=\"box-lotto-numbers\"><li>$1</li>" -o |wc -l )


if [ $busqueda -eq 0 ];then
  echo "¡Mala suerte! El número $1 no ha sido premiado"
  exit 0
fi



listaNumPremiados=$( cat index.html | grep "class=\"box-lotto-numbers\"><li>[0-9]*</li>" -o | cut -d "<" -f2 | cut -d ">" -f2 )

echo "Últimos números premiados:"
echo $listaNumPremiados

numeroPremiado=$( echo $listaNumPremiados | cut -d " " -f1 )

if [ $numeroPremiado -eq $1 ];then
  echo "¡Enhorabuena! El número $1 ha sido premiado"
fi
