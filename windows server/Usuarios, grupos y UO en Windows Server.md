# Grupos
Pertenencia a grupos y grupos anidados
Los usuarios pueden ser miembros de más de un grupo.
Los grupos pueden contener otros objetos de active directory
Ordenadores 
Otros grupos 
Los grupos se pueden anidar utilizando agrupamiento anidado
El agrupamiento anidado describe el proceso de configuración de uno o más grupos como miembros de otro grupo.
Ejemplo de agrupamiento anidado
Considere una empresa que tiene dos grupos: marketing y diseño gráfico.
Los miembros del grupo de diseño gráfico tienen acceso a una impresora láser color de alta resolución. 
Si en marketing los miembros del grupo también necesitan acceso a la impresora
Agregar el grupo de marketing como miembro del grupo de diseño gráfico. 
Esto le da a los miembros del grupo de marketing lo mismo
Permiso para la impresora láser color como miembros del grupo de diseño gráfico.
Tipos de grupos
Hay dos clasificaciones de grupo en Windows Server: 
Tipo de grupo
Ámbito de grupo.
El tipo de grupo define cómo se usa un grupo dentro de Active Directory.
Los dos tipos de grupos de Windows Server 2012 R2 son los siguientes:
Grupos de distribución Grupos no relacionados con la seguridad creados para la distribución de Información a una o más personas.
Grupos de seguridad Grupos relacionados con la seguridad creados para otorgar permisos de acceso a recursos a múltiples usuarios

Grupos de distribución
Las aplicaciones compatibles con Active Directory pueden usar grupos de distribución para funciones no relacionadas con la seguridad
Por ejemplo, Microsoft Exchange usa grupos de distribución para enviar mensajes a múltiples usuarios.
Grupos de seguridad
Los grupos que utiliza para asignar permisos a los recursos se denominan grupos de seguridad.
Los administradores hacen que los usuarios que necesitan acceso a los mismos recursos sean miembros de un grupo de seguridad.
Luego otorgan permiso al grupo de seguridad para acceder al recurso.


# Unidades organizativas
Diferencias entre grupos y unidades organizativas
Las unidades organizativas no se consideran principios de seguridad. Esto significa que no puede asignar permisos de acceso a un recurso basado en la pertenencia a una OU. Aquí radica la diferencia entre las unidades organizativas y los grupos globales, de dominio local y universales. 
Los grupos se utilizan para asignar permisos de acceso, mientras que las unidades organizativas se utilizan para delegar permisos y políticas de grupo.
Uso de unidades organizativas 
Asignar configuraciones de directiva de grupo
Una de las razones principales para crear una OU es asignar diferentes configuraciones de Directiva de grupo a una colección particular de objetos. Cuando asigna configuraciones de Directiva de grupo a una OU, cada objeto contenido en esa OU recibe esas configuraciones, incluidas otras OU. Esto permite a los administradores implementar la configuración de la directiva de grupo en solo parte de un dominio, en lugar de todo el dominio.


Delegar tareas de administración de Active Directory
La creación de unidades organizativas le permite implementar un modelo de administración descentralizado, en el que otros administran partes de la jerarquía de AD DS, sin afectar al resto de la estructura.
La delegación de autoridad a nivel de sitio afecta a todos los dominios y usuarios dentro del sitio. La delegación de autoridad en el nivel de dominio afecta a todo el dominio. Sin embargo, la delegación de autoridad en el nivel de OU afecta solo a esa OU y sus objetos subordinados. 
# Políticas de grupo (GPO)
La política de grupo es un mecanismo para controlar e implementar la configuración del sistema operativo en las computadoras en toda su red. 
La Política de grupo consiste en la configuración de usuario y computadora para los diversos sistemas operativos de Microsoft Windows, que los sistemas implementan durante el inicio y apagado de la computadora y el inicio y cierre de sesión del usuario. 
Puede configurar uno o más objetos de directiva de grupo (GPO) y luego usar un proceso llamado vinculación para asociarlos con objetos específicos de Servicios de dominio de Active Directory (AD DS). 
Cuando se vincula un GPO a un objeto contenedor, todos los objetos en ese contenedor reciben las configuraciones que configuró en el GPO. Puede vincular varios GPO a un solo contenedor de AD DS o vincular un GPO a múltiples contenedores a lo largo de la jerarquía de AD DS.
