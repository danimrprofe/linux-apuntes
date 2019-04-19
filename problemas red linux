# Comprobaciones de conectividad a Internet
* Ping a google. Si no funciona, seguir
* Ping a 8.8.8.8. Si responde, puede ser problema de DNS
* Revisar DNS en /etc/network/interfaces
* Si no responde, ping a puerta de enlace
* Si no responde, seguir
* Los adaptadores NAT no tienen salida a internet, RED NAT y Adaptador puente SÍ siempre que la puerta de enlace sea de un router conectado a internet. 
# Comprobaciones de conectividad entre equipos
* Ping de un equipo a otro debería funcionar
* Si no funciona, comprobad que están en la misma red (comparad IPs y modos de funcionamiento)
# Deshabilitar y habilitar interfaz
* ifdown enp0s3 y ifup enp0s3
* Solo funcionan si la interfaz aparece en /etc/network/interfaces
# Reiniciar servicio de red
* systemctl restart networking.service
# Comprobar si la interfaz está activa: 
* Comprobar que aparece en ifconfig 
* Si aparece en ```ifconfig -a``` pero no en ifconfig es que existe pero no está configurada, seguir
# Si se ha cambiado el adaptador o se ha añadido nuevo desde Virtualbox
Comprobar /etc/network/interfaces para la nueva interfaz
  
  auto enp0s8
  iface enp0s8 inet dhcp

Apagar la interfaz con ifdown y levantar la interfaz con ifup. Si no funciona, seguir
# Comprobar que el adaptador está habilitado en la MV (virtualbox)
Es posible que no esté habilitado. Sucede sobretodo cuando ifup no consigue contactar con el servidor DHCP
