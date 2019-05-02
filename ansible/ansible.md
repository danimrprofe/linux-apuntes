# Formas de configuracion

- Mediante un 'unico archivo playbook que contiene las tareas
- Mediante una estructura de directorios por cada proyecto

# Playbooks

Ansible trabaja con playbooks.
Son ficheros yaml que describen operaciones a realizar sobre los nodos administrados

# Trabajo con playbooks

Ejecutar un playbook:

    ansible-playbook playbook.yaml

Si necesitamos solicitar contrasena de root:

    ansible-playbook playbook.yaml -k

# Ejecucion de comandos

Existe un modulo `shell` para ejecutar comandos de la shell directamente.

# Actualizacioon del sistema

Para tareas de mantenimiento de paquetes, tenemos el modulo `apt`.

Podemos forzar un upgrade. 


Ejemplo:

```yaml
---
-   hosts: 'clients'
    tasks:
    -   name: 'ejemplo'
        become: true
        apt:
            update-cache: true
            upgrade: true
```

Ejecutamos:

    ansible-playbook playbook.yaml -k

# Instalar o desinstalar paquetes

Para desinstalar: absent

```yaml
---
-   hosts: 'clients'
    tasks:
    -   name: 'ejemplo'
        become: true
        apt:
            name: 'aptitude'
            state: 'present'
```

Podemos definir en que nodos queremos que se ejecute un playbook. 
Para ello, deberemos crear un archivo `hosts` que incluira la lista de nodos y sus direcciones

Ejemplo:

```
[webserver]
10.0.0.2    ansible_ssh_user=user   ansible_ssh_private_key_file=
[dbserver]
10.0.0.3
```

Imaginemos que queremos ejecutar el playbook siguiente:

```yaml
- hosts: all
  roles:
    - webserver
```

# Creando roles

Podemos utilizar ansible-galaxy:

ansible-galaxy init webservers