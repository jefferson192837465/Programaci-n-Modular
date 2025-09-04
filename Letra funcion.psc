Funcion dato_letra <- tomar_letra(letra)
    Definir dato_letra Como Caracter
    Escribir "Escriba la letra: "
    Leer dato_letra
FinFuncion

Funcion mensaje <- crear_saludo(letra)
    Definir mensaje Como Cadena
    mensaje <- "LA LETRA ASIGNADA ES: " + letra
FinFuncion

SubProceso imprimir_saludos(mensaje)
    Escribir mensaje
FinSubProceso

Algoritmo Principal
    Definir letra Como Caracter
    Definir mensaje Como Cadena
	
    letra <- tomar_letra(letra)
    mensaje <- crear_saludo(letra)
    imprimir_saludos(mensaje)
FinAlgoritmo
