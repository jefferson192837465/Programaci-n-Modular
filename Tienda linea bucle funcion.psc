SubProceso PedirDatos(precio Por Referencia, cantidad Por Referencia)
    Escribir "Ingrese el precio del producto:";
    Leer precio;
    Escribir "Ingrese la cantidad de unidades que desea comprar:";
    Leer cantidad;
FinSubProceso

SubProceso CalcularSubtotal(precio, cantidad, subtotal Por Referencia)
    subtotal <- precio * cantidad;
FinSubProceso

SubProceso MostrarCompra(subtotal, total)
    Escribir "Subtotal de este producto: $", subtotal;
    Escribir "Total acumulado hasta ahora: $", total;
FinSubProceso

SubProceso PreguntarContinuar(opcion_ Por Referencia)
    Escribir "¿Desea agregar otro producto? (S/N)";
    Leer opcion_;
FinSubProceso

Algoritmo Tienda_linea_funciones
    Definir precio, cantidad, subtotal, total Como Real;
    Definir opcion_ Como Caracter;
	
    total <- 0;
    opcion_ <- "S";
	
    Escribir "=== Bienvenido a la tienda en línea ===";
	
    Mientras opcion_ = "S" o opcion_ = "s" Hacer
        PedirDatos(precio, cantidad);
        CalcularSubtotal(precio, cantidad, subtotal);
        total <- total + subtotal;
        MostrarCompra(subtotal, total);
        PreguntarContinuar(opcion_);
    FinMientras
	
    Escribir "=================================";
    Escribir "El costo total de la compra es: $", total;
    Escribir "Gracias por su compra.";
FinAlgoritmo
