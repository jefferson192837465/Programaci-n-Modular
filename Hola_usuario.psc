Funcion tomar_nombre(dato_saludo)
	Escribir "Nombre del usuario";
	Leer nombre;
	Escribir dato_saludo + nombre;
FinFuncion

Proceso Hola_usuario
	Definir nombre, saludo como cadena;
	saludo = "Hola usuario ";
	tomar_nombre(saludo);
FinProceso
