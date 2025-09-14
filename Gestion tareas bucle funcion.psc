SubProceso Menu
    Escribir "===============================";
    Escribir "     GESTIÓN DE TAREAS";
    Escribir "1. Registrar tarea";
    Escribir "2. Ver tareas registradas";
    Escribir "3. Salir del programa";
    Escribir "===============================";
    Escribir "Seleccione una opción: ";
FinSubProceso

SubProceso RegistrarTarea(lista_tareas Por Referencia)
    Definir titulo, descripcion, fecha_vencimiento Como Caracter;
    
    Escribir "Ingrese el título de la tarea: ";
    Leer titulo;
    Escribir "Ingrese la descripción de la tarea: ";
    Leer descripcion;
    Escribir "Ingrese la fecha de vencimiento (dd/mm/aaaa): ";
    Leer fecha_vencimiento;
    
    lista_tareas <- lista_tareas + "Título: " + titulo + " | Descripción: " + descripcion + " | Vence: " + fecha_vencimiento + "  ";
    
    Escribir "¡Tarea registrada con éxito!";
FinSubProceso

SubProceso VerTareas(lista_tareas)
    Si lista_tareas = "" Entonces
        Escribir "No hay tareas registradas aún.";
		Esperar Tecla
	Sino
        Escribir "===== LISTA DE TAREAS =====";
        Escribir lista_tareas;
		Esperar Tecla
    FinSi
FinSubProceso

Algoritmo Gestion_tareas_bucle_funciones
    Definir lista_tareas Como Caracter;
    Definir opcion Como Entero;
    
    lista_tareas <- "";
    
    Repetir
        Limpiar Pantalla;
        Menu;
        Leer opcion;
        
        Segun opcion Hacer
            1:
                RegistrarTarea(lista_tareas);
            2:
                VerTareas(lista_tareas);
            3:
                Escribir "¡Hasta luego!";
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo.";
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo
