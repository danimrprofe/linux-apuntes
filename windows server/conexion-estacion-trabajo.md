# Conexión de la estación de trabajo Desde Windows cliente (7, 8.1. 10 ...) 

Seleccionar Inicio / Panel de control / Menú contextual de Equipo / Ver estado y las Tareas de red / Conexiones de área local / mostrar el menú contextual y Propiedades. 

Sobre el Protocolo TCP / IP / Propiedades y: 

-  Si está instalado el protocolo DHCP, activar la casilla Obtener una dirección IP automáticamente. 
- Si no está instalado el protocolo DHCP, indicar la dirección IP estática del equipo, su máscara de subred y la dirección IP de la puerta de enlace. 
En ambos casos indicar la dirección IP de Windows Server como servidor DNS preferido. Aceptar. 

A las propiedades de protocolo de internet TCP / IPv4 indicar las siguientes direcciones IP: 

-  Si el equipo cliente es la máquina anfitriona y el servidor se encuentra en la máquina virtual Estado de Virtual Box Host-Only Network. 
- Si el equipo cliente y el servidor se encuentran en las máquinas virtuales 

```
1.Adreça IP: 172.16.1.201 
2.Màscara de subred: 255.255.0.0 
3.Porta de enlace: (la del router: 172.16.1.201) 
4.DNS principal: 172.168.1.201 
5.DNS secundaria: la que se indique para acceder a Internet. 
```

# Conectar al dominio

Situarse sobre **Mi PC** y, en el menú contextual, seleccionar **Propiedades**. 
- En la ficha Número de equipo se lo ha de hacer pertenecer al dominio de Windows Server en el que nos queremos conectar. 
- Por ello pulsar el botón Cambiar y activar la casilla Dominio para escribir el nombre correspondiente (curs1819.smx) y pulsar Aceptar. 
- Nos pedirá el nombre de una cuenta de usuario y la contraseña con permisos para poder unir el equipo al dominio. 
- Introducir la del Administrador de dominio. Al haber pulsado Aceptar nos dará la bienvenida al dominio. 
- Después de reiniciar el equipo, indicar el nombre de un usuario del dominio, la contraseña y el dominio al que nos queremos conectar (no el equipo). Pulsar Aceptar para conectarse al servidor. 

También se puede introducir el nombre del usuario indicando ante el dominio (curs1819.smx \ Administrador)
