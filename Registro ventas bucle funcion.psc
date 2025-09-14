SubProceso RegistrarVenta(producto Por Referencia, precio Por Referencia)
    Escribir "Ingrese el nombre del producto vendido:";
    Leer producto;
    
    Escribir "Ingrese el precio del producto:";
    Leer precio;
FinSubProceso

SubProceso ActualizarLista(lista_productos Por Referencia, producto, precio)
    lista_productos <- lista_productos + "Producto: " + producto + " | Precio: $" + ConvertirATexto(precio) + "  ";
FinSubProceso

SubProceso MostrarResumen(lista_productos, total_ventas)
    Escribir "";
    Escribir "========== RESUMEN DE VENTAS ==========";
    Escribir lista_productos;
    Escribir "Total de ventas: $", total_ventas;
    Escribir "=======================================";
    Escribir "¡Gracias por usar el sistema de ventas!";
FinSubProceso

Algoritmo Registro_ventas_bucle_funciones
    Definir producto, lista_productos Como Caracter;
    Definir precio, total_ventas Como Real;
    Definir continuar Como Caracter;
    
    lista_productos <- "";
    total_ventas <- 0;
    continuar <- "S";
    
    Repetir
        RegistrarVenta(producto, precio);
        total_ventas <- total_ventas + precio;
        ActualizarLista(lista_productos, producto, precio);
        
        Escribir "¿Desea registrar otra venta? (S/N)";
        Leer continuar;
    Hasta Que continuar = "N" o continuar = "n";
    
    MostrarResumen(lista_productos, total_ventas);
FinAlgoritmo