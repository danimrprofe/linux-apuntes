
# Práctica configuración DNS Servidor maestro y esclavo Ubuntu con BIND

![alt_text](images/Pr-ctica-DNS0.png "image_tooltip")

## Configuración de servidores

Podemos crear un servidor secundario para protegernos de caídas del servidor principal. Todos los datos se modificarán en el principal, y periódicamente se transferirán los archivos de zona del maestro al secundario, donde se guardará una copia.

- El **servidor maestro** será ns1.iesdmoreno.org y se corresponderá con la IP 192.168.X.10
- El **servidor esclavo** estará en una máquina nueva con Ubuntu server con IP estática 192.168.0.1.

Le asociaremos el dominio ns2.iesdmoreno.org

![drawing](https://docs.google.com/a/google.com/drawings/d/12345/export/png)

### Atención: cambiamos la IP de ns2.iesdmoreno.org a 192.168.X.11

### Configuración de maestro

Deberemos modificar nuestra configuración para indicar:

- Las zonas de las que queremos que sea el dns maestro.
- Que queremos permitir que el servidor secundario pueda descargarse la información de las zonas 
[https://github.com/danimrprofe/servidorDNSconBIND](https://github.com/danimrprofe/servidorDNSconBIND)

### Configuración de esclavo

[https://github.com/danimrprofe/servidorDNSconBIND-esclavo-](https://github.com/danimrprofe/servidorDNSconBIND-esclavo-)

### Apparmor

Podemos tener fallos debido a problemas de permisos de escritura. Apparmor confina los lugares donde una aplicación puede escribir.

AppArmor es una implementación del módulo de seguridad de Linux de controles de acceso obligatorios basados ​​en el nombre. AppArmor limita los programas individuales a un conjunto de archivos.

AppArmor se instala y carga de forma predeterminada. Utiliza los perfiles de una aplicación para determinar qué archivos y permisos requiere la aplicación. Algunos paquetes instalarán sus propios perfiles.

Para evitar problemas de permisos:
**Solución 1: **chmod g+w /etc/bind/cache
**Solución 2:*- Modificar configuración Apparmor

- Abrir</span>  /etc/apparmor.d/local/usr.sbin.named 
- agregar la siguiente línea:</span> /etc/bind/cache/*- rwm,
- Guardar y salir
- Recargar apparmor</span>: service apparmor reload 
- Reiniciar bind</span>: service bind9 start

Si todo es correcto, veremos que nos ha cargado las 3 zonas (serial indica la versión de la zona)

![alt_text](images/Pr-ctica-DNS1.png "image_tooltip")

En el esclavo, podemos ver cómo se han actualizado los 3 archivos (lo podemos saber por la fecha, entre otras cosas)

![drawing](https://docs.google.com/a/google.com/drawings/d/12345/export/png)

## Comprobaciones con DIG

Con DIG puedo comprobar la respuesta que me dan los diferentes servidores:
En primer lugar le digo a que servidor le quiero preguntar, y de qué dominio quiero saber la respuesta.

![alt_text](images/Pr-ctica-DNS2.png "image_tooltip")

## Sincronización periódica

En el registro **SOA* se especifica cada cuanto queremos que el servidor esclavo pida una actualización al maestro. Si le decimos 1d, lo hará al cabo de 24 horas de haberse actualizado por última vez. Si le decimos 600, lo hará cada 10 minutos.

Cada zona tiene su propio registro SOA con sus propios tiempos.

## Sincronización automática con notificaciones (notify)

- Notificación DNS: [https://tools.ietf.org/html/rfc1996](https://tools.ietf.org/html/rfc1996)
- Transferencia incremental: [https://tools.ietf.org/html/rfc1995](https://tools.ietf.org/html/rfc1995)

Ahora, nuestro archivo de zonas se sincroniza la primera vez (si no existía en el esclavo). Realmente queremos que lo hagan automáticamente cuando haya cambios. Para ello existe un mecanismo de **notificación**. Para que funcione debemos hacer varias cosas:

### Configurar el master para que envíe notificaciones

El **master** va a enviar los cambios que hagamos en sus zonas a los servidores NS que aparezcan en la zona. Por lo tanto, es importante que las IP de los NS (especialmente el secundario estén correctamente escritas).

### Configurar allow-notify en el esclavo

Queremos permitir que el esclavo reciba notificaciones del máster. Para ello agregaremos la línea `allow-notify` dentro de la zona del esclavo, indicando la IP a la que va a escuchar notificaciones. Por ejemplo:

    allow-notify { 192.168.0.10 ;};

### Modificar el serial en el registro SOA

La opción `SERIAL` (el primer número que escribimos en el registro) indica la versión del archivo, y se escribe manualmente.

- Se debe modificar para que el servidor sepa que hemos hecho una versión nueva. 
- Normalmente es un número que se incrementa en 1 cada vez que hacemos un cambio.
- En la práctica se usa el formato YYYYMMDDVV 
- VV es la versión, dentro del mismo día, comenzando por 01, 02, etc.

![alt_text](images/Pr-ctica-DNS3.png "image_tooltip")
