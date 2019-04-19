# vSphere HA y FT

En el entorno empresarial es muy importante que los servidores y otros sistemas informáticos funcionen ininterrumpidamente, 
pues el tiempo de inactividad lleva a perder productividad y perder ingresos. O eso o al menos que el tiempo que están sin 
funcionar sea el menor posible para reducir las pérdidas.

vSphere permite utilizar técnicas para conseguir que las máquinas virtuales siempre estén disponibles y, 
en caso de que sea necesario, se puedan recuperar rápidamente. Principalmente HA y FT.

## 1) vSphere HA

Permite garantizar alta disponibilidad de máquinas virtuales, agrupando los hosts en los que se ejecutan como un clúster para proporcionar mecanismos de recuperación y alta disponibilidad. Por ejemplo:
* Si falla un host, reinicia las máquinas virtuales que se ejecutaban sobre ese Host en otro host del clúster que esté operativo.
* Si lo que falla es una MV, lo que se hace es reiniciarla, dentro del mismo host (el host en principio funciona). Se va monitorizando la MV para ver cuando deja de enviar señales de vida.
* Si lo que falla es una aplicación dentro de una MV concreta, se reinicia la máquina virtual.

Se utiliza un sistema de “latidos” que deben tener un comportamiento similar a un ping para comprobar que los hosts, las máquinas virtuales o las aplicaciones están vivos. Es decir, se van lanzando avisos entre ellos (1 por segundo), de tal forma que cuando se dejan de recibir (hay un margen de 15 segundos), se presupone que el componente está fallando o ha muerto.

Para garantizar que un componente situado entre otros dos deje de propagar las señales, se emplean mecanismos de redundancia.

### Arquitectura de vSphere HA

Existe un servicio FDM, que se inicia en todos los hosts que pertenecen al mismo clúster. 
Todos los hosts que pertenecen al mismo clúster están en el mismo “dominio de errores”. 
Para gestionarlo todo uno de los hosts será el host principal. El resto serán hosts secundarios.

Dentro de cada host se ejecuta un agente que imagino será un proceso en segundo plano que maneja los aspectos de alta 
disponibilidad. Estos agentes de los diferentes hosts se comunican entre ellos.

Existen 2 tipos de latidos, que son complementarios para el funcionamiento de HA.

* Network heartbeats (latidos de red)
* Datastore heartbeats (latidos de almacén de datos)

### Arquitectura de vSphere HA: latidos de red

El host principal envía latidos a todos los hosts secundarios. Si alguno de estos no responde, se le declara inaccesible, 
por el motivo que sea. El host principal intenta adivinar si el host ha dejado de funcionar, tiene problemas de red o es 
inaccesible.

### Arquitectura de vSphere HA: latidos de almacén de datos (este no me ha quedado muy claro por lo que he investigado un poco)

Cuando el host principal del clúster no se puede comunicar con un host secundario a través de la red de administración, 
daríamos al host por muerto y arrancaríamos las MV en otro host. Pero es posible que fuera un error de conectividad (externo) 
y no un fallo en el funcionamiento del host.

Para intentar averiguar si el host secundario ha fallado realmente existen unos latidos a través del almacén de datos (DS). 
Es decir, se crea un segundo canal de comunicación entre hosts a través del DS. Si no se reciben latidos de red, pero sí 
latidos de almacén de datos, significa que el servidor sigue funcionando, únicamente que ha quedado aislado de la red.

Para que esto funcione se tienen que utilizar datastores que estén conectados al menos a dos hosts. Básicamente con este 
mecanismo nos ahorramos reiniciar las MV del host en otro host distinto que igual están funcionando estupendamente.

### Escenarios de errores de vSphere HA

Hay varios tipos de escenarios que se pueden dar:

* El host secundario no responde a los latidos que le envía el principal. Este intentará averiguar la causa.
* Error en el host principal. Aquí son los hosts secundarios los que no reciben señal por parte del primario.
* Host aislado. El host no recibe latidos de red ni puede hacer ping. En este caso el host funciona perfectamente, pero el error de red lo deja incomunicado. Aquí entra en juego el datastore heartbeating, que me permitirá saber si éste es el motivo.
* Errores de almacenamiento de las máquinas virtuales. Este no lo he entendido, pero me imagino que debe de haber un problema de acceso por parte del servidor a los dispositivos de almacenamiento donde están las MV por algún error de red, o un problema eléctrico que hace que estos dispositivos no funcionen o no se puedan conectar con el servidor ESXi.

## 2) vSphere Fault Tolerance FT

En el caso de HA, cuando cae un componente lo levantamos en otro sitio y listo, pero esto provoca un downtime en el 
cual servicio esté caído con las consiguientes pérdidas. En sistemas críticos que no pueden parar se puede utilizar el FT.

Este mecanismo de tolerancia a fallos intenta que debido a un fallo no se produzca inactividad, 
no se pierdan datos ni conexiones. Para ello la estrategia que sigue es duplicar la MV en concreto en otro host, 
de tal manera que si se produce un fallo en la MV original se conmuta a la MV secundaria inmediatamente. Al ya estar esta MV en funcionamiento en otro host, no se pierde tiempo y por tanto no se interrumpe el servicio.

Obviamente las 2 MV no se pueden ejecutar en el mismo host puesto que en caso de fallo en el host perderíamos las 2 máquinas. 
Se aconseja también que ambas MV estén en diferentes almacenes de datos para evitar que si este falla las dos queden 
inutilizados.
