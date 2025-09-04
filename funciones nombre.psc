SubAlgoritmo  dato_nombre <- tomar_nombre
	Escribir  " digite el nombre del cliente "
	Leer dato_nombre
FinSubAlgoritmo
SubAlgoritmo  dato_apellido <- tomar_apellido
	Escribir "escribir el apellido del cliente"
	Leer dato_apellido
FinSubAlgoritmo

SubAlgoritmo  dato_mensaje <-  hacer_mensaje(dato_nombre, dato_apellido)
	dato_mensaje <- "bienvenido usuario"  +  dato_nombre  +   "  "   +  dato_apellido 
FinSubAlgoritmo
SubAlgoritmo  imprimir_mensaje (dato_mensaje)
	Escribir dato_mensaje
FinSubAlgoritmo




Algoritmo mensaje
	Definir nombre Como Caracter
	Definir apellido Como Caracter
	Definir dato_mensaje Como Caracter
	
	nombre <- tomar_nombre
	apellido <- tomar_apellido
	
	dato_mensaje <- hacer_mensaje (nombre , apellido) ;
	imprimir_mensaje(dato_mensaje)
FinAlgoritmo