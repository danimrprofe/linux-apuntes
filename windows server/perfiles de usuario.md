En un controlador de dominio con Windows Server se crean cuentas de usuario y de grupo que sirven para:

1. Identificar y autentificar las personas o usuarios que podrán acceder a los recursos del sistema.
2. Administrar y gestionar los permisos y privilegios que servirán para controlar los recursos de los usuarios a los recursos del sistema.

# Perfiles de usuario

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

No almacena los cambios. 

### Perfil súper-obligatorio.

## Ver el perfil de un usuario

Para ver el tipo de perfil de un usuario:
Inicio / Panel de control / Sistema / Configuración avanzada del sistema (desde de Windows Server, Opciones avanzadas) 
/ El blog Perfiles de usuario hacer clic en Configuración.

Podemos comprobar que se ha creado una carpeta para el usuario. Si entramos en la carpeta podremos ver lo que se guarda.
