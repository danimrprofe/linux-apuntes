https://www.youtube.com/watch?v=ZS_kXvOeQ5Y&t=968s

# Escalado

## Escalado horizontal

* Aumentamos la potencia agregando más servidores.
* Tenemos que asegurarnos que nuestra BD se reparte entre estos servidores y podemos seguir trabajando con ella.
* Muy complicado de realizar en BD relacionales (SQL)
* En NoSQL no existen las relaciones y además puedo dividir una colección entre varios servidores.

## Escalado vertical

* Se trata de aumentar la capacidad de los servidores existentes
* Existe un limite en la potencia que podemos agregar en un ordenador.

## Problemática

Las BD del tipo SQL no escalan en horizontal y al hacerlo en vertical topan con los límites de recursos
de la máquina. Por este motivo, el escalado es más complicado.

Cualquier aplicación se puede realizar con SQL o NoSQL
Existe la posibilidad de utilizar ambos tipos

## Esquemas

NoSQL no tiene esquemas, por lo que es:

* Es más flexible, podemos meter campos nuevos sin tener que modificar el esquema ni los registros previos
* No podemos con podemos confiar que un registro contendrá un campo concreto

No hay relaciones o pocas

* Perfecto para leer un gran volumen de datos
* Si tenemos muchas escrituras que afectan a varias colecciones, por lo que hay que modificar datos
en varias colecciones, al estar duplicada parte de la información.
