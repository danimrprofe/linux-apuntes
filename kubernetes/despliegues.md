# Despliegues en k8s

## ¿Qué es un despliegue?

Los despliegues (deployments) son una colección de recursos y referencias. Un despliegue:
* Describe qué contenedores nos interesan
* Indica cómo os contenedores se relacionan entre ellos
* Qué se requiere para qué funcionen correctamente
* Qué hacer si dejan de funcionar correctamente

## Qué puedo hacer con despliegues

Cosas que puedo hacer con despliegues:
* Crear uno nuevo
* Actualizar un despliegue existente
* Aplicar actualizaciones a pods que se estén ejecutando en el cluster
* Volver a una versión anterior (rollback)
* Pausar y arrancar un despliegue

Gracias a kubectl puedo trabajar e interactuar con los diferentes despliegues y:
* Listar despliegues
* Ver el estado de los rollouts
* Establecer la imagen para un despliegue
* Ver el histórico de rollouts

## Ejemplo de despliegue

Los deployments se suelen describir en un archivo YAML. 

En el siguiente deployment, tendremos una réplica con un único contenedor, que será la imagen oficial de tomcat 9.0 y 
que escuchará en el puerto 8080. La imagen del contenedor la descargará de Docker Hub.

```yaml
apiVersion: apps/v1beta2
kind: Deployment
metadata:
  name: tomcat-deployment
spec:
  selector:
    matchLabels:
      app: tomcat
  replicas: 1
  template:
    metadata:
      labels:
        app: tomcat
    spec:
      containers:
      - name: tomcat
        image: tomcat:9.0
        ports:
        - containerPort: 8080
```     
El deployment se debería guardar en un fichero con extensión YAML, como por ejemplo **deployment.yaml**

## Despliegue del deployment

**Kubectl** es una herramienta que nos permite interaccionar con cualquier cluster de Kubernetes, desde un shell.

Para crear el deployment:

```
kubectl apply -f ./deployment.yaml
contestación: deployment.apps/tomcat-deployment created
```
Exponemos el despliegue para que nos asocie una IP y puerto
```
kubectl expose deployment tomcat-deployment --type=NodePort
Contestación: service/tomcat-deployment exposed
```
Para saber la IP y el puerto en el que nos ha expuesto el servicio:
```
minikube service tomcat-deployment --url
Contestación: http://192.168.99.100:30836
```
Si accedemos a esta URL veremos que está el servidor Tomcat escuchando

