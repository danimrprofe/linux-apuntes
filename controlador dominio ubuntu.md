# Samba
Samba és una implementació del protocol de compartició d’arxius i impresores de Windows que es coneixia com a Server Message Bloc (SMB) i ara es diu Common Internet File System (CIFS).
Existeix una implementació de Samba a Linux, així com a molts altres sistemes operatius. Per a utilizar samba, és necessari instal·lar els paquets samba i samba-doc.
També existeixen eines gràfiques per a compartir, consultar i muntar directoris SMB compartits des de Windows que inclueixen el Samba SWAT. 
Les comandes per a treballar amb recursos compartits de SAMBA també es poden utilitzar per consultar servidors SMB, muntar directoris i compartir-los.
Essencialment, Samba el constitueix dos dimonis:
* smbd
* nmbd
# Instal·lació del servidor
    apt install tasksel
    sudo tasksel install samba-server

# Creació de recursos compartits
Una vegada creats, podem veure si s’han creat correctament o no.

# Instalació del client
Normalment a un servidor Linux s'instal·la per funcionalitats concretes com ftp, tallafoc, web, però també es pot instal·lar a través del gestor de paquets.
  sudo apt install smbclient
#Veure i accedir a recursos compartits amb Samba
Per escanejar la xarxa i trobar hosts SMB:
  sudo findsmb
Per tal de veure una representació textual dels veinats de xarxa que tenen carpetes i impresores compartits: 

    sudo smbtree

Podem afegir un usuari de Linux existent com a usuari de samba: 

    sudo smbpasswd -a dani
    
També podem obtenir una llista de serveis oferits per un servidor:
* A un usuari anònim: smbclient -L server
* Per a un usuari en concret: smbclient -L server -U dani

# Montar recursos compartits amb samba
El sistema GNU/Linux només pot treballar amb una jerarquia de directoris. Per tant, si volem accedir a diferents sistemes d’arxius, particions de discos o CD-ROM, entre altres, primer hem de muntar aquests elements en algun punt de la jerarquia.

Podem muntar-los en el nostre sistema de fitxers local com si fos un altre sistema d’arxius local o un sistema d’arxius NFS remot. Per a muntar-lo:

    sudo mount -t smbfs -o username=dani,password=xxx \ //192.168.1.1/myshare /mnt/mymount/

Però també es pot configurar com DC de tal manera que usuaris puguin connectar-se des d'equips Windows i Linux a recursos compartits.

Aquesta configuració es fa a través del smb.conf (no existeix dcpromo ...)

# Especificacions

Nom del controlador de dominio d’active directory: ubuXX
Nom del DNS del dominio d’active directory: SMBXX.local

Modificar los archivos:

    /etc/hostname: ubuxx
    /etc/hosts: 127.0.1.1    ubuxx.SMBxx.local    ubuxx
    
Nom del regne kerberos: smbxx.local
Nom NetBIOS del dominio: SMBxx

# Adreçament IP fixa del servidor

```
iface eth0 inet static
address 192.168.1.xxx
netmask 255.255.255.0
network 192.168.1.0
broadcast 192.168.1.255
gateway 192.168.1.1
dns-nameservers 192.168.1.xxx 192.168.1.1
dns-search SMBxx.local
```
Per habilitar i deshabilitar amb IP

    ip link set dev <interface> up
    ip link set dev <interface> down

# Configurant amb netplan

    sudo netplan apply
    
Rol del servidor: controlador de dominio
Reenviador DNS: 192.168.1.1

# Instal·lació d’un controlador de domini
Comprovar versió: ```samba -v```
Guardar smb.conf:

    mv /etc/samba/smb.conf /etc/samba/smb.old
  
Borrar l’arxiu smb.conf per a que el generi automàticament SAMBA
Habilitar a SAMBA per guardar atributs POSIX i crear NIS per a administrar usuaris unix:

    samba-tool domain provision --use-rfc2307 --interactive

Ens demanarà:

* Realm: SMBXX.local
* Domain: SMBXX
* Server Role: dc (domain controler)
* DNS backend: SAMBA_INTERNAL
* DNS forwarder IP address: 192.168.1.1

Al final de tot:


A partir del següent reinici també serà servidor DNS així que podrem llevar la variable dns-nameservers.

    sudo shutdown -r 0
    
Comprovació del servei DNS del DC

El controlador ha d'apuntar-se a si mateix

Edita l'arxiu interfícies per comprovar que la direcció ip és fixa

Afegir si cal:

    dns-search "dominio.local"
    dns-nameservers "ip del server"

# Instal·lar client kerberos 

    apt-get install krb5-user

Modificar archivo /etc/krb5.conf

Comprovar que tant DNS (els registres SRV (servei - server)) com
Kerberos i LDAP funcionen correctament:

    Host -t SRV _ldap._tcp.ubuxx.local.
    Host -t SRV _kerberos._udp.ubuxx.local.
    Host -t A "smbxx.ubuxx.local"
    Kinit administrator @ "dominio.local"
