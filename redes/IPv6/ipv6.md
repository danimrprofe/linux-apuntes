
# Apuntes IPv6

- [Apuntes IPv6](#apuntes-ipv6)
  - [Direccionamiento IPv6](#direccionamiento-ipv6)
  - [IPv4 vs IPv6](#ipv4-vs-ipv6)
  - [Encabezado IPv4 vs IPv6](#encabezado-ipv4-vs-ipv6)
    - [Ventajas del encabezado de IPv6](#ventajas-del-encabezado-de-ipv6)
  - [Acortar direcciones](#acortar-direcciones)
  - [Ejemplos](#ejemplos)
  - [Máscaras](#m%C3%A1scaras)
  - [Tipos de direcciones IPv6](#tipos-de-direcciones-ipv6)
    - [Espacio de direcciones](#espacio-de-direcciones)
    - [Tipos de direcciones](#tipos-de-direcciones)
    - [Formato de tipos de direcciones](#formato-de-tipos-de-direcciones)
      - [Dirección de enlace local (link local)](#direcci%C3%B3n-de-enlace-local-link-local)
        - [Comprobación de dirección de enlace local](#comprobaci%C3%B3n-de-direcci%C3%B3n-de-enlace-local)
      - [Dirección unicast global](#direcci%C3%B3n-unicast-global)
      - [Dirección unicast global (ejemplo de funcionamiento)](#direcci%C3%B3n-unicast-global-ejemplo-de-funcionamiento)
      - [Direcciones anycast](#direcciones-anycast)
      - [Direcciones multicast](#direcciones-multicast)
      - [Direcciones especiales](#direcciones-especiales)
        - [Dirección de loopback](#direcci%C3%B3n-de-loopback)
        - [Dirección no especificada](#direcci%C3%B3n-no-especificada)
  - [Transición de IPv4 a IPv6](#transici%C3%B3n-de-ipv4-a-ipv6)
    - [Dual stack](#dual-stack)
    - [Tunneling](#tunneling)
  - [Loopback en IPv6](#loopback-en-ipv6)
  - [Reparto de direcciones IPv6](#reparto-de-direcciones-ipv6)
    - [Reparto entre las RIR](#reparto-entre-las-rir)
  - [Cómo se reparten las direcciones IP](#c%C3%B3mo-se-reparten-las-direcciones-ip)

## Direccionamiento IPv6

- Direcciones IPv4: 32 bits divididos en cuatro campos de 8 bits separados por puntos.
- Direcciones IPv6: 128 bits más largas y representación diferente (tamaño). Utilizan - dos puntos (:) para separar entradas en una serie hexadecimal de 16 bits.
- IPv6 debería proporcionar una cantidad de direcciones suficiente para las necesidades - de crecimiento futuras de Internet durante muchos años más.
- La cantidad de direcciones IPv6 disponibles permiten asignar a cada persona del planeta un espacio de direcciones de Internet equivalente al espacio total de IPv4.

## IPv4 vs IPv6

- Internet Protocol version 4 (IPv4)
- Creado alrededor de 1979
- Espacio de direcciones de 32-bit. Cuatro mil millones de direcciones IP
- Los métodos de asignación desperdiciaron direcciones
- Internet Protocol version 6 (IPv6)
- Direcciones de 128-bit
- Mejoran seguridad, encaminamiento y otras características
- Hasta 3.4 x 10^38 direcciones IP = 340,282,366,920,938,463,463,374,607,431,768,211,456 direcciones

- IPv6 e IPv4 difieren en la implementación
- El espacio de direcciones funciona de manera diferente
- Las direcciones no se parecen
- IPv6 siempre usa el direccionamiento de enlace local
- El subnetting funciona de manera diferente
- Notación IPv6
- Notación de direcciones IPv6
- 128 bits en hexadecimal: 2001:0000:0000:3210:0800:200C:00CF:1234
- Separador de dos puntos en lugar de punto
- Grupos de cuartetos (o hextetos): 0000 to FFFF

## Encabezado IPv4 vs IPv6

### Ventajas del encabezado de IPv6

- Mayor eficacia de enrutamiento para obtener mejor rendimiento y más escalabilidad de - velocidad de reenvío.
- Ausencia de broadcasts, de manera que no existe peligro potencial de tormentas de - broadcasts.
- No hay necesidad de procesar sumas de comprobación.
- Mecanismos de encabezado de extensión más simples y eficaces.
- Rótulos de flujo en función del procesamiento de flujo sin necesidad de abrir el - paquete interno de transporte para identificar los diferentes flujos de tráfico

## Acortar direcciones

Las direcciones en IPv6 se pueden simplificar.

- Los ceros iniciales de los campos son opcionales.
- Por ejemplo, el campo 09C0 es igual a 9C0 y el campo 0000 es igual a 0. De manera que
- 2031:0000:130F:0000:0000:09C0:876A:130B puede escribirse como - 2031:0:130F:0000:0000:9C0:876A:130B.
- Los campos sucesivos de ceros pueden representarse con doble dos puntos "::". Sin - embargo, este método de abreviación sólo puede utilizarse una vez en una dirección. - Por ejemplo
- 2031:0:130F:0000:0000:9C0:876A:130B puede escribirse como
- 2031:0:130F::9C0:876A:130B.
- Una dirección no especificada se escribe "::" porque sólo contiene ceros

El uso de la notación "::" reduce el tamaño de la mayoría de direcciones
Un analizador de direcciones identifica la cantidad de ceros faltantes

## Ejemplos

- FF01:0:0:0:0:0:0:1 se convierte en FF01::1
- 0:0:0:0:0:0:0:1 se convierte en ::1
- 0:0:0:0:0:0:0:0 se convierte en ::
- FF01:0000:0000:0000:0000:0000:0000:1 = FF01:0:0:0:0:0:0:1 = FF01::1
- E3D7:0000:0000:0000:51F4:00C8:C0A8:6420 = E3D7::51F4:C8:C0A8:6420
- 3FFE:0501:0008:0000:0260:97FF:FE40:EFAB = 3FFE:501:8:0:260:97FF:FE40:EFAB = 3FFE:501:8::260:97FF:FE40:EFAB

## Máscaras

- Las máscaras son expresadas de la misma forma que en la notación CIDR utilizada en - IPv4.
- En IPv6 la longitud del prefijo indica bits comunes del PREFIJO que no se deben - cambiar (identifican unívocamente a cualquier clase de la DIRECCION IPv6)
- En las redes IPv6 el prefijo es siempre /64 (fijo)
- Un prefijo de dirección IPv6 se representa con la siguiente notación
- Dirección/prefijo
- Dirección: IP en cualquiera de las notaciones mencionadas anteriormente.
- Prefijo: especifica cuantos de los bits representan el prefijo de la dirección

## Tipos de direcciones IPv6

### Espacio de direcciones

- La IANA divide el espacio disponible en 8 segmentos iguales
- Los grupos están basados en los 3 primeros bits de dirección
- Solo una octava parte del espacio disponible ha sido reservado para utilizarse como - direcciones globales unicast
- Se han creado 4 subgrupos más pequeños:
- Unique local unicast
- Link-local unicast
- Muticast
- Otros

### Tipos de direcciones

- Las direcciones identifican interfaces individuales o conjuntos de interfaces. 3 tipos:
- Unicast identifican a 1 sola interfaz. Un paquete enviado es entregado sólo a la - interfaz identificada
- Dirección unicast local de sitio (privada): No es enrutable fuera de la red. Es el - equivalente a la ipv4 privada. NO RECOMENDADO SU USO.
- Dirección unicast local exclusiva. Sustituyen a las anteriores.
- Dirección unicast local de enlace (privada): Para tareas internas.
- Dirección unicast global (pública): Es única en el mundo, por lo que se pueden enrutar - a nivel mundial sin ninguna modificación.
- Anycast identifican a un conjunto de interfaces. Un paquete enviado a una dirección - anycast, será entregado a alguna de las interfaces identificadas con la dirección del - conjunto al cual pertenece esa dirección anycast.
- Multicast identifican un grupo de interfaces. Cuando un paquete es enviado a una - dirección multicast es entregado a todos las interfaces del grupo identificadas con - esa dirección.

### Formato de tipos de direcciones

En el IPv6 no existen direcciones broadcast, su funcionalidad ha sido mejorada por las direcciones multicast.
16
IP versión 6
Tipos de direcciones
Tipo de dirección
Comienzo en binario
Comienzo en hexadecimal
Dirección
Reservada
0000 0000
00
::/8
Unicast Global
001
2 ó 3
2000::/3
Unicast local exclusiva
1111 1101
FD
FD00::/8
Unicast Enlace Local
1111 1110 10
FE8 hasta FEB
FE80::/10
Unicast Sitio Local
1111 1110 11
FEC hasta FEF
FEC0::/10
Multicast
1111 1111
FF
FF00::/8
17

#### Dirección de enlace local (link local)

- Autogenerada (en forma de IPv4 APIPA)
- En implementación, los primeros 64 bits son siempre `FE80::/64`
- Identificador de interfaz: los segundos 64 bits
- Desde Windows Vista, los clientes de Windows han generado un número aleatorio de 64 bits
- Los SO antiguos usan la dirección MAC de un dispositivo para crear un identificador único ampliado (EUI-64)

##### Comprobación de dirección de enlace local

En windows podemos ver la **dirección IPv6 local**.

```
Adaptador de Ethernet Ethernet:

   Sufijo DNS específico para la conexión. . :
   Descripción . . . . . . . . . . . . . . . : Realtek PCIe GBE Family Controller
   Dirección física. . . . . . . . . . . . . : D4-3D-7E-4E-67-DF
   DHCP habilitado . . . . . . . . . . . . . : no
   Configuración automática habilitada . . . : sí
   
   Vínculo: dirección IPv6 local. . . : fe80::9100:9f39:2f3b:b256%13(Preferido)
   Dirección IPv4. . . . . . . . . . . . . . : 192.168.1.2(Preferido)
   Máscara de subred . . . . . . . . . . . . : 255.255.255.0
   Puerta de enlace predeterminada . . . . . : 192.168.1.1
   IAID DHCPv6 . . . . . . . . . . . . . . . : 47463806
   DUID de cliente DHCPv6. . . . . . . . . . : 00-01-00-01-20-08-31-36-D4-3D-7E-4E-67-DF
   Servidores DNS. . . . . . . . . . . . . . : 80.58.61.254
                                       80.58.61.250
   NetBIOS sobre TCP/IP. . . . . . . . . . . : habilitado
```

#### Dirección unicast global

- Se requiere una dirección global unicast para acceder a Internet. Dirección unicast - global actual asignada por IANA utiliza el rango de direcciones que comienzan con el - valor binario 001 (2000::/3).
- Se organizan las direcciones de forma jerárquica. Compuestas por prefijo de - enrutamiento global de 48 bits + ID de subred de 16 bits.
- Las organizaciones individuales pueden utilizar un campo de subred de 16 bits para - crear su propia jerarquía de direccionamiento local (hasta 65.535 subredes)
- IANA está asignando espacio de direcciones IPv6 en los rangos de `2001::/16` a los cinco -registros RIR (ARIN, RIPE, APNIC, LACNIC y AfriNIC).

#### Dirección unicast global (ejemplo de funcionamiento)

- Un ordenador con IPv6 arranca y envía un mensaje solicitation a (`FF02::2`)
- El router envía el prefijo (`2001:470:B8F9:1/64`)
- El ordenador coge el prefijo y le añade el identificador de interfaz o una dirección - EUI-64. Ejemplo EUI-64: 20C:29FF:FE53:45CA
- La dirección global unicast es el resultado de combinar ambas: 2001:470:B8F9:1:20C:29FF:FE53:45CA

#### Direcciones anycast

- ¿Qué es una dirección anycast?
- Identifica a un conjunto de interfaces. Se le asigna a un grupo de ordenadores la misma IP
- Un paquete enviado a una dirección anycast solo se encamina a la interfaz del grupo más próxima al origen
- ¿Cómo es una dirección anycast?
- Una dirección unicast atribuida a más de una interfaz se transforma en una dirección - anycast.
- Se atribuyen a partir del rango de direcciones unicast.
- Ejemplos de uso
- Se puede usar para descubrir servicios de red (DNS, proxies)
- Garantizan la redundancia y/o balanceo de carga, entre otros usos

#### Direcciones multicast

- ¿Qué es una dirección multicast?
- Identifica a un grupo de interfaces. Cada interfaz puede pertenecer a más de un grupo.
- Los paquetes enviados a direcciones multicast se entregan a todas las interfaces del - grupo.
- Solo se transporta una copia de los datos a todos los elementos. Reduce utilización de la red. Todos los nodos IPv6 deben soportar multicast
- Formato de dirección
- La dirección deriva del bloque FF00::/8
- Prefijo FF + 4 bits de flag + 4 bits que definen el alcance de la dirección.
- 112 bits restantes identifican al grupo multicast
- Posibles aplicaciones: video bajo demanda, actualizaciones de software, juegos

#### Direcciones especiales

##### Dirección de loopback

- Igual que en IPv4, se hizo una reserva de una dirección especial de loopback IPv6 para hacer pruebas
Los datagramas que se envían a esta dirección regresan al dispositivo emisor y forman así un bucle de retorno o "loopback".
- Sin embargo, en IPv6 hay sólo una dirección y no todo un bloque para esta función. La dirección de loopback es 0:0:0:0:0:0:0:1, que normalmente se expresa mediante la compresión de ceros como "::1".

##### Dirección no especificada

- En IPv4, una dirección IP compuesta únicamente por ceros tiene un significado - especial: hace referencia al mismo host y se utiliza cuando un dispositivo no conoce - su propia dirección. En IPv6, este concepto se formalizó y la dirección compuesta - únicamente por ceros (0:0:0:0:0:0:0:0) se denomina dirección "no especificada".
- Normalmente se utiliza en el campo de origen de un datagrama que envía un dispositivo - que desea configurar su dirección IP.
- Es posible aplicar compresión de direcciones en esta dirección, lo que la convierte - simplemente en "::".

## Transición de IPv4 a IPv6

- ¿Qué va a pasar ahora?
- IPv4 coexistirá durante un tiempo con IPv6
- Será reemplazado gradualmente por IPv6
- Por suerte IPv6 incluye técnicas de migración para diferentes casos
- ¿Qué podemos hacer mientras dura la transición?
- Existen diferentes técnicas. Consejo actual:
- Usar stack doble cuando pueda
- Tunneling cuando no tenga otra opción

### Dual stack

- ¿En qué consiste la pila doble (dual stack)?
- En este sistema un equipo tiene implementados los protocolos IPv4 y para IPv6 y - conectividad para ambos.
- Es la opción recomendada y uno de los métodos más utilizados.
- Requiere que se ejecuten IPv4 e IPv6 simultáneamente. Router y switches se configuran - para admitir ambos protocolos
- Se usa IPv4 o IPv6 en función de la dirección de destino del paquete. Se debe preferir - utilizar IPv6 cuando esté disponible.
- Aplicaciones antiguas que sólo admiten IPv4 siguen funcionando igual que antes. - Aplicaciones nuevas y las codificadas aprovechan las dos capas IP.
- Desventajas
- Disminución del desempeño de los equipos de red. Deben mantener tablas de direcciones y rutas independientes para cada protocolo
IP versión 6
Transición
28

### Tunneling

- Se encapsulan los paquetes ipv6 (que no es soportado) dentro de paquetes del protocolo ipv4.
- Los paquetes viajan por una red IPv4 y en el otro extremo se extrae el paquete IPv6 original.
- Técnica de integración y transición intermedia (no definitiva)
- El objetivo final debe ser una arquitectura IPv6 nativa.

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

En IPv6 existen diferentes tipos de direcciones IP según el uso. La **IANA** se encarga de repartir las direcciones IP unicast globales entre los diferentes registros regionales o **RIR**. En su página web tienen un esquema de la repartición de los diferentes bloques de direcciones IP a los RIR.

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

La **IANA** es la responsable de coordinar el espacio de direcciones IP a nivel mundial. Hoy en día existen 2 tipos principalmente: IPs de versión 4 e IPs de versión 6.

En la web de la IANA se puede encontrar el espacio de direcciones y su estructura en IPv6 . Como ejemplo:

El espacio de direcciones `2000::/3` está destinado a direcciones **unicast globales**.

Existen otros espacios de direcciones para multicast,  direccuibes unicast locales y para enlaces locales.

Las direcciones se asignan jerárquicamente. En general:

- La IANA reparte bloques IP entre los diferentes registros de internet regionales o RIR. Existen 5 englobados por continentes. Para España, el RIR de referencia es el RIPE NCC.
- En segundo lugar las RIR reparten bloques de IP a los proveedores de servicio o ISP. Podemos ver la lista de miembros (local internet registries) asociados a RIPE en España
- En última estancia, los ISP reparten las direcciones IP a los usuarios finales.

Como curiosidad, en la propia página del RIPE podemos introducir una IP pública y conocer, entre otros datos, a que ISP pertenece. También podemos ver un mapa de geolocalización de las IP de la red al que pertenece la nuestra.

mapa geolocalizacion IPs

Por lo visto parecen bloques destinados a la zona del levante Español. Pertenece a un bloque asignado al operador de /14, que daría espacio para más de 260.000 direcciones.

![mapa geo](mapa-geolocalizacion-ips.png)