Funcion tipo <- Leer_tipo
    Definir tipo Como Caracter;
    Escribir "Ingrese el tipo de producto (A=Alimentos, V=Vestimenta, E=Electrónicos):";
    Leer tipo;
FinFuncion

Funcion cantidad <- Leer_cantidad
    Definir cantidad Como Entero;
    Escribir "Ingrese la cantidad de unidades:";
    Leer cantidad;
FinFuncion

Funcion precio <- Asignar_precio(tipo)
    Definir precio Como Real;
    Segun tipo Hacer
        Caso "A":
            precio <- 250;
        Caso "V":
            precio <- 500;
        Caso "E":
            precio <- 100;
        De Otro Modo:
            precio <- 0;
            Escribir "Tipo de producto inválido.";
    FinSegun;
FinFuncion

Funcion descuento <- Asignar_descuento(tipo)
    Definir descuento Como Real;
    Segun tipo Hacer
        Caso "A":
            descuento <- 0.10;
        Caso "V":
            descuento <- 0.05;
        Caso "E":
            descuento <- 0;
        De Otro Modo:
            descuento <- 0;
    FinSegun
FinFuncion

Funcion total <- Resultado_total(precio, cantidad, descuento)
    Definir sin_descuento, total Como Real;
    sin_descuento <- precio * cantidad;
    total <- sin_descuento - (sin_descuento * descuento);
    Escribir "-----------------------------------";
    Escribir "Precio sin descuento: $", sin_descuento;
    Escribir "Precio con descuento: $", total;
    Escribir "-----------------------------------";
FinFuncion

Algoritmo Tienda_simple
    Definir tipo Como Caracter;
    Definir cantidad Como Entero;
    Definir precio, descuento, total Como Real;
	
    tipo <- Leer_tipo;
    cantidad <- Leer_cantidad;
	
    Si cantidad > 0 Entonces;
        precio <- Asignar_precio(tipo);
        descuento <- Asignar_descuento(tipo);
        total <- Resultado_total(precio, cantidad, descuento);
    Sino;
        Escribir "La cantidad debe ser un número positivo.";
    FinSi;
FinAlgoritmo
