SubProceso MostrarBienvenida
    Escribir "===============================";
    Escribir "          BIENVENIDO           ";
    Escribir "===============================";
FinSubProceso

SubProceso PedirCantidad(cantidad_productos Por Referencia)
    Escribir "¿Cuántos productos desea comprar?";
    Leer cantidad_productos;
FinSubProceso

SubProceso RegistrarProducto(contador, nombre_producto Por Referencia, precio Por Referencia)
    Escribir "Ingrese el nombre del producto ", contador, ":";
    Leer nombre_producto;
    Escribir "Ingrese el precio de ", nombre_producto, ":";
    Leer precio;
FinSubProceso

SubProceso AgregarALista(contador, nombre_producto, precio, lista_productos Por Referencia, total Por Referencia)
    total <- total + precio;
    lista_productos <- lista_productos + "Producto " + ConvertirATexto(contador) + ": " + nombre_producto + " | $" + ConvertirATexto(precio) + "   ";
FinSubProceso

SubProceso MostrarResumen(lista_productos, cantidad_productos, total)
    Escribir "";
    Escribir "========= RESUMEN DE COMPRA =========";
    Escribir lista_productos;
    Escribir "Total de productos: ", cantidad_productos;
    Escribir "Monto total de la compra: $", total;
FinSubProceso

Algoritmo Tienda_bucle_funciones
    Definir contador, cantidad_productos Como Entero;
    Definir nombre_producto, lista_productos Como Caracter;
    Definir precio, total Como Real;
	
    lista_productos <- "";
    total <- 0;
	
    MostrarBienvenida
    PedirCantidad(cantidad_productos);
	
    Para contador <- 1 Hasta cantidad_productos Con Paso 1 Hacer
        RegistrarProducto(contador, nombre_producto, precio);
        AgregarALista(contador, nombre_producto, precio, lista_productos, total);
    FinPara
	
    MostrarResumen(lista_productos, cantidad_productos, total);
FinAlgoritmo
