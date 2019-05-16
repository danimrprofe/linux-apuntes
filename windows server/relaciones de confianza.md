
- [Tipos de relaciones de confianza](#tipos-de-relaciones-de-confianza)
  - [Método de creación.](#m%C3%A9todo-de-creaci%C3%B3n)
  - [Dirección.](#direcci%C3%B3n)
  - [Transitividad.](#transitividad)
- [Crear relaciones de confianza](#crear-relaciones-de-confianza)
  - [Paso 1](#paso-1)
  - [Paso 2: Comprobación de puertos](#paso-2-comprobaci%C3%B3n-de-puertos)
  - [Paso 3: Crear un reenviador condicional](#paso-3-crear-un-reenviador-condicional)

## Relaciones de confianza

Una relación de confianza es una relación establecida entre dos dominios. Permite a los usuarios de un dominio ser reconocidos por los controladores de Dominio de otro dominio.

Estas relaciones permiten 
* A los usuarios acceder a los recursos de otro dominio
* A los administradores definir los permisos y derechos de usuario para los usuarios del otro dominio.
Permite establecer comunicación entre varios controladores de dominio, con el fin de poder administrar desde un solo punto de la red a todos los usuarios y recursos que tengas.

En una red que consista en dos o más dominios, cada dominio actúa como una red por separado con su propia base de datos de cuentas.

Puede pasar que un usuario de un dominio necesite utilizar algunos o todos los recursos del otro dominio. 

La solución usual para la configuración de niveles de acceso de usuario entre dominios es lo que se llama relación de confianza.

# Tipos de relaciones de confianza

Windows Server soporta varios tipos de relaciones de confianza. Los diferentes tipos de relaciones se diferencian en función de 3 rasgos característicos:

## Método de creación. 

- Algunos tipos de relaciones de confianza se crean de forma automática (implícita)
- Otros se tienen que crear de forma manual (explícita).

## Dirección. 
Si la relación de confianza es unidireccional, los usuarios del dominio A (de confianza) pueden utilizar los recursos del dominio B (que confía), pero no al revés. 

En una relación bidireccional, ambas acciones son posibles.

## Transitividad. 

En una relación de confianza transitiva, si un dominio A confía en otro B, y este confía en un tercero C, entonces, de forma automática, A confía en C. 

En las relaciones no transitivas, la confianza entre A y C tendría que añadirse explícitamente.

# Crear relaciones de confianza

## Paso 1
Comprobamos con PING que podemos conectar de un server a otro y viceversa.
## Paso 2: Comprobación de puertos
Descargar la aplicación port query: https://www.microsoft.com/en-us/download/details.aspx?id=24009
## Paso 3: Crear un reenviador condicional
