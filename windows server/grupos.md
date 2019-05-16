# Grupos

- [Grupos](#grupos)
  - [Pertenencia a grupos y grupos anidados](#pertenencia-a-grupos-y-grupos-anidados)
  - [Ejemplo de agrupamiento anidado](#ejemplo-de-agrupamiento-anidado)
  - [Tipos de grupos](#tipos-de-grupos)
    - [Grupos de distribución](#grupos-de-distribuci%C3%B3n)
    - [Grupos de seguridad](#grupos-de-seguridad)

## Pertenencia a grupos y grupos anidados
Los usuarios pueden ser miembros de más de un grupo.
Los grupos pueden contener otros objetos de active directory
Ordenadores 
Otros grupos 
Los grupos se pueden anidar utilizando agrupamiento anidado
El agrupamiento anidado describe el proceso de configuración de uno o más grupos como miembros de otro grupo.
## Ejemplo de agrupamiento anidado
Considere una empresa que tiene dos grupos: marketing y diseño gráfico.
Los miembros del grupo de diseño gráfico tienen acceso a una impresora láser color de alta resolución. 
Si en marketing los miembros del grupo también necesitan acceso a la impresora
Agregar el grupo de marketing como miembro del grupo de diseño gráfico. 
Esto le da a los miembros del grupo de marketing lo mismo
Permiso para la impresora láser color como miembros del grupo de diseño gráfico.
## Tipos de grupos
Hay dos clasificaciones de grupo en Windows Server: 
Tipo de grupo
Ámbito de grupo.
El tipo de grupo define cómo se usa un grupo dentro de Active Directory.

Los dos tipos de grupos de Windows Server 2012 R2 son los siguientes:

* Grupos de distribución Grupos no relacionados con la seguridad creados para la distribución de Información a una o más personas.
* Grupos de seguridad Grupos relacionados con la seguridad creados para otorgar permisos de acceso a recursos a múltiples usuarios

### Grupos de distribución
Las aplicaciones compatibles con Active Directory pueden usar grupos de distribución para funciones no relacionadas con la seguridad
Por ejemplo, Microsoft Exchange usa grupos de distribución para enviar mensajes a múltiples usuarios.
### Grupos de seguridad
Los grupos que utiliza para asignar permisos a los recursos se denominan grupos de seguridad.
Los administradores hacen que los usuarios que necesitan acceso a los mismos recursos sean miembros de un grupo de seguridad.
Luego otorgan permiso al grupo de seguridad para acceder al recurso.
