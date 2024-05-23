El proyecto está hecho con Eclipse y MySQL

Este proyecto trata de un portal de centros al que pueden iniciar sesión, alumnos, profesores y empleados de Accenture.
La idea es que en la base de datos ya hay registrados profesores y empleados de Accenture.
El portal cuenta con un login, un registro especificamente de alumnos, y la página principal, la cual dependiendo de tu rol verás una información u otra.

Las informacion que se encuentra en la página principal es la siguiente:
Noticias - Noticias del centro al que pertenece el usuario (Solo pueden verlo profesores y alumnos)
Modulo - Información del módulo y sus asignaturas, (la columna de programación didáctica es solamente para mostrar el dinamismo de las asignaturas y solo pueden verlo alumnos)
Datos personales - Información del usuario, cambio de contraseña, correo y eliminación del usuario
Centro - Información del centro y mapa de localización (Solo pueden verlo profesores y alumnos)

En este fichero: portal\src\main\resources\config.properties cambiar las líneas de esta manera.
jdbc.mysql.user=<usuario base de datos>
jdbc.mysql.passwd=<contraseña base de datos>

En caso de dar error de conexión a la base de datos (no debería porque la dependencia está en el pom.xml): Agrega el mysql-conector a las librerías.



Estos son los credenciales que ya hay en la base de datos para hacer login:
*************** PROFESORES/AS ***************
jon@gmail.com - Pass12345
Francisco@gmail.com - Fran0987
guille@yahoo.es - Guille1990
rrcastro@hotmail.com - CasRiv4114
lorenaDoc@gmail.es - lorenaDoc1234
********** EMPLEADOS/AS ACCENTURE ***********
Laura@gmail.com - Lau10295
Tania@gmail.com - TanTan007
**************** ALUMNOS/AS *****************
alejandro@gmail.com - Alejandro1
marta@gmail.com - Martamarta1
david@gmail.com - Daviddavid1
maria@gmail.com - Mariamaria1
eloy@gmail.com - Eloyeloy1
