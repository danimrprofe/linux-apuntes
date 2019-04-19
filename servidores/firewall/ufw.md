**0. Puertos**

Las direcciones IP diferencian una máquina en concreto (una interfaz de un ordenador realmente). Para poderse comunicar con los diferentes programas dentro de un mismo ordenador, se utilizan los puertos. 

Cada programa reserva uno o más puertos para utilizarlos él, y se conecta a otros programas de otros ordenadores  a través del puerto en el que ellos estén esuchando.



<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Primeros-pasos0.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Primeros-pasos0.png "image_tooltip")


**Ejemplo**



<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Primeros-pasos1.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Primeros-pasos1.png "image_tooltip")




**Tipos de puertos**

<span style="text-decoration:underline;">Puertos bien conocidos</span>



*   Puertos inferiores a 1024. Están reservados para servicios muy definidos, como telnet, SMTP, P0P3.
*   Estas asignaciones son fijas y no pueden ser utilizadas por otros servicios. A menudo estos puertos son llamados «puertos bien conocidos».



<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Primeros-pasos2.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Primeros-pasos2.png "image_tooltip")


Los puertos más utilizados por los diferentes protocolos son:



<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Primeros-pasos3.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Primeros-pasos3.png "image_tooltip")


<span style="text-decoration:underline;">Puertos registrados</span>



*   Los puertos entre 1024 y 49151 son puertos registrados.
*   IANA intenta ordenar el uso de este rango, pero sin las restricciones que existen para los puertos bien conocidos.

<span style="text-decoration:underline;">Puertos privados</span>



*   Puertos numerados entre 49152 y 65535. Son puertos privados de los que se puede disponer para cualquier uso.

La lista completa de puertos se puede consultar en la página de la IANA:

[Listado de puertos y protocolos IANA](https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml)

Podemos comprobar el estado de nuestros puertos con el comando netstat:



*   netstat -ntpa



**1. Firewalls en Linux**

El kernel de Linux en Ubuntu proporciona un sistema de filtrado de paquetes llamado <span style="text-decoration:underline;">netfilter</span>.

La interfaz tradicional para manipular netfilter es el conjunto de comandos de <span style="text-decoration:underline;">iptables</span>.  Iptables proporciona una solución completa de firewall que es altamente configurable y altamente flexible.



<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Primeros-pasos4.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Primeros-pasos4.png "image_tooltip")


**Dificultades con iptables**

Convertirse en un experto en iptables lleva tiempo. Comenzar con el firewall de netfilter usando solo iptables puede ser una tarea desalentadora.  Muchas interfaces para iptables se han creado a lo largo de los años, cada una tratando de lograr un resultado diferente y dirigirse a un público diferente.



<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Primeros-pasos5.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Primeros-pasos5.png "image_tooltip")


**2. El firewall no complicado o UFW**

El Firewall no complicado (ufw) es una interfaz para iptables. Es especialmente adecuado para firewalls basados ​​en host.

Proporciona un marco para administrar netfilter, así como una interfaz de línea de <span style="text-decoration:underline;">comandos </span>para manipular el firewall. 

Ufw tiene como objetivo proporcionar una interfaz fácil de usar para las personas que no están familiarizadas con los conceptos de firewall. Simplifica los comandos de iptables complicados para ayudar a un administrador que sabe lo que está haciendo.

El paquete ufw nos permite gestionar reglas de firewall de una manera más sencilla e intuitiva.

**3. Instalación**

Tendría que venir instalado por defecto, pero lo podemos instalar si hiciera falta:



*   Podemos comprobar si tenemos el paquete instalado: dpkg -l | grep ufw
*   Instalación del paquete por si no lo tuviéramos: apt install ufw

Por defecto todas las conexiones entrantes están bloqueadas, las salientes todas permitidas, y el reenvío deshabilitado.

**4. Cambiar las reglas por defecto**

Una cadena de reglas de firewall no suele cubrir todas las condiciones posibles.

Las cadenas de firewall siempre deben tener una política predeterminada especificada, que consiste solo en una acción (aceptar, rechazar o eliminar).

<span style="text-decoration:underline;">Rechazar por defecto (deny)</span>

Si cualquier computadora fuera de su oficina intentara establecer una conexión SSH con el servidor, el tráfico se eliminaría porque no cumple con las condiciones de ninguna regla.

<span style="text-decoration:underline;">Aceptar por defecto (allow)</span>

Si la política predeterminada estuviera configurada para aceptar, cualquier persona, excepto sus propios empleados no técnicos, podría establecer una conexión con cualquier servicio abierto en su servidor

<span style="text-decoration:underline;">Configuración en ufw de políticas por defecto</span>

