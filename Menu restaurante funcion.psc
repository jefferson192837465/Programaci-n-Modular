SubProceso MostrarMenuPlatos
    Escribir "=== MENÚ DE PLATOS ===";
    Escribir "1. Hamburguesa .......... $15000";
    Escribir "2. Pizza ................. $18000";
    Escribir "3. Ensalada .............. $12000";
    Escribir "Seleccione el número de plato:";
FinSubProceso

SubProceso SeleccionarPlato(opcion_plato Por Referencia, precio_plato Por Referencia)
    Leer opcion_plato;
    Segun opcion_plato Hacer
        1:
            precio_plato <- 15000;
        2:
            precio_plato <- 18000;
        3:
            precio_plato <- 12000;
        De Otro Modo:
            Escribir "Opción inválida, se asignará precio $0";
            precio_plato <- 0;
    FinSegun
FinSubProceso

SubProceso MostrarMenuBebidas
    Escribir "=== MENÚ DE BEBIDAS ===";
    Escribir "1. Gaseosa ............... $5000";
    Escribir "2. Jugo natural .......... $6000";
    Escribir "3. Agua .................. $3000";
    Escribir "Seleccione el número de bebida:";
FinSubProceso

SubProceso SeleccionarBebida(opcion_bebida Por Referencia, precio_bebida Por Referencia)
    Leer opcion_bebida;
    Segun opcion_bebida Hacer
        1:
            precio_bebida <- 5000;
        2:
            precio_bebida <- 6000;
        3:
            precio_bebida <- 3000;
        De Otro Modo:
            Escribir "Opción inválida, se asignará precio $0";
            precio_bebida <- 0;
    FinSegun
FinSubProceso

SubProceso MostrarMetodosPago
    Escribir "=== MÉTODOS DE PAGO ===";
    Escribir "1. Efectivo (10% descuento)";
    Escribir "2. Tarjeta de crédito (5% descuento)";
    Escribir "3. Cheque (sin descuento)";
    Escribir "Seleccione método de pago:";
FinSubProceso

SubProceso CalcularDescuento(metodo_pago, total_sin_descuento, descuento Por Referencia)
    Segun metodo_pago Hacer
        1:
            descuento <- total_sin_descuento * 0.10;
        2:
            descuento <- total_sin_descuento * 0.05;
        3:
            descuento <- 0;
        De Otro Modo:
            Escribir "Método no válido, no se aplicará descuento.";
            descuento <- 0;
    FinSegun
FinSubProceso

SubProceso MostrarFactura(cantidad_platos, cantidad_bebidas, total_sin_descuento, descuento, total_con_descuento)
    Escribir "";
    Escribir "Cantidad de platos: ", cantidad_platos;
    Escribir "Cantidad de bebidas: ", cantidad_bebidas;
    Escribir "Total sin descuento: $", total_sin_descuento;
    Escribir "Descuento aplicado: $", descuento;
    Escribir "TOTAL A PAGAR: $", total_con_descuento;
FinSubProceso

Algoritmo Menu_restaurante_funciones
    Definir opcion_plato, opcion_bebida, metodo_pago Como Entero;
    Definir precio_plato, precio_bebida, total_sin_descuento, descuento, total_con_descuento Como Real;
    Definir cantidad_platos, cantidad_bebidas Como Entero;
	
    MostrarMenuPlatos();
    SeleccionarPlato(opcion_plato, precio_plato);
    Escribir "Ingrese la cantidad de platos seleccionados:";
    Leer cantidad_platos;
	
    Escribir "";
    MostrarMenuBebidas();
    SeleccionarBebida(opcion_bebida, precio_bebida);
    Escribir "Ingrese la cantidad de bebidas seleccionadas:";
    Leer cantidad_bebidas;
	
    total_sin_descuento <- (precio_plato * cantidad_platos) + (precio_bebida * cantidad_bebidas);
	
    Escribir "";
    MostrarMetodosPago();
    Leer metodo_pago;
	
    CalcularDescuento(metodo_pago, total_sin_descuento, descuento);
    total_con_descuento <- total_sin_descuento - descuento;
    MostrarFactura(cantidad_platos, cantidad_bebidas, total_sin_descuento, descuento, total_con_descuento);
FinAlgoritmo
