
# Instalación de paquetes
## 1. Noción de paquete
En Linux no es habitual disponer de software proporcionado con un programa de instalación interactivo (install.exe). Con Linux es muy habitual disponer de herramientas, actualizaciones, etc. en forma de paquetes (packages). 
Un paquete es un archivo que contiene un software a instalar y unas reglas. Suele tener una extensión .rpm, .deb, en función del tipo de paquete. Cada tipo de distribución puede funcionar con un tipo de paquetes diferentes. Los paquetes son incompatibles entre sí, pero se pueden convertir.
## 2. Gestor de paquetes DPKG
El comando dpkg permite instalar, crear, eliminar y gestionar paquetes debian. Estos paquetes llevan una extensión .deb. El paquete se tiene que descargar manualmente y si existen dependencias incumplidas, se deben resolver previamente
Instalación: dpkg -i mipaquete.deb
Listar paquetes instalados: dpkg -l
Borrar paquetes: dpkg -r
Ejemplo: instalación de google chrome
Descarga del paquete: 

    wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    
Instalación del paquete

    dpkg -i google-chrome-stable_current_amd64.deb
    
Borrar el paquete descargado (si queremos)

    rm google-chrome-stable_current_amd64.deb
    
## 3. Programa de gestión de paquetes avanzada APT y YUM
Tanto dpkg como rpm detectan dependencias de paquetes para autorizar o no la instalación, pero no las resuelven. Si una dependencia de un paquete que no está, se deben instalar previamente.

YUM o APT son gestores de paquetes. Descargan los paquetes de un repositorio y gestionan las dependencias automáticamente. Las herramientas DPKG o RPM no resuelven las dependencias, si hay alguna detienen la instalación e informan de las dependencias que no están cubiertas.

* YUM se utiliza en distribuciones Red Hat, Fedora, etc y gestiona paquetes .rpm
* APT se utiliza en sistemas Debian y derivados y gestiona paquetes .deb

## 4. Repositorios
En lugar de especificar un paquete, se encarga de los repositorios de paquetes situados en diferentes sitios, como pueden ser:
* En un CD, DVD, 
* En un directorio local
* En internet (HTTP, FTP)

Un repositorio contiene un conjunto de paquetes. Cuando se instala un paquete desde un repositorio, se instalan también sus dependencias.

Para mostrar la lista de repositorios: 

    cat /etc/apt/sources.list

Para modificar el repositorio: 

    nano /etc/apt/sources.list

Cómo conocer la versión de SO

    lsb_release -a
    
## 5. Prácticas con el gestor APT
* Para buscar un paquete: `apt-cache search nombre`
* Actualizar lista de paquetes: `apt update`
* Mostrar que paquetes se pueden actualizar: `apt list --upgradable`
* Simulación de actualización: `apt upgrade (cancelar al final)`
* Buscar si un paquete està instalado o no: `apt list –installed`
* Mostrar información de un paquete: `apt-cache show apache2`
* Volver a mirar si està instalado: `apt list –installed | grep Apache`
* Comprobar que ha abierto el Puerto 80: `sudo netstat -ntpa`
* Desinstalar apache2: `apt remove apache2`
* Desinstalar borrando archivos de configuración: `apt purge`
* Borrar paquetes no necesarios: `sudo apt autoremove`
## 6. Cliente gráfico synaptic
Synaptic es un front-end o interfaz gráfica que llama a las funciones de APT.
## 7. Aptitude
Es un administrador de paquetes con una interfaz en modo texto.

## Tareas
Las tareas son grupos de paquetes que proporcionan un modo sencillo de seleccionar un conjunto predefinido de paquetes.
Por ejemplo, la tarea LAMP server instala los siguientes paquetes:

Buscar paquetes que comienzan con apache:
aptitude search ^apache
