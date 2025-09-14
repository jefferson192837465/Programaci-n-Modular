SubProceso MostrarMenu
    Escribir "===============================";
    Escribir "   MENU BIBLIOTECA";
    Escribir "1. Registrar libro";
    Escribir "2. Libros registrados";
    Escribir "3. Salir del programa";
    Escribir "===============================";
    Escribir "Seleccione una opción: ";
FinSubProceso

SubProceso RegistrarLibro(lista_libros Por Referencia)
    Definir titulo, nombre_autor Como Cadena;
    Definir cantidad_paginas Como Entero;
	
    Escribir "Ingrese el título del libro: ";
    Leer titulo;
    Escribir "Ingrese el nombre del autor: ";
    Leer nombre_autor;
    Escribir "Ingrese la cantidad de páginas: ";
    Leer cantidad_paginas;
	
    lista_libros <- lista_libros + "Título: " + titulo + " | Autor: " + nombre_autor + " | Páginas: " + ConvertirATexto(cantidad_paginas) + "\n";
    Escribir "¡Libro registrado con éxito!";
FinSubProceso

SubProceso MostrarLibros(lista_libros)
    Si lista_libros = "" Entonces
        Escribir "No hay libros registrados aún.";
    SiNo
        Escribir "===== LISTA DE LIBROS REGISTRADOS =====";
        Escribir lista_libros;
    FinSi
FinSubProceso

Algoritmo Biblioteca_bucle_funciones
    Definir lista_libros Como Cadena;
    Definir opcion Como Entero;
    lista_libros <- "";
	
    Repetir
		Limpiar Pantalla
        MostrarMenu();
        Leer opcion;
		
        Segun opcion Hacer
            1:
                RegistrarLibro(lista_libros);
            2:
                MostrarLibros(lista_libros);
            3:
                Escribir "¡Hasta luego!";
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3;
FinAlgoritmo
