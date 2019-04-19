# Tipos de relaciones de confianza

Windows Server soporta varios tipos de relaciones de confianza. Los diferentes tipos de relaciones se diferencian en función de 3 rasgos característicos:

## Método de creación. 
Algunos tipos de relaciones de confianza se crean de forma automática (implícita)

Otros se tienen que crear de forma manual (explícita).

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
