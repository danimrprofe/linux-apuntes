# Consideraciones previas

Se proponen hacer backups utilizando dos herramientas, tanto GuettoVCB como Veeam.

Después de hacer todo con la primera y estar literalmente un día entero peleándome solo con este
para conseguir hacer todo lo que pide la tarea, voy a descartar probar el otro.

Me sabe mal, pero es final de curso y hay un montón de trabajo, oposiciones, y no doy abasto.

Si tengo algo de tiempo probaré con Veeam pero con el primero y con todas las tareas anteriores he tenido
suficiente.

Para realizar la práctica he tirado de muchas web diferentes, como la de www.sysadmit.com/. Sin ella
creo que hubiera tirado la toalla.

# Instalación GuettoVCB

Conectar con SSH al host y:
mkdir /vcb
cd /vcb
wget https://github.com/lamw/ghettoVCB/raw/master/vghetto-ghettoVCB-offline-bundle.zip\
esxcli software vib install -d /vcb/vghetto-ghettoVCB-offline-bundle.zip –f

No me ha funcionado wget porque por lo visto no soporta https en la version instalada en el hipervisor

Me voy a descargar el paquete en mi ordenador personaly lo voy a pasar por pscp

```console
C:\Users\dnick\Desktop>pscp vghetto-ghettoVCB-offline-bundle.zip rootgl92.168.1.116:vcb 
Using keyboard-interactive authentication.
Password:
vghetto-ghettoVCB-offline | 23 kB |	23.0 kB/s | ETA: 00:00:00 | 100%
C:\Users\dnick\Pesktop>
```
# Instalación del paquete

Una vez copiado remotamente, me conecto por consola y lo instalo

```console
[root0minint-fhbvlj9:~] esxcli software vib install -d /vcb/vghetto-ghettoVCB-offline-bundle.zip -f 
Installation Result
Message: Operation finished successfully.
Reboot Required: false
VIBs Installed: virtuallyGhetto_bootbank_ghettoVCB_l.0.0-0.0.0 VIBs Removed:
VIBs Skipped:
[root@minint-fhbvlj9:~] |
```
Podemos comprobar que esta instalado con esxcli, un pipe y un grep
para filtrar
