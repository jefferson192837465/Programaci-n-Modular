Funcion  edad_cliente  <-  tomar_edad
	Definir edad_cliente como cadena
	Escribir " ingrese su edad "
	Leer dato_edad
FinFuncion


Funcion  mensaje <- crear_saludo (dato_edad)
	mensaje<- " tu edad es "  + edad_cliente
FinFuncion

Funcion imprimir_saludo (dato_saludo)
	Escribir dato_saludo
FinFuncion

Algoritmo edad  
	dato_edad <- tomar_dato
	dato_mensaje <- crear_saludo(dato_edad)
	imprimir_saludo(dato_mensaje)
FinAlgoritmo