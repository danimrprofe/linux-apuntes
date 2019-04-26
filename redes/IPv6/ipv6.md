
# IPv6

## Loopback en IPv6

El dispositivo **loopback** es una interfaz de red virtual que hace referencia a nuestra propia máquina. El nombre reservado es el de localhost.

IPv4

En el caso de IPv4, para el dispositivo loopback suele utilizar la dirección 127.0.0.1 , aunque realmante se pueden utilizar cualquier 127.X.X.X con idéntico resultado.

IPv6

En el caso de IPv6 la dirección loopback es ::1 (se pueden comprimir las direcciones en IPv6). Podemos por ejemplo hacer un ping a la interfaz loopback:

C:\Users\XXXX>ping ::1

    Pinging ::1 with 32 bytes of data:
    Reply from ::1: time<1ms
    Reply from ::1: time<1ms
    Reply from ::1: time<1ms
    Reply from ::1: time<1ms

Ping statistics for ::1:
Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
Minimum = 0ms, Maximum = 0ms, Average = 0ms

Si en lugar de especificar la dirección IP, hacemos ping al nombre loopback, se buscará en primer lugar la IP que le corresponde. Podemos en ping especificar qué protocolo vamos a usar, mediante los argumentos -4 (para IPv4) y -6 (para IPv6).

    C:\Users\XXXX>ping -4 localhost

    Pinging DESKTOP-2XXXXXU [127.0.0.1] with 32 bytes of data:
    Reply from 127.0.0.1: bytes=32 time<1ms TTL=128
    Reply from 127.0.0.1: bytes=32 time<1ms TTL=128
    Reply from 127.0.0.1: bytes=32 time<1ms TTL=128
    Reply from 127.0.0.1: bytes=32 time<1ms TTL=128

    Ping statistics for 127.0.0.1:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
    Approximate round trip times in milli-seconds:
    Minimum = 0ms, Maximum = 0ms, Average = 0ms

Para hacer ping con IPv6:

    C:\Users\XXXX>ping -6 localhost

    Pinging DESKTOP-2XXXXXU [::1] with 32 bytes of data:
    Reply from ::1: time<1ms
    Reply from ::1: time<1ms
    Reply from ::1: time<1ms
    Reply from ::1: time<1ms

    Ping statistics for ::1:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
    Approximate round trip times in milli-seconds:
    Minimum = 0ms, Maximum = 0ms, Average = 0ms

Para acceder en el navegador al servidor http local, en el caso de IPv6 tendremos que escribir la dirección IP ente brackets:

http://[::1]

## Reparto de direcciones IPv6

### Reparto entre las RIR


En IPv6 existen diferentes tipos de direcciones IP según el uso. La IANA se encarga de repartir las direcciones IP unicast globales entre los diferentes registros regionales o RIR. En su página web tienen un esquema de la repartición de los diferentes bloques de direcciones IP a los RIR.

A día de hoy, la última asignación a **RIPE NCC** (para Europa) ha sido el bloque:

    2a00:0000::/12

2a00 = 0010101000000000

Las direcciones asignables serían:

    Desde 0010101000000000:0000:0000:0000:0000:0000
        Dirección 2a00:0000:0000:0000:0000:0000 (2a00::)
    Hasta 0010101000001111:FFFF:FFFF:FFFF:FFFF:FFFF
        Dirección 2a0f:ffff:ffff:ffff:ffff:ffff:ffff:ffff

Este espacio da para la friolera de:

2^116 = 83,076,749,736,557,242,056,487,941,267,521,536 direcciones

Cabe recordar que las direcciones unicast globales se componen de:

    48 bits o más para enrutamiento
    16 o menos para subnetting
    64 para identificador de interfaz

El cuarto hexteto es el dedicado a la creación de subredes.

## Cómo se reparten las direcciones IP

Publicado en 29 marzo, 2018	

La IANA es la responsable de coordinar el espacio de direcciones IP a nivel mundial. Hoy en día existen 2 tipos principalmente: IPs de versión 4 e IPs de versión 6.

En la web de la IANA se puede encontrar el espacio de direcciones y su estructura en IPv6 . Como ejemplo:

    El espacio de direcciones 2000::/3 está destinado a direcciones unicast globales.
    Existen otros espacios de direcciones para multicast,  direccuibes unicast locales y para enlaces locales.

Las direcciones se asignan jerárquicamente. En general:

    La IANA reparte bloques IP entre los diferentes registros de internet regionales o RIR. Existen 5 englobados por continentes. Para España, el RIR de referencia es el RIPE NCC.
    En segundo lugar las RIR reparten bloques de IP a los proveedores de servicio o ISP. Podemos ver la lista de miembros (local internet registries) asociados a RIPE en España
    En última estancia, los ISP reparten las direcciones IP a los usuarios finales.

Como curiosidad, en la propia página del RIPE podemos introducir una IP pública y conocer, entre otros datos, a que ISP pertenece. También podemos ver un mapa de geolocalización de las IP de la red al que pertenece la nuestra.

mapa geolocalizacion IPs

Por lo visto parecen bloques destinados a la zona del levante Español. Pertenece a un bloque asignado al operador de /14, que daría espacio para más de 260.000 direcciones.

![mapa geo](mapa-geolocalizacion-ips.png)