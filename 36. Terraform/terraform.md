# Infraestructura habitual

Una infraestructura moderna normalmente utiliza:

* Múltiples proveedores (AWS, Google Cloud, Digital Ocean,etc)
* Combinado con servicios externos: DNS, mail, monitorización, etc.

Cada proveedor utiliza sus propias herramientas.

# Con terraform

Terraform permite manejarlas todas desde un solo sitio, mediante código.

Por ejemplo, podemos:

* Crear máquinas en dos proveedores IaaS diferentes
* Registrar nombres en un proveedor de DNS
* Monitorizar en una compañia third-party
* Configurar una cuenta empresearial de Github y enviar logs de aplicación a un servicio apropiado.

Podemos, además, delegar las configuraciones a herramientas como Chef, puppet, y otras.

El estado de la infraestructura se puede describir, guardar, versionar y compartir.
