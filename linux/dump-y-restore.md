
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

Vamos a volcar el contenido de una carpeta a un archivo `.dump`

    dump 0zf volcado.dump linux-apuntes/

Hacer copia incremental:

    dump -1aj volcado.dump linux-apuntes/

# Extraer contenido

Podemos ver el contenido del archivo:

    restore -i -f volcado.dump

Entraremos en un shell propio del comando restore y podremos, entre otras cosas:

- Extraer contenidos (extract)
- Listar contenidos (ls)