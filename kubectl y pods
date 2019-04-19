# Trabajando con PODs y kubectl

### Listar PODs en ejecución

Podemos comprobar cuantos pods tengo en marcha. En este caso hay dos pods en ejecución
```
kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
hello-minikube-5857d96c67-nt4x7      1/1     Running   1          6d19h
tomcat-deployment-5c4b9b9c99-zp7t5   1/1     Running   0          13m
```
Vamos a ver más información de un pod concreto si le pasamos el nombre:
```
kubectl describe pods tomcat-deployment-5c4b9b9c99-zp7t5
Name:               tomcat-deployment-5c4b9b9c99-zp7t5
Namespace:          default
Priority:           0
PriorityClassName:  <none>
Node:               minikube/10.0.2.15
Start Time:         Wed, 03 Apr 2019 12:13:19 +0200
Labels:             app=tomcat
                    pod-template-hash=5c4b9b9c99
Annotations:        <none>
Status:             Running
IP:                 172.17.0.5
Controlled By:      ReplicaSet/tomcat-deployment-5c4b9b9c99
Containers:
  tomcat:
    Container ID:   docker://d2a6f90d7b42598dd8971862bcbfb3f56d43acf7f55f1a5f4e2b4ab737050ce6
    Image:          tomcat:9.0
    Image ID:       docker-pullable://tomcat@sha256:3f4b2548996ffd6d7984f76557fc4db75f92e155340191f7a7325b1f751d10ac
    Port:           8080/TCP
    Host Port:      0/TCP
    State:          Running
      Started:      Wed, 03 Apr 2019 12:14:39 +0200
    Ready:          True
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from default-token-6zhlc (ro)
```
### Ejecutar comandos dentro de un pod

Podemos ejecutar un comando dentro de un pod pasándoselo como parámetro.
En este caso abrimos un shell dentro del pod, que nos puede servir para debuguear.

```
kubectl exec -it tomcat-deployment-5c4b9b9c99-zp7t5 bash
root@tomcat-deployment-5c4b9b9c99-zp7t5:/usr/local/tomcat# ls
BUILDING.txt     LICENSE  README.md      RUNNING.txt  conf     lib   native-jni-lib  webapps
CONTRIBUTING.md  NOTICE   RELEASE-NOTES  bin          include  logs  temp            work
root@tomcat-deployment-5c4b9b9c99-zp7t5:/usr/local/tomcat# whoami
root
root@tomcat-deployment-5c4b9b9c99-zp7t5:/usr/local/tomcat# uname -r
4.15.0
```

### Desplegar PODs sin crear un deployment

Podemos utilizarlo para desplegar PODs directamente sin tener que crear un archivo de despliegue.

```
kubectl run hazelcast --image=hazelcast --port=5701
deployment.apps/hazelcast created
```
