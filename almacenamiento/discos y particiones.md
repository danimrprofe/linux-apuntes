- [Estructura física del disco](#estructura-f%C3%ADsica-del-disco)
  - [Sectores](#sectores)
  - [Para localizar la información en un disco](#para-localizar-la-informaci%C3%B3n-en-un-disco)
- [Estructura logica del disco duro](#estructura-logica-del-disco-duro)
  - [MBR](#mbr)
  - [Espacio particionado](#espacio-particionado)
  - [Espacio no asignado](#espacio-no-asignado)
- [Particion de discos](#particion-de-discos)
- [Unidades físicas y lógicas](#unidades-f%C3%ADsicas-y-l%C3%B3gicas)
- [Tabla de particiones](#tabla-de-particiones)
- [Tipos de particiones](#tipos-de-particiones)
  - [Partición primaria](#partici%C3%B3n-primaria)
  - [Partición extendida](#partici%C3%B3n-extendida)
  - [Partición lógica](#partici%C3%B3n-l%C3%B3gica)
- [El sistema de archivos](#el-sistema-de-archivos)
- [¿Por qué es tan importante?](#%C2%BFpor-qu%C3%A9-es-tan-importante)
- [Elegir un sistema de archivos](#elegir-un-sistema-de-archivos)
  - [Sistema FAT](#sistema-fat)
    - [Limitaciones](#limitaciones)
    - [Tipos de FAT](#tipos-de-fat)
  - [Sistema NTFS](#sistema-ntfs)
  - [Sistema EXT](#sistema-ext)
- [Operaciones sobre particiones](#operaciones-sobre-particiones)
  - [Cambiar el sistema de archivos de una partición](#cambiar-el-sistema-de-archivos-de-una-partici%C3%B3n)
  - [Cambiar el tipo de partición](#cambiar-el-tipo-de-partici%C3%B3n)
- [Formateo de particiones](#formateo-de-particiones)
  - [Formateo alto nivel (formateo lógico)](#formateo-alto-nivel-formateo-l%C3%B3gico)
  - [Formateo a bajo nivel (o formateo físico)](#formateo-a-bajo-nivel-o-formateo-f%C3%ADsico)
    - [Herramientas](#herramientas)

# Estructura física del disco

- Un disco duro puede contar con uno o varios discos. 
- Cada disco suele contar con dos caras.  
- Cada cara es leída por un cabeza de lectura/escritura
- Un disco tiene tantas cabezas como caras
- Cada una de las caras se divide en anillos llamados pistas. 
- La misma pista de cada una de las cabezas se llama cilindro.
- Cada pista se divide en sectores.

## Sectores

- Un sector es el trozo más pequeño que se puede leer o escribir
- En cada sector se almacenan 512 Bytes de información. (En SSD 4-16 KB)
- La agrupación de varios sectores se denomina clúster.

## Para localizar la información en un disco

- Identificación: Cabeza - Cilindro - Sector
- Las cabezas y los cilindros se comienzan a numerar desde el «0» y los sectores desde el «1», así que el primer bloque de información estará situado en la posición «0-0-1»

# Estructura logica del disco duro

La estructura del disco se divide generalmente en:

- MBR o sector de arranque
- Espacio particionado
- Espacio no asignado

## MBR

- Es el primer sector de cualquier disco duro.
- En él se almacenan:
  - La tabla de particiones
  - Un programa de inicialización del sistema (bootstrap)
- Los más conocidos son:
  - NTLDR: para sistemas Windows modernos
  - LILO y GRUB: para sistemas Linux
  - PXE: para arranque a través de un entorno de red.

## Espacio particionado

Espacio que ya se ha asignado para almacenar datos o programas

## Espacio no asignado

- Zona no accesible del disco a la que todavía no se le ha asignado un fin. 
- No contiene datos ni programas de ningún tipo.

# Particion de discos

# Unidades físicas y lógicas

- Cada disco duro constituye una unidad física
- Cada unidad física puede contener una o más unidades lógicas, denominadas particiones.

# Tabla de particiones

- Contiene el registro de las particiones de un disco
- Está en el sector MBR
- Se indica cuál es la partición activa del disco. 
- A la que se dirige el bootstrap para iniciar el arranque del sistema.

# Tipos de particiones

Existen basicamente 3 tipos de particiones:

- Particion primaria
- Particion extendida
- Particion logica

## Partición primaria

- División simple del disco destinada, a contener SO (aunque también puede contener datos)
- Máximo 4 particiones primarias en un disco
- A cada una se asigna una letra de unidad (G, D:. etc.) 
- Pueden tener asociado un nombre que permite identificarlas más rápidamente (etiqueta).
- La partición primaria puede ser una partición `activa`.

## Partición extendida

- Destinada exclusivamente a ser contenedor de particiones llamadas lógicas.
- Máximo una en un mismo disco.
- Las particiones extendidas no tienen letra de unidad

## Partición lógica

- Es una subdivisión de la partición extendida. 
- Pueden existir varias particiones lógicas dentro de la misma partición extendida.
- Al igual que a las primarias, se les asigna una letra de unidad.
- Las particiones lógicas no pueden ser particiones activas.

# El sistema de archivos

- Estructura que utiliza una partición de un disco para almacenar en ella los datos.
- Formatear: Proceso de asignar un sistema de archivos a una partición
- Al formatear una partición se puede optar por un determinado sistema de archivos.

# ¿Por qué es tan importante?

El SO que queramos instalar influye a la hora de elegir el tipo de sistema de archivos
Algunos SO se pueden instalar en varios tipos de sistemas de archivos y viceversa

# Elegir un sistema de archivos

Para elegir el sistema de archivos deberemos tener en cuenta:

- El SO con el que trabajemos
- Las limitaciones en cuanto al tamaño de archivos
- Las compatibilidades

## Sistema FAT

- Desarrollados para Windows pero compatibles con entornos Linux.
- Crean una tabla de asignación de archivos (File Allocation Table)
- Alojada en los primeros sectores del disco, con una copia de su contenido por si la primera se daña.
- Formato muy popular (disquetes, tarjetas de memoria y dispositivos similares)
- Produce bastante fragmentación en el disco 

### Limitaciones 

- No permite particiones superiores a los 32 GB 
- No permite archivos mayores de 4 GB.

### Tipos de FAT

Existen 3 modalidades de FAT

## Sistema NTFS

- Diseñado para versiones modernas de Windows (NT - Windows 8.1)
- Soluciona limitaciones de FAT
- Compatible con entornos Linux (ahora)
- Dispone de un registro de transacciones (journaling)
  - Anotan las acciones realizadas sobre la escritura de un archivo 
  - Se utiliza para restaurarse en caso de fallo

Límite: Particiones < 256 TB (recomendado < 2 TB)

Inconvenientes:

- Necesita mucho espacio en disco para gestión de los archivos.
- No recomendable para discos o particiones < 10 GB.

## Sistema EXT

- Sistema de archivos extendido EXT
- Sistema característico de los entornos Linux
- Incompatible con entornos Windows. 

Diferentes versiones:

- Ext2, ext3 y ext4
- Cada versión incluye mejoras sobre la anterior. 

La versión más moderna (ext4) es capaz de:

- Archivos < 16 TB 
- Particiones < 1 EB (exabyte)
- Linux utiliza un espacio en el disco denominado swap, mediante el cual puede guardar información que no se mantiene en memoria

# Operaciones sobre particiones

## Cambiar el sistema de archivos de una partición

- Conversión de particiones: modificación de un sistema de archivos a otro.
- Conversión entre FAT y NTFS tiene sus problemas
- Se permite el cambio con limitaciones (espacio en disco, persistencia de los datos)
- Conversión sistemas  Windows y Linux es más compleja 
- Si la aplicación lo permite, el cambio del sistema de archivos se realizaría mediante la opción de convertir, pudiendo realizar la conversión entre FAT y NTFS. pero no entre particiones ext.

## Cambiar el tipo de partición

Existe la posibilidad de convertir una partición primaria en lógica y viceversa. 
Este cambio es bastante útil cuando se agota el cupo de cuatro particiones primarias en el disco

# Formateo de particiones

Proceso de preparar un dispositivo de almacenamiento para un uso inicial.

- Formatear no implica borrar los datos, aunque no sean visibles
- Se puede formatear un disco completo o una partición

Dos niveles de formateo:

- Alto nivel (lógico)
- Bajo nivel (físico)

## Formateo alto nivel (formateo lógico)

- Borra solo tabla de acceso a los archivos almacenados (no los datos)
- Similar a borrar el índice de un libro.
- Se emplea para asignar el sistema de archivos a la partición
- Incluye comprobación de errores (físicos o magnéticos) en el disco. 
- Dependiendo de la configuración, el proceso durará más o menos.

Tener en cuenta

- No se puede interrumpir la acción de formateo
- Cuando haya terminado no habrá acceso a los datos antiguos. 
- Sin embargo, estos datos no se borran
- Existen herramientas software con las que pueden recuperarse.

¿Desde dónde puedo formatear? 

- Desde el sistema operativo 
- Solo en otros discos distintos al que contiene el SO
- Desde un disco de arranque (a todos los discos del equipo)
- Mediante cualquiera de las aplicaciones de gestión de discos.

## Formateo a bajo nivel (o formateo físico)

- Elimina: particiones de disco + datos + tablas de archivos
- Se vuelve a los valores iniciales de fábrica.
- Coloca marcas en la superficie del disco para dividirlo de nuevo en pistas y sectores, eliminando las antiguas referencias. 

Este tipo de formateo proporciona más seguridad

- Recuperación de la información difícil pero también es posible
- Solo elimina las marcas divisorias del disco, no los datos
- Formateo muy lento
En caso de interrumpirse el disco puede quedar inutilizable

### Herramientas

Fabricantes de discos 

- Ofrecen gratis herramientas para aplicar este tipo de formateo.

Herramientas genéricas:

- HDD Low Level Format Tool (gratuita)
- KillDisk (de pago).

