- [Perfiles de usuario](#perfiles-de-usuario)
- [Tipos de perfiles](#tipos-de-perfiles)
  - [Perfil local](#perfil-local)
  - [Perfil temporal](#perfil-temporal)
  - [Perfil de red](#perfil-de-red)
  - [Tipos de perfil de red](#tipos-de-perfil-de-red)
    - [Perfil móvil](#perfil-m%C3%B3vil)
    - [Perfil obligatorio.](#perfil-obligatorio)
    - [Perfil súper-obligatorio.](#perfil-s%C3%BAper-obligatorio)
  - [Ver el perfil de un usuario](#ver-el-perfil-de-un-usuario)

# Perfiles de usuario

En un controlador de dominio con Windows Server se crean cuentas de usuario y de grupo que sirven para:

1. Identificar y autentificar las personas o usuarios que podrán acceder a los recursos del sistema.
2. Administrar y gestionar los permisos y privilegios que servirán para controlar los recursos de los usuarios a los recursos del sistema.

# Tipos de perfiles

## Perfil local
Solo accesible desde la estación de trabajo donde se ha creado

## Perfil temporal
Se crea por error en la carga del perfil de usuario

## Perfil de red
Los usuarios de Windows Server pueden acceder desde cualquier estación de trabajo.

## Tipos de perfil de red
### Perfil móvil
Almacenan en una carpeta compartida en red, quedando disponibles para todo equipo del dominio. así:

1. Sólo hay uno por cada usuario, que se encuentra en la carpeta compartida.
2. Los cambios en el perfil del usuario permanecen disponibles desde cualquier equipo donde se inicia sesión.

### Perfil obligatorio. 

Características: 
* No almacena los cambios. 
* Es un perfil móvil de solo lectura
* Si guardamos cualquier documento en el perfil, después de cerrar sesión todos los documentos guardados serán borrados automáticamente
* Cada perfil tiene su propio archivo de preferencias llamado NTUSER.DAT
* Para configurar el perfil obligatorio necesitamos renombrar NTUSER.DAT a NTUSER.MAN

### Perfil súper-obligatorio.

Este tipo de perfiles se incorpora a partir de Windows Server 2008 y su objetivo es similar al de los perfiles obligatorios

La diferencia es que, si se produce un error que impide cargar el perfil, el usuario no podrá iniciar sesión

En otras palabras, un perfil de usuario super-obligatorio impedirá que se cargue un perfil temporal cuando exista algún motivo que impida cargar el perfil super-obligatorio

## Ver el perfil de un usuario

Para ver el tipo de perfil de un usuario:
Inicio / Panel de control / Sistema / Configuración avanzada del sistema (desde de Windows Server, Opciones avanzadas) 
/ El blog Perfiles de usuario hacer clic en Configuración.

Podemos comprobar que se ha creado una carpeta para el usuario. Si entramos en la carpeta podremos ver lo que se guarda.
