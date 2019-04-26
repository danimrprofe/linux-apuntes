# Administración remota (SSH y SCP)

- [Administración remota (SSH y SCP)](#administraci%C3%B3n-remota-ssh-y-scp)
  - [¿Qué es SSH?](#%C2%BFqu%C3%A9-es-ssh)
  - [Instalación openSSH](#instalaci%C3%B3n-openssh)
  - [Arrancar y parar el servicio:](#arrancar-y-parar-el-servicio)
  - [Configuración de puertos](#configuraci%C3%B3n-de-puertos)
  - [Archivos de configuración](#archivos-de-configuraci%C3%B3n)
    - [Configuración sshd_config](#configuraci%C3%B3n-sshdconfig)
  - [Conexión desde el cliente](#conexi%C3%B3n-desde-el-cliente)
    - [Configuración del cliente](#configuraci%C3%B3n-del-cliente)
    - [Crear alias](#crear-alias)
    - [Crear registros DNS](#crear-registros-dns)
    - [Prioridad entre configuraciones](#prioridad-entre-configuraciones)
  - [Ejecutar comandos directamente](#ejecutar-comandos-directamente)
  - [Editar archivos remotamente](#editar-archivos-remotamente)
  - [Autenticación por clave pública](#autenticaci%C3%B3n-por-clave-p%C3%BAblica)
    - [Copiar clave pública](#copiar-clave-p%C3%BAblica)
  - [Comprobar usuarios conectados](#comprobar-usuarios-conectados)
  - [Permisos de administrador](#permisos-de-administrador)
  - [Transferencia de archivos](#transferencia-de-archivos)
    - [Copia básica](#copia-b%C3%A1sica)
    - [Crear dummy files para pruebas](#crear-dummy-files-para-pruebas)
    - [Copiar varios archivos al mismo tiempo](#copiar-varios-archivos-al-mismo-tiempo)
    - [Traer archivos desde un ordenador remoto](#traer-archivos-desde-un-ordenador-remoto)
    - [Tarear archivos](#tarear-archivos)
  - [Buenas prácticas](#buenas-pr%C3%A1cticas)
  - [Otras herrramientas de gestión remota](#otras-herrramientas-de-gesti%C3%B3n-remota)
    - [Putty](#putty)
    - [WinSCP](#winscp)
    - [mRemote](#mremote)
  - [Terminal server](#terminal-server)
  - [Conectar](#conectar)

## ¿Qué es SSH?

En la actualidad se utiliza Secure SHell (SSH).

SSH permite abrir una sesión de terminal desde un
cliente remoto sobre el sistema servidor, como el
telnet, pero sobre una conexión cifrada y segura.

- SSH utiliza por defecto el puerto 22.
- Usa el modelo cliente-servidor y la seguridad se
basa en la criptografía.
- SSH ofrece autenticación, confidencialidad e integridad.
- Permite establecer conexiones seguras entre equipos a través de una red insegura.

## Instalación openSSH

La versión libre de SSH más importante es OpenSSH (www.openssh.com).

Necesitaremos instalar el servidor instalado en aquellas máquinas a las que queramos acceder mediante SSH

    apt install openssh-client
    apt install openssh-server

También podemos instalar el metapaquete SSH. Es una forma práctica de instalar tanto el cliente como el servidor al mismo tiempo.

## Arrancar y parar el servicio:

Podemos hacero con systemctl start [stop | restart | status] ssh

    service ssh start [stop | restart | status]

## Configuración de puertos

El protocolo SSH tiene asignado el puerto 22, por lo que por defecto cliente y servidor van a intentar utilizar este puerto, a no ser que lo cambiemos. 

En el archivo de configuración de openSSH podemos cambiar el puerto por el que nosotros queramos. 

El servidor deberá tener abierto el puerto 22 o el que hayamos cambiado, para que pueda escuchar peticiones y se puedan conectar los clientes. 

Al conectar con el cliente, deberemos especificar también el nuevo puerto al que nos queremos conectar. 

## Archivos de configuración

Los archivos de configuración se encuentran en /etc/ssh/`
sshd_config: Configuración del servidor SSH
ssh_config: Configuración del cliente SSH
ssh_host_rsa_key: Clave RSA privada
ssh_host_rsa_key.pub: Clave RSA pública
ssh_known_hosts: claves de otras máquinas
~/.ssh/id_rsa: clave privada del usuario
~/.ssh/id_rsa.pub: clave pública del usuario

### Configuración sshd_config

Indicar en que dirección escuchar, el puerto y qué versión del protocolo utilizar:

```bash
Port 22 
#ListenAddress :: (IPv6)
#ListenAddress 0.0.0.0 (todas las interfaces)
ListenAddress 192.168.100.100 
Protocol 2
```

Es interesante desactivar la opción que nos permita hacer login como super usuario:

    PermitRootLogin without-password

No permitir conexión SSH sin introducir contraseña

    PermitEmptyPasswords no

## Conexión desde el cliente

Para conectar mediante ssh utilizamos o bien la IP o el nombre de dominio de la máquina.

    ssh 10.0.0.1
    ssh servidor

Si no indicamos nada más, se va a intentar iniciar sesión en la máquina remota con el mismo usuario con el que estamos en la máquina local.

Para iniciar sesión con otro usuario:

    ssh pepe@servidor

En la máquina servidor tendrá que haber un usuario llamado pepe, y tendremos que saber su contraseña

### Configuración del cliente

Necesitamos crear un archivo de configuración /home/john/.ssd/config
Si no existe la carpeta: 

    cd ~
    mkdir .ssh

Crear archivo de configuración: 

    nano config

Completar para cada host que queramos configurar

Si queremos tener opciones que apliquen a todos los host: Host *

```
john@elmuro$ cat .ssh/config
Host internalia
    Hostname 172.0.0.9 
    User sansa 
    Port 22
john@elmuro$ ssli invernalia sansaP172.0.0.9’s password:
Welcome to Ubuntu 18.04.1 LTS (GNU/Linux 4.15.0-39-generic x86_64)
```

Podemos hacer lo mismo en la otra máquina. Tenemos que tener en cuenta
Cada usuario tiene su propio archivo de configuración
No nos funcionará esta configuración si lo hacemos desde otro usuario
Tendríamos que crear otro fichero de configuración o copiar el que ya tenemos

### Crear alias

Podemos definir alias, e incluso guardarlas en .bashrc para que permanezcan
en la máquina tras reiniciar.

    alias invernalia=’172.0.0.7’
    alias invernalia=’ssh -p 22 john@172.0.0.7’

### Crear registros DNS

Crear un RR en el servidor DNS server IN A 172.0.0.7

### Prioridad entre configuraciones

Existe la posibilidad de conflictos entre las mismas opciones especificadas en archivos, en el mismo comando, etc.
Existe una prioridad entre las diferentes configuraciones
Las opciones se leen en el siguiente orden:

1. Línea de comandos
2. Archivo de configuración del usuario
3. Archivo de configuración del sistema

## Ejecutar comandos directamente

Ejecutar comandos sin entrar en shell
Especificando el comand a continuación de ssh

    ssh user@10.0.2.2 df -h (espacio libre)

## Editar archivos remotamente

También podemos editar archivos remotamente: 

    vim scp://remotehost/remotefile

La ruta base será la de home del usuario (`/home/usuario/remotefile`). 
Desde VIM podemos navegar por el sistema de ficheros a través de las carpetas.

## Autenticación por clave pública

Ssh-keygen es una herramienta para crear nuevos pares de claves de autenticación para SSH. 
Dichos pares de claves se utilizan para automatizar inicios de sesión
Generar un par de claves:

    ssh-keygen -t rsa

La pública se guardará en `~/.ssh/id_rsa.pub`
La privada se guardará en `~/.ssh/id_rsa`

### Copiar clave pública 

Ahora deberíamos copiar la clave pública en todas las máquinas a las que quiera conectar:
Copiarlas en la carpeta ~/.ssh/authorized_keys a mano. Para ello:

    scp /home/user/.ssh/id_rsa.pub dani@10.0.2.2:./ssh/authorized_keys

Utilizar comando específico:

    ssh-copy-id remoteuser@remotehost

Como el equipo remoto ahora tiene nuestra clave pública, nos podemos conectar a él sin necesidad de contraseñas

## Comprobar usuarios conectados

Podemos utilizar el comando who para ver cuántos usuarios están conectados al sistema.

    who

También podemos consultar los accesos en el archivo: 

    tail -10 /var/log/auth.log

## Permisos de administrador

¿Qué sucede si necesitamos permisos de administrador?

Los usuarios que pueden ejecutar comandos SUDO tienen que pertenecer al grupo SUDO.

Tenemos que iniciar sesión con un usuario que pueda hacer sudos.

Agregar un usuario al grupo: 

    sudo adduser sansa sudo

Comprobación

Cambiar sesión al usuario que queremos probar
Ejecutar sudo apt update y comprobar si deja hacerlo
Comprobar los miembros del grupo SUDO

    cat /etc/group | grep sudo

## Transferencia de archivos

El comando ``scp`` permite hacer copias seguras de archivos o directorios completos ('*'). Es una versión segura de la orden ``cp`` y además funciona en red.

### Copia básica

Para copiar un archivo:

    scp backup sansa@172.0.0.9:/home/sansa/

### Crear dummy files para pruebas

Podemos crear archivos de diferentes tamaños para hacer pruebas.
Truncate hace más grande o más pequeño un archivo.
Con -s le indicaremos el tamaño en bytes

    truncate -s 200MB backup01  

### Copiar varios archivos al mismo tiempo

Podemos especificar varios archivos en lugar de uno. Si no indicamos nada, estarán en la carpeta en la que nos situamos.

Podemos indicar varios archivos de diferentes carpetas, siempre que indiquemos sus rutas absolutas

    scp backup01 backup02 backup03 sansa@172.0.0.9:/home/sansa/

Podemos utilizar expresiones especiales y comodines para hacer referencia a archivos que tienen un nombre parecido

    scp backup[1-3] sansa@172.0.0.9:/home/sansa/

Con el argumento -r podemos copiar recursivamente una carpeta y todo su contenido

    scp -r backups/ sansa@172.0.0.9:/home/sansa/

### Traer archivos desde un ordenador remoto

En este caso, estamos en la máquina a la que queremos transferir los archivos. Por ello el destino será esta misma máquina.

El origen será en este caso otra máquina. Por eso la pondremos en primer lugar

Como segundo argumento podemos indicar la ruta de la máquina actual en la que quiero guardar los archivos

Si queremos guardarlo en la carpeta actual, lo podemos indicar con un punto (.)

    scp sansa@172.0.0.9:/home/sansa/backup05 .

### Tarear archivos

Podemos agrupar todos los archivos en un tar y enviarlo:

    tar cvf backup.tar *
    scp backup.tar elmuro:/home/john

## Buenas prácticas

Al tratarse de un servicio tan delicado, conviene hacer una serie de modificaciones para mejorar el funcionamiento y evitar posibles ataques.

- https://www.howtoforge.com/ssh-best-practices
- https://www.thegeekstuff.com/2011/05/openssh-options/

## Otras herrramientas de gestión remota

### Putty

Cliente SSH, entre otros 
Se usa para interactuar con el servidor directamente, a través de una interfaz de comandos.

- https://www.solvetic.com/tutoriales/article/787-primeros-pasos-con-putty-y-su-configuracion/

### WinSCP

Se utiliza para transferir archivos desde y hasta un servidor

https://www.ionos.es/digitalguide/hosting/cuestiones-tecnicas/primeros-pasos-con-winscp/

### mRemote

Administrador de conexiones remotas 
De código abierto
Con pestañas
Multiprotocolo

https://mremoteng.org/download

## Terminal server

Por problemas de criptografía, es posible que necesitemos cambiar opciones en cliente
Deberemos agregar una clave al registro de windows en la máquina local.
Abrir `cmd` como administrador o `powershell` y ejecutar lo siguiente:

```ps
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters" /f /v AllowEncryptionOracle /t REG_DWORD /d 2
```

## Conectar

Abrir el cliente de conexión a escritorio remoto desde la máquina local
- Conectar a localhost:9090
- Cambiar la cuenta de usuario y conectar con el usuario administrador del servidor

Podemos ejecutar la MV sin mostrarla utilizando `shift+click` en el botón iniciar de la MV
