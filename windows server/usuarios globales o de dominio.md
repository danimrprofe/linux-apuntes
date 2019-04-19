# Usuarios globales

Se pueden crear cuentas de usuario global. Los datos de un usuario global almacenan en el Directorio Activo 
(por tanto, a la En un controlador de dominio con Windows Server ...
almacenan su base de datos) 

Los **usuarios globales** son conocidos por todos los ordenadores del dominio (en realidad para todos los ordenadores del bosque).
Los usuarios globales pueden convivir con los usuarios locales.

Estos usuarios sólo son visibles en el ordenador donde se han creado y se validan en la base de datos local del ordenador 
en cuestión, pero no se podrán asignar permisos de acceso a recursos del dominio, ya que no hay técompte.

## Creación de usuarios globales o del dominio

Menú Inicio / Herramientas administrativas / Usuarios y equipos de Active Directory / "+" en el nombre del dominio para mostrar el contenido. Sobre Users, se muestran los usuarios ¡grupos dados de alta en el Directorio Activo.
Menú contextual de Users / Nuevo / Usuario Introducir los datos del usuario y el nombre con el que iniciará la sesión (por ejemplo, sox2a01). A la derecha se puede elegir el nombre del dominio al que se da de alta.

## Modificación de usuarios globales

Menú Inicio / Herramientas administrativas / Usuarios y equipos de Active Directory. Clic en "+" del nombre del domlni. Users / usuario a modificar / menú co | ntextual y Propiedades. Se muestran varias fichas con los correspondientes apartados: Fichas General, Dirección, Cuenta, etc.
Desde el menú Acción se pueden realizar las siguientes operaciones:
* Añadir a un grupo.
* Deshabilitar cuenta.
* Usuarios y grupos en Windows Server
* Habilitar cuenta.
* Mover.
* Abrir la página principal.
* Enviar correo.
