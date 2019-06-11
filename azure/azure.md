# Conectar

Hemos creado una cuenta con suscricion gratuita para probar las funcionalidades de azure.

Para acceder y logearse podemos hacerlo a traves del portal:

https://portal.azure.com/


# Grupos de recursos

Todos los recursos que se creen deben ir dentro de un **grupo de recursos**.

Es decir, aunque solo creamos crear una maquina virtual, debemos crear un grupo de recursos en el que estara situada.

Lo primero que nos preguntara al crear un recuroso cualquiera sera en que grupo queremos crearlo.

# Crear una infraestructura

Podemos crear toda nuestra infraestructura a base de clicks pero es un poco tedioso. 
Vamos a crear toda la infraestructura automáticamente. Podemos hacerlo de varias formas:

1. A base de shell puro y duro
2. Automatización tipo terraform.
3. Otros

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

# Pool de nodos

Aquí definimos el número de nodos que vamos a meter. Nos recomiendan:

* 3 nodos para producción
* 1 nodo para desarrollo

Nos permiten elegir el tipo de máquina, por lo que vamos a pillar una sencillita, además de que
nos consumirá menos dinero.

# Elegir maquinas para el cluster

He probado con maquinas de 2 GB y un vCore pero me dice que no valen para montar un AKS.

Me voy a coger una máquina **A1_v2** que, por unos 30 euros mes, me da:

* 2 vCPU
* 4 GB RAM
* 2 discos

Todos los nodos que cree van a ser iguales, por lo que conviene atinar bien o deberemos crear el AKS de nuevo.

# Limitaciones de cuenta

- Una vez definidas las maquinas voy a decirle cuantos nodos quiero
- Le indicamos que nos meta 2 nodos en el cluster. 
- La cuenta gratuita no me deja crear más nodos.

# Escalado

A continuación nos va a pedir opciones de escalado que le queremos meter. Nos permite meter:

* Virtual nodes
* VM Scale sets

De momento pasamos olímpicamente porque no vamos a implantar escalado.

# Servicio

Nos pedirá crear un  `service principal`

# Networking

TODO

# Monitorización

Por lo que dice, **AKS** nos va a facilitar métricas ed CPU y memoria por cada nodo.

También podemos meter más cosas de monitorización, pero nos avisan de que nos van a cobrar.
Le decimos que gracias pero que no queremos por ahora extra monitorización.

# Levantando el AKS

Por último, nos dejará comprobar la configuración para levantar el sistema. 

Me permite guardar como template la configuración que he hecho en varios sistemas, entre ellos:

* Un script powershell
* .NET, Ruby, etc.
* Shell scripts

Con lo cual, si tenemos que volver a crear el mismo chiringuito, no nos hará falta hacerlo a mano paso por paso.

# Levantando el cluster

Lo que más tarda es en levantar el **cluster**, puesto que me tiene que arrancar las 2 MV.

Por lo que veo, me ha creado un **deployment** llamado:

    Deployment name:microsoft.aks-20190429114347

# Resultado del despliegue

Al cabo de 8 minutazos:

```
Your deployment is complete
Deployment name:microsoft.aks-20190429114347
Subscription:Azure para estudiantes
Resource group:clusterk8s
Deployment details(Download)
Start time:29/4/2019, 11:53:25
Duration:8 minutes 43 seconds
Correlation ID:9df64479-3390-4b1f-b1bb-ee5be5158c97
```

# Deployment center

Bueno, pues tengo mi cluster creado con mis 2 maquinitas, y montado el AKS de kubernetes encima. De momento
se quedan esperando a que despliegue algo encima.

Me voy a **deployment center** para linkar a un proyecto de **GitHub**. He cogido un repo de un proyecto que tengo de pruebas
basado en Node.js y mongoDB, que ya tenía dockerizado.

# DevOps project

Me obliga a crear un **DevOps project** porque sí, al que voy a llamar `danimrprofe`. Podré consultar mis proyectos en:

 https://dev.azure.com/danimrprofe/

Me hace una build del proyecto, una release

Me obliga a crear un registro, que le voy a llamar igual.

Aquí me he quedado porque ya no sabía por donde tirar.
