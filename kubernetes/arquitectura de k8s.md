
## Arquitectura de kubernetes

### Cluster

Un cluster es un conjunto de nodos. cada uno de estos nodos puede ser:

* Una máquina real física
* Una máquina virtual
Pueden existir varios nodos worker, sobre los que se desplegarán los contenedores, y al menos un nodos maestro, que gestionará todo.

### Nodos worker

Los nodos worker son máquinas que ejecutan aplicaciones dentro de contenedores. 
Ejecutan, monitorizan y proveen de servicios a las aplicaciones a través de diferentes componentes:

* Docker (u otro sistema) ejecuta los contenedores
* Los kubeletes se comunican con la API del servidor y gestionan los contenedores en su propio nodo
* Un proxy de red balancea el tráfico entre los diferente componentes

### Pods

Se trata de un grupo de uno o más contenedores que comparten almacenamiento y red, y una manera común de utilizarse. Los contenedores dentro de un pod se colocan, programan y ejecutan conjuntamente en un mismo contexto.

Los contenedores dentro de un pod comparten IP y puertos, y se pueden comunicar a través de localhost. Asimismo, los contenedores dentro de un mismo pod suelen compartir volúmenes.
