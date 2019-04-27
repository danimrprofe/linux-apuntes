#!/bin/bash

#Es necesario permitir acceso al bloque directory / en el archivo apache2.conf para qué funcione
if [ -z $1 ]
then
	echo "Instrucciones:"	
else

archivo="$1"
temp="$1.temp"
salida="$1.pdf"

cat generar_presentacion_plantilla > "$temp"
cat "$archivo" >> "$temp"

pandoc "$temp" -t beamer -o "$salida"
mupdf "$salida"

fi