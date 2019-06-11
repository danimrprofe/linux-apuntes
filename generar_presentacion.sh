#!/bin/bash

#Es necesario permitir acceso al bloque directory / en el archivo apache2.conf para qué funcione
if [ -z $1 ]
then
	echo "Instrucciones:"	
else

archivo="$1"
nombre_archivo="$(basename $archivo)"

echo "Creando archivo temporal"
temp="$nombre_archivo.temp"

echo "Creando archivo pdf"
salida="slides/$nombre_archivo.pdf"

cat generar_presentacion_plantilla > "$temp"
cat "$archivo" >> "$temp"

pandoc "$temp" -s --highlight-style pygments -t beamer -o "$salida"

rm "$temp"
mupdf "$salida"

fi