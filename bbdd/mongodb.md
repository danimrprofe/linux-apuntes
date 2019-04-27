--- 
title:
- MongoDB
subtitle:
- Pruebas con MongoDB
author:
- Daniel Moreno
institute:
- IES Francesc de Borja Moll
date: 
- \today
theme:
- metropolis
header-includes:
 - '\usetheme{metropolis}'
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio:
 - 169
---



# Características

* Se trata de una base datos NoSQL, por lo que no se realizan consultas utilizando lenguaje SQL
* Los datos se almacenan en formato JSON, y más concretamente se guardan en un formato llamado BSON
* No se definen esquemas como en las BD relacionales
* Las BD se crean en el momento que se inserta el primer registro
* No soporta joins del lado del servidor
* Los datos se guardan en colecciones, que a su vez están formadas por documentos. Estos documentos tienen una estructura JSON
* No se definen IDs para cada documento, sino que se autogeneran cuando se introduce un documento nuevo
* Permite acceder a los datos utilizando librerías javascript.

En cuanto a los documentos:

* No todos los documentos tienen porqué tener los mismos campos, por lo que se pueden agregar documentos con campos nuevos en cualquier momento.
* Los campos pueden estar anidados, por lo que un campo puede contener a su vez más de un campo.

# Instalación

Se puede descargar un instalable para Windows, y se puede instalar o no como un servicio. En función de la decisión que tomemos deberemos agregar al path las rutas a los ejecutables de MongoDB que son, principalmente:

* mongod: se trata del servicio, el engine de mongo, que gestionará la BD
* mongo: shell de mongoDB que nos permitirá comunicarnos con la BD y realizar operaciones sobre ella
