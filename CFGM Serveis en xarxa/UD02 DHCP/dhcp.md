Configuración automática de direccionesDHCP
Servicios en red
CFGM Sistemas microinformáticos y redes (SMX)
IES Francesc de Borja Moll
Daniel Moreno <danimrprofe@gmail.com>
DHCP

- [Introducción](#introducci%C3%B3n)
- [Inconvenientes configuración manual](#inconvenientes-configuraci%C3%B3n-manual)
- [Ventajas de la configuración automática](#ventajas-de-la-configuraci%C3%B3n-autom%C3%A1tica)
- [Parámetros de configuración](#par%C3%A1metros-de-configuraci%C3%B3n)
  - [Parámetros obligatorios](#par%C3%A1metros-obligatorios)
  - [Parámetros opcionales](#par%C3%A1metros-opcionales)
- [Tipos de asignaciones](#tipos-de-asignaciones)
- [Concesiones](#concesiones)
  - [Asignación automática](#asignaci%C3%B3n-autom%C3%A1tica)
  - [Asignación dinámica](#asignaci%C3%B3n-din%C3%A1mica)
  - [Asignación estática con reserva](#asignaci%C3%B3n-est%C3%A1tica-con-reserva)
- [Ámbito](#%C3%A1mbito)
- [Intervalo de exclusión](#intervalo-de-exclusi%C3%B3n)
- [Conjunto de direcciones](#conjunto-de-direcciones)
- [Reserva](#reserva)
- [Concesión](#concesi%C3%B3n)
  - [Caducidad de la concesión](#caducidad-de-la-concesi%C3%B3n)
- [Funcionamiento general](#funcionamiento-general)
- [Proceso de asignación de IP a un cliente](#proceso-de-asignaci%C3%B3n-de-ip-a-un-cliente)
  - [En el estado inicial](#en-el-estado-inicial)
  - [En el estado de inicialización](#en-el-estado-de-inicializaci%C3%B3n)
  - [En el estado de solicitud](#en-el-estado-de-solicitud)
  - [En el estado de solicitud](#en-el-estado-de-solicitud-1)
  - [En el estado de enlace:](#en-el-estado-de-enlace)
- [Proceso de renovación de IP a un cliente](#proceso-de-renovaci%C3%B3n-de-ip-a-un-cliente)
- [Renovación de IP (Temporizadores)](#renovaci%C3%B3n-de-ip-temporizadores)
- [Autoconfiguración de red sin DHCP](#autoconfiguraci%C3%B3n-de-red-sin-dhcp)
- [Agentes de reenvío](#agentes-de-reenv%C3%ADo)
- [Problemática](#problem%C3%A1tica)

# Introducción

DHCP (Dinamic Host Configuration Protocol) es un servicio basado en el modelo cliente/servidor.

- Forma parte del protocolo TCP/IP.
- Permite a los ordenadores de una red obtener los parámetros de configuración de red automáticamente.

¿Cómo funciona?

Un servidor posee unos rangos de direcciones IP dinámicas y las va asignando a los clientes.
Sabe en todo momento la IP que posee cada interfaz, por asociación a su dirección MAC (Media Access Control)

# Inconvenientes configuración manual

- En cada equipo se ha de asignar la dirección IP de manera manual
- Al ser manual, pueden asignarse IP incorrectas o no válidas
- Si hay errores, surgirán problemas en la red.
- Lleva mucho trabajo cambiar los equipos de sitio

# Ventajas de la configuración automática

- Las direcciones IP son asignadas por el servidor DHCP automáticamente a cada equipo que la solicite.
- Al automatizar la asignación, estará libre de errores.
- No habrá problemas en la red.
- Los cambios de la estructura de la red se reflejan de manera automática al actualizarse cada cliente.

# Parámetros de configuración

## Parámetros obligatorios

- Dirección IP del cliente.
- Máscara de subred del cliente.
- Tiempo de concesión o duración de la licencia (lease time).
- Tiempo de renovación de la licencia (renewal time).
- Tiempo de reconexión (rebinding time).

## Parámetros opcionales

- Dirección IP de la puerta de enlace. 
- Direcciones IP de los servidores DNS. 
- Nombre de dominio DNS. 
- Dirección de broadcast en la red. 
- Otros: Nombre del servidor WINS.  MTU para el adaptador de red. 

# Tipos de asignaciones

Tipo de asignación DHCP es el mecanismo por el cual un servidor DHCP decide:

- La IP que tiene que entregar a un cliente 
- Durante cuánto tiempo concede una licencia o autorización al cliente para que use esa IP.
La IP que asigna el servidor al cliente
- Puede ser elegida dentro de un conjunto posible de direcciones IP
- Puede ser obligatoriamente una IP concreta. 

# Concesiones

Cuando un cliente DHCP recibe de un servidor una IP para que la utilice, se dice que recibe una concesión.

La concesión puede asignarse por tiempo limitado o por tiempo ilimitado. 

El protocolo DHCP establece la posibilidad de utilizar en los servidores DHCP tres técnicas de asignación DHCP
Tipos de asignaciones

En una configuración de un servidor DHCP se pueden mezclar los tres métodos de asignación de IP anteriores.

## Asignación automática

Se cede una IP libre con los demás valores a un cliente la primera vez que lo solicita 
Se mantendrá hasta que el cliente la libere. 
Suele utilizarse este procedimiento cuando el número de clientes no varía demasiado.

## Asignación dinámica

Se cede una dirección IP libre de manera temporal
El plazo de cesión varía según la frecuencia de altas y bajas de clientes, así como de la cantidad de direcciones disponibles.
Es el sistema habitual entre los ISP

## Asignación estática con reserva

Se asigna la misma dirección IP a un ordenador concreto. 
Se trata de un modo de configuración parecido al manual. 
Se utiliza en aquellos casos en que se desea controlar la asignación de direcciones IP de manera estricta. 
De esta manera, se impide la conexión de clientes no identificados.

# Ámbito

Intervalo consecutivo completo de las direcciones IP posibles de una red y su máscara de subred.
Normalmente, los ámbitos definen una subred física de la red a la que se ofrecen los servicios DHCP.
Los ámbitos permiten al servidor administrar la distribución y asignación de direcciones IP, así como los parámetros de configuración relacionados a los clientes de la red.

# Intervalo de exclusión

Secuencia limitada de direcciones IP excluidas del ámbito DHCP.
Aseguran que el servidor no ofrecerá las direcciones de estos intervalos a los clientes DHCP de la red.
Ejemplo:
En el ámbito definido en el punto anterior, deseamos excluir las direcciones de la 195.162.230.150 hasta la 195.162.230.160.

# Conjunto de direcciones

Conjunto formado por las direcciones del ámbito quitando el/los intervalos de exclusión.
En cuanto se asignan las direcciones, se eliminan del conjunto.
Si se liberan, se vuelven a agregar al conjunto
El servidor puede elegir las direcciones del grupo para su asignación dinámica a los clientes DHCP de la red.
Conjunto de direcciones

Ejemplo:

- Ámbito: De 192.168.1.10 hasta 192.168.1.20
- Exclusión: De 192.168.1.15 hasta 192.168.1.17
- IPs asignadas a equipos: 192.168.1.10 y 11
- Conjunto de direcciones: 192.168.1.12,13,14,18,19,20

# Reserva

Dirección IP fija
Perteneciente al intervalo de exclusión
Se asignará de forma estática e indefinida a un dispositivo hardware de la subred por parte del servidor DHCP.
Suelen basarse en parámetros como la MAC del cliente
Las reservas 
Aseguran que dicho dispositivo hardware siempre podrá utilizar la misma dirección IP.
Reserva

# Concesión

Periodo de tiempo durante el cual un equipo puede utilizar una IP asignada.

Lo especifica el servidor DHCP (en segundos). 600 = 10 minutos.
Cuando se realiza una concesión a un cliente, la concesión está activa.

## Caducidad de la concesión

- Antes de que caduque, el cliente necesitará renovarla en el servidor.
- La duración de una concesión determina cuándo caducará y la frecuencia con la que el cliente necesita renovarla en el servidor
- La concesión queda inactiva cuando caduca o cuando se elimina del servidor.
- Cuando el servidor comprueba una concesión del cliente, comprueba no solo la duración, sino toda la configuración.

# Funcionamiento general

El protocolo DHCP define un conjunto de mensajes que se intercambian el cliente y el servidor DHCP para que el primero consiga una configuración de red sin intervención humana.
El servidor DHCP escucha en el puerto 67 (UDP). El cliente DHCP, a través del puerto 68 (UDP), envía mensajes para que algún servidor DHCP activo le conteste 
Cada red debe tener un servidor DHCP configurado y activo, que almacena tablas con las direcciones IP.
El cliente recibe ofertas, elige una, y lo comunica a todos los servidores (difusión). El servidor elegido le contesta con un mensaje que incluye:

# Proceso de asignación de IP a un cliente

## En el estado inicial

El cliente envía una trama de difusión con el mensaje DHCPDISCOVER a la red para detectar los servidores DHCP activos. 
Esta trama lleva incluida la MAC física de origen de la interfaz de red.

## En el estado de inicialización

Los servidores activos responden al cliente con un mensaje DHCPOFFER 
Incluye una oferta de configuración. 
Cliente puede recibir más de un mensaje DHCPOFFER (diferentes servidores disponibles)
Durante el estado de selección
Se analizan las diferentes ofertas recibidas 
Se elige la primera que se haya recibido y que resulte válida.

## En el estado de solicitud

El cliente envía otra trama de difusión con un mensaje DHCPREQUEST que notifica la identidad del servidor seleccionado. 
De este modo, se descartan los demás ofrecimientos recibidos.

## En el estado de solicitud

El servidor DHCP implicado recibe el DHCPREQUEST del cliente
Registra la asignación 
Envía un mensaje DHCPACK al cliente que incluye los parámetros de la configuración asignada junto con la dirección IP.

## En el estado de enlace:

El cliente recibe el mensaje DHCPACK 
Ejecuta la orden ARP con la IP asignada para comprobar que no está duplicada. 
A partir de este momento, el cliente está configurado.

# Proceso de renovación de IP a un cliente

Durante el estado de renovación:

El cliente, antes de que venza el periodo de cesión – por lo general, cuando haya pasado el 50% del tiempo previsto-
Envía un mensaje DHCPRENEW al servidor
Solicita una ampliación del plazo así como el mantenimiento de los valores asignados.
Se inicia el estado de reenlace 
Cuando el cliente se dispone a dejar la IP asignada
Se lo comunica al servidor mediante un mensaje DHCPRELEASE para que conste que desde ese momento queda liberada para cualquier otro dispositivo que la necesite.


# Renovación de IP (Temporizadores)

Lease time (LT) = 86.400 (24 horas)
T1 = 50% de 24 h = 12 h
T2 = 87,5% de 24 h = 21 h
Renewal time (T1)
Al 50% del tiempo (T1) se pedirá renovación se intentará renovar con el servidor DHCP que nos dio la IP
Ocurrirá a las 12 horas (quedando otras 12 horas)
Rebind time (T2)
Si no se obtuvo respuesta a la renovación
Al 87,5% del tiempo (T2) se intentará volver a enlazar con algún servidor enviando un mensaje de broadcast
A las 21 horas (quedando 3 horas)
Autoconfiguración (APIPA)
Autoconfiguración de red sin DHCP

# Autoconfiguración de red sin DHCP

¿Qué sucede en la siguiente situación?
La red no dispone de un servidor DHCP
No se han configurado los parámetros IP de los clientes
Modo sin configuración
Direccionamiento IP privado automático APIPA
Las máquinas pueden automáticamente autoconfigurarse una dirección IP

Rango de direcciones IP 
Definido y asignado al azar:  169.254.0.1 – 169.254.255.254
Se utiliza ARP para confirmar que IP no está en uso
Utilizando máscara de subred de clase B 255.255.0.0
¿Dónde se podrá dar esta situación?
En entornos de trabajo donde no se requiera una conexión externa (menos de 25 clientes)
Normalmente es indicativo de que hay un problema en la configuración DHCP

# Agentes de reenvío

# Problemática

Las solicitudes de asignación de configuración automática de los parámetros de red mediante DHCP las inicia una máquina cuando arranca. 
Se utiliza un mensaje de difusión a la subred, que es respondido por el o los servidores DHCP de la misma.
Los mensajes de difusión no se difunden en entornos enrutados. 
En cada subred en que se utilice DHCP debería haber un servidor DHCP que escuche las solicitudes emitidas.
Agentes de reenvío

DHCP
Solución
Centralizar el servicio DHCP y hacer que un solo servidor proporcione automáticamente IP a clientes de varias redes. 
La solución es utilizar agentes DHCP de retransmisión o reenvío (relay).
Agente DHCP de retransmisión o reenvío 
Dispositivo de la red 
Escucha las solicitudes DHCP que se producen en la red
Las encamina hacia un servidor DHCP que se encuentra en otra red para que éste las atienda. 
Servidor DHCP dará una respuesta que enviará hacia el agente de reenvío y éste a su vez la trasladará al cliente que hizo la petición.
Agentes de reenvío

DHCP
Se puede utilizar un único servidor DHCP siempre que 
Se añada en cada subred un agente de retransmisión 
Este esté adecuadamente configurado. 
El agente de retransmisión estará implementado en un router
Router realiza el encaminamiento entre la red con clientes DHCP y la red en la que se encuentra el servidor DHCP
Si la organización tiene varias redes, puede tener 
Varios agentes de retransmisión 
Un solo servidor DHCP centralizado
También es posible implementar el agente de retransmisión en ordenadores con varios adaptadores de red que hagan funciones de encaminamiento entre cada una de las redes a las que pertenecen.
Agentes de reenvío

DHCP
Para configurar un agente de retransmisión 
Activar el agente de retransmisión en el dispositivo de encaminamiento.
Indicar en el agente de retransmisión 
Cual es la red cliente.
Cual es el servidor DHCP que va a atender las peticiones DHCP.
En el servidor DHCP centralizado debemos 
Configurar varias subredes a las que se da el servicio indicando las direcciones IP que se van a otorgar dentro de cada subred. 
Agentes de reenvío

