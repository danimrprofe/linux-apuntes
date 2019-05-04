Internet es una red que ha sufrido un crecimiento espectacular en los últimos años.
Este crecimiento nada esperado en un principio ha producido dos efectos muy
importantes que están condicionando enormemente el futuro de los protocolos de
la arquitectura TCP/IP:

El espacio de direcciones IPv4 se ha quedado pequeño para permitir la asignación de una única
dirección por equipo conectado.

Por otro lado, los encaminadores conectados en los enlaces principales de Internet han visto
saturadas sus tablas de encaminamiento ante la necesidad de registrar un gTan número de
direcciones de red de destino.

Se espera que estos problemas actuales se solucionen una vez que se haya implantado completamente
IPv6.

Mientras tanto, una solución a corto plazo consiste en utilizar el protocolo CIDR

Classless Inter Domain Routing o Encaminamiento entre Dominios sin Clases).

Con este protocolo, se realiza un mejor aprovechamiento del espacio de direcciones disponibles

Se reducen considerablemente las entradas en las tablas de encaminamiento.

Según CIDR

Las direcciones IPv4 ya no se dividen en clases A, B, C, D y E

La división entre número de red y número de equipo se realiza simplemente especificando el prefijo o la máscara, que ahora
debe acompañar siempre a la dirección.

Los prefijos que se pueden utilizar en las direcciones pueden tener de 13 a 27 bits

De forma que ahora se pueden utilizar direcciones de

Redes que solamente tengan hasta 25 = 32 equipos

Redes con hasta 219 = 524.288 equipos.

¿Y en IPv6?

El protocolo CIDR no funciona sobre IPv6

Esta nueva versión ya se ha definido para que utilice este mismo mecanismo.

En IPv6 se realiza una asignación de direcciones sin clases y las direcciones van acompañadas de un prefijo (especifica los bits
reservados a los equipos, al revés que IPv4)

El mecanismo CIDR

Realiza un mejor aprovechamiento del espacio de direcciones IPv4 disponible

No se desperdician los bits que se utilizan para identificar clases de direcciones

Hace uso de los rangos de direcciones que antes estaban reservados a las clases D y E.

Agregación de una ruta

Al incluir el prefijo de red junto con la dirección

El encaminador

Sabe cuál es la división que se aplica entre número de red y número de equipo.

Puede agregar o resumir muchas entradas en una tabla de encaminamiento

Utilizando un prefijo menor y agrupando todas aquellas direcciones que tienen la misma
numeración en la parte que corresponde al identificador de red.

Reducir entradas en las tablas de encaminamiento resulta muy beneficioso, ya que:

Se necesita menor tiempo de cálculo de las rutas (la red funcionará de una forma más eficiente)

El encaminador tiene menos requerimientos de procesador y memoria

Superredes

El esquema de direccionamiento CIDR está enfocado al aprovechamiento de las
direcciones disponibles, evitando despilfarros.

Ejemplo

En un esquema de direcciones con clases, si una empresa necesita asignarse una dirección IPv4 para
su red de 350 equipos, necesitará, como mínimo, una clase B.

Una dirección IPv4 de clase B puede direccionar hasta 216 = 65.536 equipos distintos

Se desperdiciarán más de 65.000 direcciones.

En su lugar

La empresa puede solicitar 2 direcciones de clase C consecutivas

El desperdicio sólo será de 28 + 28 — 350 = 162 direcciones.

Así mismo, estas direcciones de clase C consecutivas

193.16.1.0 y 193.16.2.0 (ejemplo)

Se pueden agrupar en lo que se conoce como una superred

Especificando la parte común de ambas direcciones con el prefijo adecuado (en nuestro ejemplo,
sería 193.16.0.0/15).

Las tablas de encaminamiento

Los equipos ajenos a esta red solamente incluirán una entrada 193.16.0.0/15

Los encaminadores internos de la organización deberán incluir las dos entradas

Máscaras de red de longitud variable

Dadas las limitaciones surgidas por el protocolo IPv4 en lo que respecta a la asignación de direcciones en redes locales e
Internet,

En el año 1987

Apareció el estándar RFC 1009

Especifica las condiciones que deben cumplirse en una red local para que se puedan utilizar diferentes máscaras de subred o una misma
máscara con diferentes longitudes.

Al estándar se le conoce como VLSM

Variable Length Subnet Mask o Máscaras de Subred de longitud Variable

En el año 1985 apareció el estándar RFC 950 de soporte a subredes

Objetivo fundamental de reducir el desperdicio de direcciones IP que ya comenzaban a escasear

Disminuir el espacio de memoria que los nodos de Internet necesitaban para almacenar sus tablas de encaminamiento

Aunque aquel estándar consiguió paliar por algún tiempo los problemas de Internet, su elevado crecimiento puso de
manifiesto esos mismos problemas pocos años después.

Por esta razón, se recurrió al uso del protocolo VLSM (definido en el RFC 1009)

Permite el uso de más de una máscara sobre una misma red local.

Hasta ahora,

El método utilizado para asignar direcciones IP de una red impedía el uso de diferentes máscaras de subred

Solamente puedan “verse” las estaciones que tienen una misma máscara, es decir, una misma longitud en el prefijo de red extendido

Esta situación se puede solucionar con el uso de encaminadores dentro de la misma red, colocando las estaciones que
tienen el mismo prefijo de red extendido y la misma máscara dentro del mismo segmento.

Algoritmos de encaminamiento

Algoritmos de encaminamiento asociados a IPv4, RIP-1, no permiten el uso de múltiples máscaras de subred dentro de una misma red.

Para soportar VLSM, se necesita utilizar un protocolo más avanzado, como RIPv2 (RFC 1388) u OSPF

Máscaras de red de longitud variable

Ventajas por las que es preferible usar más de una máscara de subred para una dirección IP
dada.

Permite un uso más eficiente del espacio de direcciones IP asignado n una LAN, evitando un desperdicio
excesivo.

Reduce significativamente la cantidad de entradas en las tablas de encaminamiento de los nodos internos
de una organización.

La especificación de VLSM

Permite la división recursiva de las direcciones

Ahora pueden existir subredes, sub-subredes, sub-sub-subredes y así sucesivamente.

Cantidad de divisiones limitada por el número de bits disponibles en los campos de número de
estación de las direcciones IPv4.

Esta organización jerárquica establece relaciones entre las direcciones de las subredes: una dirección con
un prefijo de red extendido más largo es más específica y describe un conjunto menor de destinos que
una dirección con un prefijo de red extendido más corto, que se considera menos específica.

Así mismo, también existen encaminadores que se encuentran en zonas menos específicas de la red que
envían paquetes para que otros encaminadores los distribuyan por regiones más específicas.

Por ejemplo, una organización podría dividir su dirección IP asignada en un número de bits
que especifique el edificio, el piso, el departamento y la oficina en la que se encuentra una
cierta estación de la red.

Así, una dirección que gecifique un cierto departamento es más especifica que otra que
solamente especifique el edificio.
