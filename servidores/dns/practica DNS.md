
- [1. Instalación de BIND {#1-instalación-de-bind}](#1-instalaci%C3%B3n-de-bind-1-instalaci%C3%B3n-de-bind)
  - [Paquete servidor bind {#paquete-servidor-bind}](#paquete-servidor-bind-paquete-servidor-bind)
  - [Paquete dnsutils {#paquete-dnsutils}](#paquete-dnsutils-paquete-dnsutils)
- [2. Herramientas de comprobación del funcionamiento DNS {#2-herramientas-de-comprobación-del-funcionamiento-dns}](#2-herramientas-de-comprobaci%C3%B3n-del-funcionamiento-dns-2-herramientas-de-comprobaci%C3%B3n-del-funcionamiento-dns)
  - [Comando nslookup {#comando-nslookup}](#comando-nslookup-comando-nslookup)
  - [Comando dig {#comando-dig}](#comando-dig-comando-dig)
  - [Whois](#whois)
- [3. Archivos de configuración de BIND {#3-archivos-de-configuración-de-bind}](#3-archivos-de-configuraci%C3%B3n-de-bind-3-archivos-de-configuraci%C3%B3n-de-bind)
  - [Principales archivos de configuración](#principales-archivos-de-configuraci%C3%B3n)
- [4. Dominio de la práctica y escenario a implementar](#4-dominio-de-la-pr%C3%A1ctica-y-escenario-a-implementar)
  - [Escenario de la práctica {#escenario-de-la-práctica}](#escenario-de-la-pr%C3%A1ctica-escenario-de-la-pr%C3%A1ctica)
  - [Configuración de opciones {#configuración-de-opciones}](#configuraci%C3%B3n-de-opciones-configuraci%C3%B3n-de-opciones)
- [5. Creación de la zona principal {#5-creación-de-la-zona-principal}](#5-creaci%C3%B3n-de-la-zona-principal-5-creaci%C3%B3n-de-la-zona-principal)
  - [En mi caso, crearemos la zona de la siguiente forma (archivo named.conf.local) {#en-mi-caso-crearemos-la-zona-de-la-siguiente-forma-archivo-named-conf-local}](#en-mi-caso-crearemos-la-zona-de-la-siguiente-forma-archivo-namedconflocal-en-mi-caso-crearemos-la-zona-de-la-siguiente-forma-archivo-named-conf-local)
- [6. Creación de la BD de zona {#6-creación-de-la-bd-de-zona}](#6-creaci%C3%B3n-de-la-bd-de-zona-6-creaci%C3%B3n-de-la-bd-de-zona)
- [7. Configurar DNS en clientes {#7-configurar-dns-en-clientes}](#7-configurar-dns-en-clientes-7-configurar-dns-en-clientes)
  - [Configurar cliente con IP del servidor DNS {#configurar-cliente-con-ip-del-servidor-dns}](#configurar-cliente-con-ip-del-servidor-dns-configurar-cliente-con-ip-del-servidor-dns)
  - [Configuración automática por DHCP {#configuración-automática-por-dhcp}](#configuraci%C3%B3n-autom%C3%A1tica-por-dhcp-configuraci%C3%B3n-autom%C3%A1tica-por-dhcp)
  - [Configuración manual por interfaz gráfica {#configuración-manual-por-interfaz-gráfica}](#configuraci%C3%B3n-manual-por-interfaz-gr%C3%A1fica-configuraci%C3%B3n-manual-por-interfaz-gr%C3%A1fica)
  - [Configuración manual por comandos {#configuración-manual-por-comandos}](#configuraci%C3%B3n-manual-por-comandos-configuraci%C3%B3n-manual-por-comandos)
- [8. Comprobación de resolución petición DNS](#8-comprobaci%C3%B3n-de-resoluci%C3%B3n-petici%C3%B3n-dns)
- [9. Agregación de registros del tipo A {#9-agregación-de-registros-del-tipo-a}](#9-agregaci%C3%B3n-de-registros-del-tipo-a-9-agregaci%C3%B3n-de-registros-del-tipo-a)
- [10. Agregar registros de alias {#10-agregar-registros-de-alias}](#10-agregar-registros-de-alias-10-agregar-registros-de-alias)
    - [Comprobación del alias {#comprobación-del-alias}](#comprobaci%C3%B3n-del-alias-comprobaci%C3%B3n-del-alias)
  - [](#)
- [11. Creación de zonas inversas {#11-creación-de-zonas-inversas}](#11-creaci%C3%B3n-de-zonas-inversas-11-creaci%C3%B3n-de-zonas-inversas)
  - [Zona 192.168.0 {#zona-192-168-0}](#zona-1921680-zona-192-168-0)
    - [Agregar zona al archivo named.conf.local {#agregar-zona-al-archivo-named-conf-local}](#agregar-zona-al-archivo-namedconflocal-agregar-zona-al-archivo-named-conf-local)
    - [Agregar registros al archivo db.192.168.0 {#agregar-registros-al-archivo-db-192-168-0}](#agregar-registros-al-archivo-db1921680-agregar-registros-al-archivo-db-192-168-0)
    - [Comprobar la zona inversa {#comprobar-la-zona-inversa}](#comprobar-la-zona-inversa-comprobar-la-zona-inversa)
  - [Zona 192.168.1 {#zona-192-168-1}](#zona-1921681-zona-192-168-1)
    - [Agregar zona al archivo named.conf.local {#agregar-zona-al-archivo-named-conf-local}](#agregar-zona-al-archivo-namedconflocal-agregar-zona-al-archivo-named-conf-local-1)
    - [Archivo db.192.168.1 {#archivo-db-192-168-1}](#archivo-db1921681-archivo-db-192-168-1)
    - [Comprobar la zona inversa {#comprobar-la-zona-inversa}](#comprobar-la-zona-inversa-comprobar-la-zona-inversa-1)
- [12. Archivo de configuración de BIND incluyendo todas las zonas (named.conf.local) {#12-archivo-de-configuración-de-bind-incluyendo-todas-las-zonas-named-conf-local}](#12-archivo-de-configuraci%C3%B3n-de-bind-incluyendo-todas-las-zonas-namedconflocal-12-archivo-de-configuraci%C3%B3n-de-bind-incluyendo-todas-las-zonas-named-conf-local)
- [13. Comprobar las configuraciones {#13-comprobar-las-configuraciones}](#13-comprobar-las-configuraciones-13-comprobar-las-configuraciones)
  - [Comprobación del archivo de configuración](#comprobaci%C3%B3n-del-archivo-de-configuraci%C3%B3n)
  - [Comprobación de zona {#comprobación-de-zona}](#comprobaci%C3%B3n-de-zona-comprobaci%C3%B3n-de-zona)
- [Conectar al servidor apache utilizando DNS](#conectar-al-servidor-apache-utilizando-dns)
  - [Conectar desde el cliente al servidor HTTP](#conectar-desde-el-cliente-al-servidor-http)
  - [Modificar el archivo de configuración de la zona {#modificar-el-archivo-de-configuración-de-la-zona}](#modificar-el-archivo-de-configuraci%C3%B3n-de-la-zona-modificar-el-archivo-de-configuraci%C3%B3n-de-la-zona)

## 1. Instalación de BIND {#1-instalación-de-bind}

### Paquete servidor bind {#paquete-servidor-bind}

En un terminal, introduzca el siguiente comando para instalar dns:

    sudo apt install bind9

Otro paquete útil para hacer pruebas y resolver problemas DNS es el paquete dnsutils. 

### Paquete dnsutils {#paquete-dnsutils}

    sudo apt install dnsutils

Las principales utilidades que usaremos para hacer pruebas son:

*   **dig**, hace peticiones al DNS de varias manera
*   **nslookup**, la manera antigua de hacerlo

## 2. Herramientas de comprobación del funcionamiento DNS {#2-herramientas-de-comprobación-del-funcionamiento-dns}


### Comando nslookup {#comando-nslookup}

Ejecutamos una consulta nslookup

![alt_text](images/Pr-ctica-DNS1.png "image_tooltip")

Ejemplo de consulta **nslookup** en Windows (nslookup google.com)

```ps
Servidor:  254.red-80-58-61.staticip.rima-tde.net
Address:  80.58.61.254

Respuesta no autoritativa:
Nombre:  google.com
Addresses:  2a00:1450:4003:809::200e
          172.217.168.174
```

### Comando dig {#comando-dig}

También podemos probar con un dig:

![alt_text](images/Pr-ctica-DNS3.png "image_tooltip")

Ejemplos:

- Consultar a un servidor DNS en concreto: `dig @192.168.0.1 google.es`
- Consultar el registro SOA de una zona: `dig @192.168.0.1 google.es SOA`

### Whois

Es un protocolo que permite realizar consultas para obtener información sobre usuario, empresa u organización que registra un nombre de dominio o una IP. Se puede consultar a través de internet, como por ejemplo:

[https://whois.icann.org](https://whois.icann.org)

![alt_text](images/Pr-ctica-DNS4.png "image_tooltip")

También podríamos instalar el paquete **whois **en Linux para realizar consultas.

## 3. Archivos de configuración de BIND {#3-archivos-de-configuración-de-bind}

### Principales archivos de configuración 

Los archivos de configuración se suelen encontrar en `/etc/bind/`.

El archivo de configuración del DNS es el archivo `/etc/bind/named.conf`, pero este hace referencia a otros cuantos archivos como por ejemplo:

- Archivo **named.conf**: Archivo principal de configuración
- Archivo **named.conf.options**: Opciones genéricas
- Archivo **named.conf.local**: Especificación particular de este servidor DNS
- Archivo **db.127**: especificación dirección de retorno
- Archivo **db.root:** DNS de nivel superior
- Otros archivos: db.0, db.255, db.empty, db.local, rndc.conf, rndc.key, zones.rfc1918

No necesitamos modificar todos los archivos, solo algunos de ellos

## 4. Dominio de la práctica y escenario a implementar 

Por razones de accesibilidad y organizativas, deseamos asignar un nombre a todos los equipos de nuestra red, para lo que instalaremos un servidor DNS privado con un **dominio ficticio**, por ejemplo 'iesdmoreno.org'. Todos los PCs de nuestra red pertenecerán a dicho dominio ficticio que funcionará solo en nuestra red interna, no en Internet. 

### Escenario de la práctica {#escenario-de-la-práctica}

La zona que vamos a configurar en nuestro servidor DNS es la siguiente. El servidor será el responsable de responder a todas las consultas de esta zona.

![drawing](https://docs.google.com/a/google.com/drawings/d/12345/export/png)

En tal caso el nombre completo de los PCs terminará con 'iesdmoreno.org''. Lo ideal en una situación así es disponer de un servidor DNS que sea maestro de nuestro dominio, es decir, maestro del dominio interno 'iesdmoreno.org''.

Nuestro servidor DNS maestro para nuestro dominio ficticio interno 'iesdmoreno.org'' será capaz de resolver peticiones internas de nombres de este dominio, tanto de forma directa como de forma inversa, es decir:

*   Si recibe una consulta acerca de quién es **eso.secundaria.iesdmoreno.org** deberá devolver su IP, pongamos por ejemplo **192.168.1.3**. 
*   Si la consulta es una consulta DNS inversa acerca de quién es **192.168.0.4**, deberá responder **informatica.fp.iesdmoreno.org.** 

Por ello deberemos añadir en el archivo /etc/bind/named.conf.local la especificación de maestro para el dominio y para la resolución inversa, por ejemplo

### Configuración de opciones {#configuración-de-opciones}

Las opciones de configuración las podemos encontrar en `/etc/bind/named.conf.options`. En nuestro caso lo único que vamos a cambiar es el parámetro directory:

    directory "/etc/bind/cache/"

## 5. Creación de la zona principal {#5-creación-de-la-zona-principal}

La siguiente entrada es el registro SOA. Indica que este servidor es la mejor fuente de información para los datos de esta zona. Nuestro servidor es autoritativo para la zona **iesdmoreno.org** debido a que incluiremos este registro SOA. 

Debe haber uno, y solo un registro SOA en cada archivo de zona.

### En mi caso, crearemos la zona de la siguiente forma (archivo named.conf.local) {#en-mi-caso-crearemos-la-zona-de-la-siguiente-forma-archivo-named-conf-local}

```dns
zone "iesdmoreno.org" in {
type master; // este servidor será maestro
file "db.iesdmoreno.org"; // en este archivo crearemos los registros de la zona
};
```

A continuación crearemos en **/etc/bind/cache** el archivo de zona. 

    mkdir /etc/bind/cache
    cd /etc/bind/cache/
    nano db.iesdmoreno.org

## 6. Creación de la BD de zona  {#6-creación-de-la-bd-de-zona}

Crearemos un archivo para la zona iesdmoreno.org llamado “db.iesdmoreno.org”. Si tenemos la configuración por defecto, o crearemos en la carpeta **/etc/bind/cache/.**Añadimos el registro SOA al archivo db.iesdmoreno.org.

Este registro describe las propiedades globales de la zona o dominio. Solo debe haber un registro _SOA_ en un fichero de zona y tiene que ser el primer RR. 

```
iesdmoreno.org. 	**IN SOA** 	ns1.iesdmoreno.org. dmoreno.iesdmoreno.org. (
2018111901;
3h;
1h;
1w;
1h;
)
```

Agregamos los RR del tipo nameserver NS. Uno por cada servidor de nombres autoritativo en la zona.

    iesdmoreno.org.	IN	NS	ns1.iesdmoreno.org.

Estos registros indican que tenemos dos nameservers para la zona iesdmoreno.org. Los dos nameservers son ns1.iesdmoreno.org y ns2.iesdmoreno.org.

Posteriormente, mapeamos los nombres a direcciones. Añadimos los siguientes RR del tipo A al archivo db.iesdmoreno.org.

    ns1.iesdmoreno.org.		IN	A	192.168.X.10

Reiniciar servidor: 

    systemctl restart bind9

## 7. Configurar DNS en clientes {#7-configurar-dns-en-clientes}

### Configurar cliente con IP del servidor DNS {#configurar-cliente-con-ip-del-servidor-dns}

Para que todo funcione, necesitamos decirle al cliente dónde se encuentra el servidor DNS que acabamos de configurar, para que dirija allí sus peticiones. Lo podemos hacer manualmente o cambiando la configuración del servidor DHCP.

![alt_text](images/Pr-ctica-DNS5.png "image_tooltip")

Como podemos ver, ahora la primera DNS es la del servidor (192.168.0.10). En caso de no encontrar algo o de que esté caído ese servidor, buscará en 8.8.8.8.

### Configuración automática por DHCP {#configuración-automática-por-dhcp}

Aprovechando que los clientes obtienen sus parámetros de red mediante DHCP, podemos:

1. Modificar el archivo de configuración (/etc/dhcp/dhcpd.conf) e incluir como DNS primaria la del servidor DNS.
2. Reiniciar el servidor (systemctl restart isc-server-dhcp)
3. Desactivar y activar la interfaz de red en el cliente, para forzar una petición DHCP. Si todo es correcto, la máquina cliente conservará la IP pero los parámetros que han cambiado se actualizarán.

<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Pr-ctica-DNS6.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Pr-ctica-DNS6.png "image_tooltip")

### Configuración manual por interfaz gráfica {#configuración-manual-por-interfaz-gráfica}

Podemos cambiar los parámetros a manuales en la interfaz gráfica e incluir la IP del servidor DNS como primera DNS, dejando 8.8.8.8 como la segunda. Si hacemos esto tendremos que configurar todos los parámetros a mano (IP, máscara, gateway, etc.), por lo que si la tenemos por DHCP puede no ser lo más recomendable.

### Configuración manual por comandos {#configuración-manual-por-comandos}

En el cliente tendremos que modificar la configuración del resolver para añadir la IP del servidor DNS que acabamos de configurar.

Para ello, editaremos el archivo y agregaremos “nameserver X.X.X.X”, con la IP donde se encuentra escuchando el servidor DNS.

    nano /etc/resolvconf/resolv.conf.d/head

Recargamos para que los cambios tengan efecto

    resolvconf -u

## 8. Comprobación de resolución petición DNS 

Comprobación con nslookup

<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Pr-ctica-DNS7.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Pr-ctica-DNS7.png "image_tooltip")

Comprobación con dig

<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Pr-ctica-DNS8.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Pr-ctica-DNS8.png "image_tooltip")



## 9. Agregación de registros del tipo A {#9-agregación-de-registros-del-tipo-a}

Estos registros, relacionarán un nombre de dominio con una IP de host

```
server						IN	A	192.168.0.10
ns2.iesdmoreno.org.				IN	A	192.168.1.2
peluqueria.fp.iesdmoreno.org.		IN	A	192.168.0.3
informatica.fp.iesdmoreno.org.		IN	A	192.168.0.4
eso.secundaria.iesdmoreno.org.		IN	A	192.168.1.3
bachillerato.secundaria.iesdmoreno.org.	IN	A	192.168.1.4
```

**Comprobamos configuración**

Vamos a comprobar que el archivo de configuración está bien escrito y no tiene errores.

    named-checkzone iesdmoreno.org /etc/bind/cache/db.iesdmoreno.org

**Recargamos el servidor DNS y comprobamos algunas de las direcciones**

    service bind9 reload

## 10. Agregar registros de alias {#10-agregar-registros-de-alias}

El registro de CNAME es un tipo de registro de recursos en el Sistema de nombres de dominio (DNS) que asigna un nombre de dominio a otro, denominado nombre canónico.

Esto puede resultar conveniente cuando se ejecutan múltiples servicios (como un servidor FTP y un servidor web; cada uno se ejecuta en diferentes puertos).

Si la dirección IP cambia alguna vez, solo hay que registrar el cambio en un lugar dentro de la red: en el registro DNS A.

Los registros CNAME siempre deben apuntar a otro nombre de dominio, nunca directamente a una dirección IP.

```
;Alias \
 \
www..iesdmoreno.org.        	**IN**    CNAME     iesdmoreno.org. \
ftp.iesdmoreno.org.        	**IN**    CNAME     iesdmoreno.org. \
pel.iesdmoreno.org.       	**IN**    CNAME   	 peluqueria.fp.iesdmoreno.org. \
inf.iesdmoreno.org.       	**IN**    CNAME     informatica.fp.iesdmoreno.org. \
eso.iesdmoreno.org.        	**IN**    CNAME     eso.secundaria.iesdmoreno.org.
```

#### Comprobación del alias {#comprobación-del-alias}

<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Pr-ctica-DNS9.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/Pr-ctica-DNS9.png "image_tooltip")

### 

## 11. Creación de zonas inversas {#11-creación-de-zonas-inversas}

Las zonas inversas nos permiten obtener el nombre de dominio asociado a una IP concreta (lo inverso de una consulta DNS normal).

### Zona 192.168.0 {#zona-192-168-0}

#### Agregar zona al archivo named.conf.local {#agregar-zona-al-archivo-named-conf-local}

```
zone "0.168.192.in-addr.arpa" in {
type master;
file "db.192.168.0";
};
```

#### Agregar registros al archivo db.192.168.0 {#agregar-registros-al-archivo-db-192-168-0}

```
$TTL **_3h_** \
; Origin added to names not ending \
; in a dot: 0.168.192.in-addr.arpa \
 \
; Registro SOA \
 \
0.168.192.in-addr.arpa. IN SOA ns1.iesdmoreno.org. dmoreno.iesdmoreno.org. ( \
	1 ; Serial \
	**_3h_** ; Refresh after 3 hours \
	**_1h_** ; Retry after 1 hour \
	**_1w_** ; Expire after 1 week \
	**_1h_**  \
) ; Negative caching TTL of 1 hour \
 \
; Servidores de nombres \
 \
0.168.192.in-addr.arpa.     IN NS ns1.iesdmoreno.org. \
0.168.192.in-addr.arpa.     IN NS ns2.iesdmoreno.org. \
 \
; IPs que apuntan a nombres de dominio \
 \
10.0.168.192.in-addr.arpa. IN PTR ns1.iesdmoreno.org. \
3.0.168.192.in-addr.arpa. IN PTR peluqueria.fp.iesdmoreno.org. \
4.0.168.192.in-addr.arpa. IN PTR informatica.fp.iesdmoreno.org. \
```


#### Comprobar la zona inversa {#comprobar-la-zona-inversa}

    named-checkzone 0.168.192.in-addr.arpa db.192.168.0

### Zona 192.168.1 {#zona-192-168-1}


#### Agregar zona al archivo named.conf.local {#agregar-zona-al-archivo-named-conf-local}

```
zone "1.168.192.in-addr.arpa" in { \
	type master; \
	file "db.192.168.1"; \
};
```

#### Archivo db.192.168.1 {#archivo-db-192-168-1}

```
$TTL _3h_ \
; Origin added to names not ending \
; in a dot: 3.168.192.in-addr.arpa \
 \
; Registro SOA \
 \
1.168.192.in-addr.arpa.  IN SOA ns1.iesdmoreno.org. dmoreno.iesdmoreno.org. ( \
1 ; Serial \
_3h_ ; Refresh after 3 hours \
_1h_ ; Retry after 1 hour \
_1w_ ; Expire after 1 week \
_1h_ ) ; Negative caching TTL of 1 hour \
 \
; Servidores de nombres \
 \
1.168.192.in-addr.arpa. IN NS ns1.iesdmoreno.org. \
1.168.192.in-addr.arpa. IN NS ns2.iesdmoreno.org. \
 \
; IPs que apuntan a nombres de dominio \
 \
10.1.168.192.in-addr.arpa. IN PTR ns2.iesdmoreno.org. \
3.1.168.192.in-addr.arpa. IN PTR eso.secundaria.iesdmoreno.org. \
4.1.168.192.in-addr.arpa. IN PTR bachiller.secundaria.iesdmoreno.org.
```

#### Comprobar la zona inversa {#comprobar-la-zona-inversa}

    named-checkzone 1.168.192.in-addr.arpa db.192.168.1

## 12. Archivo de configuración de BIND incluyendo todas las zonas (named.conf.local) {#12-archivo-de-configuración-de-bind-incluyendo-todas-las-zonas-named-conf-local}

De forma predeterminada, BIND espera que el archivo de configuración se llame /etc/named.conf. Los archivos de datos de zona para nuestro ejemplo están en el directorio /etc/bind/cache. 

Archivo named.conf.local completo:

```bind
zone "iesdmoreno.org" in { \
type master; \
file "db.iesdmoreno.org"; \
}; \
 \
zone "0.168.192.in-addr.arpa" in { \
type master; \
file "db.192.168.2"; \
}; \
 \
zone "1.168.192.in-addr.arpa" in { \
	type master; \
	file "db.192.168.3"; \
}; \
```

## 13. Comprobar las configuraciones {#13-comprobar-las-configuraciones}

Si olvidamos algún punto y coma, dará errores y no funcionará correctamente. Para revisar los archivos disponemos de los comandos.

- `Named-checkconf` verifica el archivo de configuración en busca de errores de sintaxis
- `Named-checkzone` revisa un archivo de zona para detectar errores de sintaxis.

Estas herramientas residen en `/usr/local/sbin`.

### Comprobación del archivo de configuración 

Primero, ejecute **named-checkconf**, que verifica /etc/named.conf por defecto. El comando **_named-checkconf_** sirve para chequear la sintaxis de los ficheros de configuración de BIND. En el chequeo incluye aquellos ficheros de la instrucción _include_. Su sintaxis es la siguiente:

#named-checkconf [ fichero ]

Si no se especifica ningún fichero, chequeara el fichero _named.conf_ junto con todos los ficheros _include_ que tenga.

#named-checkconf /etc/bind/named.conf.options o  bien #named-checkconf

    named-checkconf

### Comprobación de zona {#comprobación-de-zona}

El comando named-checkzone se utiliza para chequear la sintaxis de un fichero de zona. Su sintaxis es la siguiente: 

    named-checkzone nombre-zona fichero

A continuación, ejecute named-checkzone para cada uno de sus archivos de zona:

    named-checkzone iesdmoreno.org db.iesdmoreno.org

## Conectar al servidor apache utilizando DNS 

### Conectar desde el cliente al servidor HTTP 

Desde un cliente, podemos conectar al servidor HTTP (Apache) para que nos muestre una página web utilizando la IP donde se encuentra instalado.

<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Pr-ctica-DNS10.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Pr-ctica-DNS10.png "image_tooltip")



### Modificar el archivo de configuración de la zona {#modificar-el-archivo-de-configuración-de-la-zona}



<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Pr-ctica-DNS11.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Pr-ctica-DNS11.png "image_tooltip")

