
## Cron

Ejecutar todos los días a las 10:15

        15 10 * * *

## Tar

Crear un archivo:

 -c	Crea un nuevo archivo que contiene los elementos especificados.
 -f	Especifica el nombre del archivo.

Compresión:

 -j	Se utiliza para comprimir el archivo a través de bzip2.
 -z	Comprime un archivo a través de la herramienta gzip.
 -x	Extrae el archivo de almacenamiento en el disco.

Otras opciones:

 -v	Ejecuta el comando en modo detallado para mostrar el progreso del archivo.
 
 -W	Se utiliza para verificar un archivo comprimido.
 -t	Se usa para visualizar el contenido del archivo.
 -r	Usado para agregar o actualizar archivos o directorios al archivo existente.
 -u	Como -r, pero las nuevas entradas se agregan solo si tienen una fecha de modificación más nueva que la entrada correspondiente en el archivo.

Comprimir una carpeta

        tar -cpzf misitio-$(date +%Y-%m-%d).tar.gz /carpetadestino

## No crear archivo de salida

Podemos evitar que tar cree un archivo de salida y, a cambio, redirija la salida a stdout

        tar cvzf - /path/to/myBase.sql | ssh USER@HOST "dd of=/path/to/backups/myBase$(date +\%Y\%m\%d\%H\%M\%S).tar.gz"
       
# Todo en uno

Tenemos la posibilidad de:

- Hacer un backup de la carpeta períodicamente
- Enviarlo a una localización remota

```
crontab -e 
04 * * * *
tar -czvf datadir-'date+\%s'.tar.gz nombrecarpeta;
scp datadir-'date+\%s'.tar.gz user@serverremoto:/backups
```

# Copias incrementales

Podemos enviar copias incrementales utilizando rsync. Para ello:

  rsync -avz ruta/a/carpeta userremoto@serverremoto:/backups

