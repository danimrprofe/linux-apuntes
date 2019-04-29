# Conectar

Acceder y logearse en: https://portal.azure.com/

Todos los recursos que se creen deben ir dentro de un grupo de recursos.

Podemos crear toda nuestra infraestructura a base de clicks pero es un poco tedioso. 
Vamos a crear toda la infraestructura automáticamente. Podemos hacerlo de varias formas:

1. A base de shell puro y duro
2. Automatización tipo terraform.

# Creación manual

Azure nos permite crear una infraestructura de contenedores, por lo que tenemos que crear un grupo de recursos
al que vamos a llamar `contenedores`. 

Dentro de él vamos a meter todas las `instancias de contenedor` que queramos.

En este caso vamos a crear un servicio de kubernetes utilizando `Azure Kubernetes Service` o AKS.

## Detalles del proyecto

Creamos un servicio AKS, para lo cual vamos a crear un grupo de recursos nuevo, llamado "clusterk8s"

## Detalles del cluster

* Nos vamos a crear un cluster:
  * lo llamamos `cluster-k8s-pruebas`.
  * Versión de kubernetes 1.12.7 región North Europe

## Pool de nodos

Aquí definimos el número de nodos que vamos a meter. Nos recomiendan:

* 3 nodos para producción
* 1 nodo para desarrollo

Nos permiten elegir el tipo de máquina, por lo que vamos a pillar una sencillita, además de que
nos consumirá menos dinero.

Me voy a coger una máquina A1_v2 que, pro 25 euros mes, me da:

* 1 vCPU
* 2 GB RAM
* 2 discos

Todos los nodos que cree van a ser iguales, por lo que conviene atinar bien o deberemos crear el AKS de nuevo.

Le indicamos que nos meta 3 nodos en el cluster.

# Escalado

A continuación nos va a pedir opciones de escalado que le queremos meter. Nos permite meter:

* Virtual nodes
* VM Scale sets

De momento pasamos olímpicamente porque no vamos a implantar escalado.

# Servicio

Nos pedirá crear un un `service principal`

# Networking

TODO

# Monitorización

Por lo que dice, AKS nos va a facilitar métricas ed CPU y memoria por cada nodo.

También podemos meter más cosas de monitorización, pero nos avisan de que nos van a cobrar.
Le decimos que gracias pero que no queremos por ahora extra monitorización.

# Levantando el chiringuito

Por último, nos dejará comprobar la configuración para levantar el sistema. 

Me permite guardar como template la configuración que he hecho en varios sistemas, entre ellos:
* Powershell, .NET, Ruby, etc.



