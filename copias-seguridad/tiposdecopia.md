
## Cron

Ejecutar todos los días a las 10:15

        15 10 * * *

## Tar

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