El tráfico puede ser entrante (_inbound_) o saliente (_outbound_) desde el punto de vista del servidor



<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Primeros-pasos6.png). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Primeros-pasos6.png "image_tooltip")


Para configurar las reglas por defecto:



*   ufw default allow outgoing (permitir todas las conexiones salientes por defecto)
*   ufw default deny incoming (bloquear todas las conexiones entrantes por defecto)

<span style="text-decoration:underline;">Probablemente necesitaremos permisos de root:</span>



*   sudo -s o bien ir agregando sudo al comienzo de todos los comandos.

**5. Comprobar estado del firewall, habilitar y deshabilitar**



*   Comprobar el estado del firewall: ufw status (Nos dirá si está activo o inactivo). Si utilizamos ufw stastus verbose además veremos las reglas definidas.
*   Para habilitar el firewall: ufw enable
*   Deshabilitar: ufw disable

**6. Podemos abrir o cerrar puertos de varias maneras:**



*   Por el protocolo asociado al puerto que queremos: ufw allow https
*   Por número y protocolo de transporte: ufw allow 443/tcp

Ojo: si no indicamos UDP o TCP, se permite el puerto en ambos.

**7. Definir rangos de puertos**

También podemos actuar sobre un rango de puertos:



*   Para abrir los puertos TCP entre el 5000 y el 5200: ufw allow 5000:5200/tcp
*   Lo mismo, pero con puertos UDP: ufw allow 5000:5200/udp

Incluso podemos encadenar dos o más rangos diferentes:



*   ufw allow from any to any port 0:150, 200:500

En este caso evitaríamos los puertos entre el 151 y el 199.

**8. Configuración avanzada**

Para esta tarea se necesitará utilizar una sintaxis un poco más avanzada. El formato es el siguiente:

ufw allow/deny  from <target> to <destination> port <port number> proto <protocol name>

<span style="text-decoration:underline;">Ejemplos</span>

ufw allow from 192.168.1.0/24 to any port 80,443 proto tcp

Permitiría el acceso a los puertos TCP 80 (http) y 443 (https) únicamente  a los equipos pertenecientes a la red 192.168.1.0 (del .1 al .255)

**9. Filtrar por interfaz**

Si únicamente queremos permitir los paquetes que vengan por la interfaz eth0:



*   ufw allow in on eth2 to any port 22

Estamos permitiendo las conexiones, pero desde la tarjeta de red correspondiente al a interfaz eth2.

**10. Borrar reglas**



*   ufw delete allow proto tcp from 192.168.1.0/24 to any port 80,443

Si lo que queremos es borrar todas las reglas y deshabilitar ufw para revertir todos los cambios:



*   ufw reset

**11. Reglas numeradas**

Las reglas se pueden numerar para poder maniobrar más fácilmente con ellas



*   Para ver las reglas con su número correspondiente: ufw status numbered
*   Podemos borrar la regla por su número de regla: ufw delete 2

Finalmente, si queremos deshabilitar el firewall por completo: ufw disable

**12. Perfiles de aplicación**



*   Para comprobar que aplicaciones están definidas: ufw app list
*   Para conocer que reglas están asociadas a una aplicación: ufw app info nombre (nos dará información y qué puertos tiene asociada)
*   Habilitar protocolos de determinadas aplicaciones: ufw allow apache

Podemos definir nosotros mismos nuestros propios perfiles de aplicaciones, creando un archivo de aplicación y colocándolo en /etc/ufw/applications.d/.



*   Podemos actualizar SOLO un perfil después de haberlo modificado: ufw app update nombre
*   Y de paso mostrar la información de este perfil: ufw app info nombre

**13. ~~Control mediante logs (no funciona)~~**



*   Podemos ver las últimas líneas del log: tail -f /var/log/ufw.log
*   Podemos deshabilitar el log: ufw logging off
*   Podemos habilitarlo otra vez: ufw logging on
*   Para ver las últimas reglas añadidas: ufw show added

**14. Archivos de configuración**

Por último, podemos crear archivos de configuración para no tener que agregar los comandos uno a uno



*   El archivo /etc/ufw/before.rules (before6 si se trata de IPv6) nos permite especificar reglas que son evaluadas antes de que nosotros agreguemos ninguna.
*   El archivo /etc/ufw/after.rules contiene las reglas que serán evaluadas después de las que nosotros agreguemos a mano.

**15. Recargar reglas sin deshabilitar el firewall**

Si queremos recargar las reglas del firewall sin tener que deshabilitarlo y habilitarlo de nuevo.



*   Podemos utilizar el comando: ufw reload (muy útil después de cambiar archivos de configuración)
