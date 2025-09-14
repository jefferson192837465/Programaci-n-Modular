SubProceso Pedir_piso(piso Por Referencia)
    Escribir "Por favor, ingrese el número de piso al que desea ir:";
    Leer piso;
FinSubProceso

SubProceso Mover_ascensor(piso, numero_piso Por Referencia)
    Segun piso Hacer
        Caso 1:
            numero_piso <- "1";
            Escribir "Estamos llegando al piso 1...";
        Caso 2:
            numero_piso <- "2";
            Escribir "Estamos llegando al piso 2...";
        Caso 3:
            numero_piso <- "3";
            Escribir "Estamos llegando al piso 3...";
        Caso 4:
            numero_piso <- "4";
            Escribir "Estamos llegando al piso 4...";
        Caso 5:
            numero_piso <- "5";
            Escribir "Estamos llegando al piso 5...";
        Caso 6:
            numero_piso <- "6";
            Escribir "Estamos llegando al piso 6...";
        Caso 7:
            numero_piso <- "7";
            Escribir "Estamos llegando al piso 7...";
        De Otro Modo:
            numero_piso <- "Error";
            Escribir "Error: el piso ingresado no existe.";
    FinSegun
FinSubProceso

Algoritmo Ascensor_funcional_funciones
    Definir piso Como Entero;
    Definir numero_piso Como Caracter
	
    Pedir_piso(piso);
    Mover_ascensor(piso, numero_piso);
FinAlgoritmo
