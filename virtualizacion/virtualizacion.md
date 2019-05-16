# Virtualización

- [Virtualización](#virtualizaci%C3%B3n)
  - [Concepto de virtualización](#concepto-de-virtualizaci%C3%B3n)
    - [De qué se trata](#de-qu%C3%A9-se-trata)
    - [Usos de la virtualización](#usos-de-la-virtualizaci%C3%B3n)
    - [Ventajas de virtualizar](#ventajas-de-virtualizar)
  - [Componentes de la virtualizción](#componentes-de-la-virtualizci%C3%B3n)
    - [Anfitrión (HOST)](#anfitri%C3%B3n-host)
    - [Huésped (GUEST)](#hu%C3%A9sped-guest)
    - [Hypervisor (VMM)](#hypervisor-vmm)
  - [Tipos de virtualización](#tipos-de-virtualizaci%C3%B3n)
    - [Virtualización de recursos](#virtualizaci%C3%B3n-de-recursos)
    - [Virtualización de plataforma](#virtualizaci%C3%B3n-de-plataforma)
  - [Tipos de virtualización de plataforma](#tipos-de-virtualizaci%C3%B3n-de-plataforma)
    - [Emulación](#emulaci%C3%B3n)
    - [Virtualización nativa](#virtualizaci%C3%B3n-nativa)
    - [Virtualización asistida por hardware](#virtualizaci%C3%B3n-asistida-por-hardware)
  - [Tipos de hipervisor](#tipos-de-hipervisor)
    - [Tipo 1: Hipervisor alojado o hosted](#tipo-1-hipervisor-alojado-o-hosted)
    - [Tipo 2: Hipervisor nativo o bare metal](#tipo-2-hipervisor-nativo-o-bare-metal)

## Concepto de virtualización

![](2019-05-16-08-40-46.png)

### De qué se trata

Creación a través de **software** de una versión virtual de un **recurso** tecnológico

### Usos de la virtualización

- Probar otros sistemas operativos
- Ejecutar programas antiguos
- Utilizar aplicaciones de otros SO
- Probar aplicación en diferentes sistemas

### Ventajas de virtualizar

- Aprovechamiento de recursos
- Escalabilidad y disponibilidad
- Reducción de coste y consumo
- Copias de seguridad sencillas
- Seguridad

![](2019-05-16-08-42-01.png)

## Componentes de la virtualizción

![](2019-05-16-08-42-51.png)

### Anfitrión (HOST)

Equipo sobre el que se ejecuta todo el sistema de virtualización

### Huésped (GUEST)

- Lo que se virtualiza sobre el anfitrión
- Lo más habitual suelen ser máquinas virtuales
- Sobre un HOST se pueden ejecutar 1 o más GUEST

### Hypervisor (VMM)

- Es el software que permite llevar a cabo la virtualización
- Me deja crear las máquinas virtuales, definirlas, manipularlas
- Ejemplo: virtualbox

## Tipos de virtualización

### Virtualización de recursos

No se trata de simular un equipo concreto, sino una parte de él, como por ejemplo:

- Volúmenes de almacenamiento (a partir de discos físicos)
- Recursos de red

Ejemplos:

- Sistemas RAID
- Redes VPN
- Almacenamiento en red (SAN)
- Computación en la nube (Cloud computing)

### Virtualización de plataforma

- En este caso se simula un ordenador completo con su propio SO
- Se crea una MV combinando HW y SW

Tipos principales:

- Emulación
- Virtualización nativa
- Virtualización asistida por hardware

## Tipos de virtualización de plataforma

### Emulación

- Sucede cuando la arquitectura de **host** y **GUEST** es completamente diferente
- Ejemplos:
  - GUEST: ARM y HOST: procesador x64
  - GUEST: PowerPC y HOST: x86

Se simula todo el hardware (completo)

- Software: QEMU, MAME, Bochs

### Virtualización nativa

- En este caso las arquitecturas de el **host** y el **guest** son idénticas
- El software simulado es la parte del hardware que no tienen en común
- Ejemplos de software:
  - VirtualBox, QEMU, Hyper-V, VMWare

### Virtualización asistida por hardware

- Se trata de un tipo de virtualización nativa
- El procesador del HOST contribuye a la virtualización
- Para ello es necesario disponer en el procesador preparado para virtualización:
  - Tecnología AMD-V
  - Intel VT-x
- Las opciones de virtualización deben estar habilitadas desde la BIOS

## Tipos de hipervisor

### Tipo 1: Hipervisor alojado o hosted

El **hipervisor** es un programa que se ejecuta sobre SO del **host**

Los ejemplos más habituales de hipervisores de este tipo son:

- VMware
- Virtual PC (Microsoft)
- VirtualBox (Oracle)

![](2019-05-16-08-44-14.png)

### Tipo 2: Hipervisor nativo o bare metal

- El hipervisor se instala y ejecuta directamente sobre el hardware del equipo
- No existe ningún SO intermedio instalado
- Ejemplos:
  - VMware ESX
  - Hyper-V (Microsoft)
  - Citrix XenServer
  - Oracle VM

![](2019-05-16-08-44-34.png)