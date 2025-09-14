Funcion plato <- MostrarMenu
    Definir plato Como Entero;
    Escribir "------- Menú de comida rápida -------";
    Escribir "1. Hamburguesa .......... $15000";
    Escribir "2. Pizza ................. $18000";
    Escribir "3. Perro ................. $12000";
    Escribir "Seleccione el número de plato:";
    Leer plato;
FinFuncion

Funcion precio <- ObtenerPrecio(plato)
    Definir precio Como Real;
    Segun plato Hacer
        1:
            precio <- 15000;
        2:
            precio <- 18000;
        3:
            precio <- 12000;
        De Otro Modo:
            Escribir "Opción inválida, se asignará precio $0";
            precio <- 0;
    FinSegun
FinFuncion

Funcion cantidad <- PedirCantidad(plato)
    Definir cantidad Como Entero;
    Escribir "¿Cuántos desea pedir del plato ", plato, "?";
    Leer cantidad;
FinFuncion

SubProceso MostrarResumen(subtotal, total)
    Escribir "Subtotal del pedido actual: $", subtotal;
    Escribir "Total acumulado hasta ahora: $", total;
FinSubProceso

Algoritmo Comida_bucle_funciones
    Definir precio_plato, subtotal, total Como Real;
    Definir cantidad_plato, plato Como Entero;
    Definir continuar Como Caracter;
    
    total <- 0;
    continuar <- "S";
    
    Repetir
        plato <- MostrarMenu;
        precio_plato <- ObtenerPrecio(plato);
        cantidad_plato <- PedirCantidad(plato);
        
        subtotal <- precio_plato * cantidad_plato;
        total <- total + subtotal;
        
        MostrarResumen(subtotal, total);
        
        Escribir "¿Desea pedir otro plato? (S/N)";
        Leer continuar;
    Hasta Que continuar = "N" o continuar = "n";
    
    Escribir "";
    Escribir "El costo total de sus pedidos es: $", total;
    Escribir "¡Gracias por su compra, vuelva pronto!";
FinAlgoritmo
