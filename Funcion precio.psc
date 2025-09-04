	Funcion precio_producto <- tomar_precio
		Definir precio_producto Como Cadena
		Escribir "Ingrese el precio del cepillo:"
		Leer precio_producto
FinFuncion

Funcion mensaje <- crear_saludo(dato_precio)
    Definir mensaje Como Cadena
    mensaje <- "El precio del cepillo es: " + dato_precio
FinFuncion

SubProceso imprimir_saludos(dato_mensaje)
    Escribir dato_mensaje
FinSubProceso

Algoritmo precio
    Definir dato_precio, dato_mensaje Como Cadena
    dato_precio <- tomar_precio()
    dato_mensaje <- crear_saludo(dato_precio)
    imprimir_saludos(dato_mensaje)
FinAlgoritmo
