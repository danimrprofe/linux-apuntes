# Formatear disco desde Clonezilla

Para ello, entrar en el shell desde el menú de Clonezilla.

# 1) Fdisk y a ver que hay en el disco

Al crear el disco, no está ni formateado, ni tiene tabla de particiones, ni sistema de archivos, por lo que Clonezilla no lo reconoce.

```dos
Command (m for help): F
Unpartitioned space /dev/sdb: 10 GiB, 10736369664 bytes, 20969472 sectors
 Units: sectors of 1 >k 512 = 512 bytes
 Sector size (logical/physical): 512 bytes / 512 bytes
 Start   End   Sectors    Size
 2048   20971519    20969472 10G
```

# 2) Crear tabla de particiones

En este caso la crearé del tipo GPT

```dos
Command (m for help): g
Created a new GPT disklabel (GUID: 76AAA8AE-BD36-BE42-AE5D-A44852D884E0).
```

# 3) Creo una partición que ocupe todo el disco

Tengo para crear hasta 128 particiones, nada más y nada menos. Elijo los parámetros por defecto porque pretendo ocupar todo el disco.

Como podemos ver, los 2048 primeros sectores quedan reservados y no se pueden utilizar.

```dos
Command (m for help): n
Partition number (1-128, default 1): 1
First sector (2048-20971486, default 2048):
Last sector, +sectors or +size£K,M,G,T,P} (2048-20971486, default 20971486) Created a new partition 1 of type 'Linux filesystem' and of size 10 GiB.
```

# 4) Mostrar table de particiones

Muestro la tabla de particiones para ver que ha quedado todo como toca:

```dos
Command (m for help): p
Disk /dev/sdb: 10 GiB, 10737418240 bytes, 20971520 sectors Units: sectors of 1 >k 512 = 512 bytes Sector size (logical/physical): 512 bytes / 512 bytes I/O size (minimum/optimal): 512 bytes / 512 bytes Disklabel type: gpt
Disk identifier: 76AAA8AE-BD36-BE42-AE5D-A44852D884E0
Device Start End Sectors Size Type
Ddev/sdbl 2048 20971486 20969439 10G Linux filesystem
```

Me ha quedado estupenda. Pero de momento hasta que no lo grabe no quedará escrita la tabla de particiones.

# 5) Grabo la tabla de particiones

COn w se graba la tabla de particiones en el disco:

```dos
Command (m for help): w 
The partition table has been altered.
Calling ioctlO to re-read partition table.
Syncing disks.
```

# 6) Última comprobación

Cno el comando `lsblk` puedo ver como ha quedado. **sdb1** es la partición creada.

```dos
user@debian:~$ lsblk
 NAME MAJrMIN RM SIZE RO TYPE MOUNTPOINT
 loopO 7:0 0 192.8M 1 loop /lib/live/mount/rootfs/filesystem.squashfs
 sda 8:0 0 10G 0 disk
 *—sdal 8:1 0 10G 0 part
 sdb 8:16 0 10G 0 disk
 *—sdbl 8:17 0 10G 0 part
 srO 11:0 1 230M 0 rom /lib/live/mount/medium
```
