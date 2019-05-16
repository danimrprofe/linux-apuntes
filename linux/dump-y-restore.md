# Dump y restore

- [Dump y restore](#dump-y-restore)
- [Volcar](#volcar)
- [Dump](#dump)
- [Ejemplo de copias incrementales](#ejemplo-de-copias-incrementales)
- [Otras opciones](#otras-opciones)
- [Volcado de contenido](#volcado-de-contenido)
- [Listar los contenidos de un archivo](#listar-los-contenidos-de-un-archivo)
- [Restaurar un archivo en concreto:](#restaurar-un-archivo-en-concreto)
- [Restaurar un sistema de archivos](#restaurar-un-sistema-de-archivos)
- [Extraer contenido interactivamente](#extraer-contenido-interactivamente)
- [Extraer archivos](#extraer-archivos)

Dump y restore son dos comandos que vienen con el paquete `dump`.

Es importante realizar el restore con la misma versión que se hizo el dump.

# Volcar

Ver el sistema de ficheros:

    df -h

Resultado:

```bash
S.ficheros     Tamaño Usados  Disp Uso% Montado en
udev             3,9G      0  3,9G   0% /dev
tmpfs            788M   1,5M  786M   1% /run
/dev/nvme0n1p6    37G    18G   17G  52% /
tmpfs            3,9G    13M  3,9G   1% /dev/shm
tmpfs            5,0M   4,0K  5,0M   1% /run/lock
tmpfs            3,9G      0  3,9G   0% /sys/fs/cgroup
/dev/nvme0n1p2    96M    30M   67M  32% /boot/efi
tmpfs            788M    24K  788M   1% /run/user/1000
```
# Dump

Tiene varios niveles, de 0 a 9. 0 copia todo lo que no esté marcado como nodump.

Siguientes números significan "copia todos los archivos que han cambiado o han sido creados desde el anterior dump" de nivel inferior.

# Ejemplo de copias incrementales

- Lunes: volcado dump -0
- Martes: volcado dump -1
- Miércoles:
  - dump -2 registrará cambios entre hoy y el martes
  - dump -1 registrará cambios entre hoy y el lunes

# Otras opciones

Con -f especificamos donde poner el archivo

# Volcado de contenido

Vamos a volcar el contenido de una carpeta a un archivo `.dump`

    dump 0zf volcado.dump linux-apuntes/

Hacer copia incremental:

    dump -1aj volcado.dump linux-apuntes/

# Listar los contenidos de un archivo

Listar contenidos:

    restore -f /dev/backup -t
  
Si queremos comprobar que existe un archivo:

    restore -f /dev/backup -t /etc/archivo
  
# Restaurar un archivo en concreto:

Restaurar un archivo:

    restore -f /var/backup.dump -x /etc/archivo

# Restaurar un sistema de archivos

Creamos un punto d montaje, y restauramos:

```
newfs /dev/nombre
mount /dev/nombre /mnt
cd /mnt
restore -rf /dev/ast0
```

# Extraer contenido interactivamente

Con el modo interactivo podemos abrir un dump y acceder a él a través de una línea de comandos:

    restore -i -f volcado.dump

Entraremos en un shell propio del comando restore y podremos, entre otras cosas:

- Extraer contenidos (extract)
- Listar contenidos (ls)

# Extraer archivos

Podemos movernos a través de los directorios y añadir los archivos que queremos que sean extraidos del volcado.

Al usar restore, añadimos los archivos que queremos extraer a una lista, y posteriormente restore saca los archivos del archivo de volcado.

Ejemplo

```
restore > cd etc
restore > add archivoA
restore > add archivoB
restore > extract
```