
# Unidades organizativas

## Diferencias entre grupos y unidades organizativas
Las unidades organizativas no se consideran principios de seguridad. Esto significa que no puede asignar permisos de acceso a un recurso basado en la pertenencia a una OU. Aquí radica la diferencia entre las unidades organizativas y los grupos globales, de dominio local y universales. 

Los grupos se utilizan para asignar permisos de acceso, mientras que las unidades organizativas se utilizan para delegar permisos y políticas de grupo.

## Uso de unidades organizativas 

### Asignar configuraciones de directiva de grupo

Una de las razones principales para crear una OU es asignar diferentes configuraciones de Directiva de grupo a una colección 
particular de objetos. Cuando asigna configuraciones de Directiva de grupo a una OU, cada objeto contenido en esa OU recibe esas 
configuraciones, incluidas otras OU. Esto permite a los administradores implementar la configuración de la directiva de grupo 
en solo parte de un dominio, en lugar de todo el dominio.

### Delegar tareas de administración de Active Directory
La creación de unidades organizativas le permite implementar un modelo de administración descentralizado, 
en el que otros administran partes de la jerarquía de AD DS, sin afectar al resto de la estructura.

La delegación de autoridad a nivel de sitio afecta a todos los dominios y usuarios dentro del sitio. 
La delegación de autoridad en el nivel de dominio afecta a todo el dominio. Sin embargo, la delegación 
de autoridad en el nivel de OU afecta solo a esa OU y sus objetos subordinados. 
