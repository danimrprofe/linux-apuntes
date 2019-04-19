Para conocer los adaptadores de red

```poweshell
Get-netadapter
```

Configurar una interfaz

new-netipaddress -interfaceindex 6 -ipaddress 192.168.0.200
-prefixlength 24 -defaultgateway 192.168.0.1

Configurar direcciones DNS

Set-dnsclientserveraddress -interfaceindex 6 –serveraddresses
("192.168.0.1","192.168.0.2")
