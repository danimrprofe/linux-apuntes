# kubernetes

Es un sistema de gestión y orquestación de contenedores. Permite automatizar el despliegue, escalado y gestión de contenedores.

Con **Docker-compose** puedo desplegar varios contenedores sobre el mismo nodo
creando servicios.

Añade un nivel de abstracción más por encima de Docker.

A k8s le puedo escribir en un archivo **YAML**:

- Qué imágenes de docker quiero que coja
- Decirle que quiero 10 contenedores de estos, 5 de estos, y 3 de estos.
- Le digo que tengo 30 nodos (máquinas) a su disposición
- Le pido que ejecute todos los contenedores y que se asegure que siempre
- Él los distribuye sobre los nodos del cluster
- Se asegurará de que habrá el número que yo le diga de contenedores en marcha
- Puedo asignar recursos a los contenedores y hacer que se asegure que tiene los recursos que necesita.

En resumen, defino el estado final completo que yo quiero para mi infraestructura.
Puedo ejecutar k8s en uno o más clouds, y k8s se asegurará que la infraestructura
quede como yo le digo.

Los nodos tendrán diferentes roles. Algunos harán de **master**, con los que yo me comunicaré.

Puedo decirle que tengo estos nodos, que pueden ser, por ejemplo:

- Instancias EC2
- Google Compute Instances

Estos serán los nodos **worker** o **minions**.
Los asocio a los nodos máster para que puedan ejecutar contenedores en esos nodos.

## Minikube

**Minikube** es una herramienta que facilita la ejecución local de Kubernetes. Minikube ejecuta un clúster Kubernetes de un solo nodo dentro de una máquina virtual.

Proporciona una solución sencilla para usuarios que desean probar Kubernetes o desarrollar soluciones sobre él.
