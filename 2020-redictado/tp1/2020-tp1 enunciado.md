## Ejercicio de Bash
### Fecha de entrega: Viernes 24 de abril 
### Entrega por mensajeria el codigo fuente del script

Suponga que un servidor de la organización donde usted trabaja  ha sudrido un ataque y necesita realizar las siguientes tareas.
**Hacer un menu amigable (select) que permita realizar lo siguiente:**

 **1. Obtener cuentas de usuario:** Deberá guardar en un vector los nombres de los usuarios del sistema.
 
 **2. Buscar cuenta atacada:** utilizando el vector creado en 1) deberá recorrer cada directorio personal de los usuarios del sistema y verificar si en el primer nivel (no es necesario verificar subcarpetas) existe algún archivo que contenga el siguiente texto: "Attack from virus www.xwsaxs.uk". Si encuentra un archivo con dicho contenido el mismo deberá ser borrado. Ademas deberá crear en el directorio personal del usuario un archivo llamado usuario.txt (usuario es en nombre del usuario en cuestión) que contenga el nombre del archivo borrado, la fecha de borrado y su contenido. Dicho archivo debera tener permiso de lectura, escritura y ejecución para el dueño, solo de lectura para el grupo y ningún permiso para el resto de los usuarios.
 
 **3. Eliminar usuario:** Esta función recibe un parámetro indicando un nombre de usuario (debe validar que llegue un parámetro y que sea de un usuario valido usando el vector, si no existe el usuario devolver un mensaje con dicho error y código de terminación 2, si no recibe el parámetro informar el error y devolver código de error 3) y borrar la cuenta del usuario recibido.
 
 **4. Informe de memoria:** Monitorear la memoria del server. Deberá verificar que la memoria disponible no esté por debajo de 3111156 KB. Para esto deberá analizar el archivo /proc/meminfo que contiene información acerca de la memoria. Si la memoria disponible está por debajo de 3111156 KB deberá informarlo por pantalla y matar a los procesos apache y mysql. Si no está por debajo, deberá informar cual es la memoria total del sistema, cuanto queda de memoria disponible y el valor del SwapTotal.
