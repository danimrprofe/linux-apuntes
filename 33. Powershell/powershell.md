# Apuntes powershell

- [Apuntes powershell](#apuntes-powershell)
  - [Conexión remota](#conexi%C3%B3n-remota)
  - [Configuración de red](#configuraci%C3%B3n-de-red)

## Conexión remota

El servicio de administración remota de Windows WinRM está
habilitada por dejecto.

Para crear una sesión remota de powershell:

    new-pssession -computername rtmsvrd

Una vez creada la sesión, para conectar a ella se utiliza:

    Enter-PsSession 3 (identificador de sesión)

## Configuración de red

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

