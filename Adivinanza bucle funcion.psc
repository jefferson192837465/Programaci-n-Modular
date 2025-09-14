SubProceso MostrarBienvenida
    Escribir "Bienvenido al juego";
    Escribir "Debes adivinar un número entre 1 y 100 para ganar";
FinSubProceso

SubProceso GenerarNumeroSecreto(numero_ Por Referencia)
    numero_ <- Aleatorio(1,100);
FinSubProceso

SubProceso PedirIntento(intento Por Referencia)
    Escribir "Ingrese su intento:";
    Leer intento;
FinSubProceso

SubProceso VerificarIntento(intento, numero_, encontrado Por Referencia)
    Si intento = numero_ Entonces
        Escribir "Felicidades, completaste el juego.";
        encontrado <- Verdadero;
    Sino
        Si intento < numero_ Entonces
            Escribir "El número secreto es mayor. Intenta de nuevo:";
        Sino
            Escribir "El número secreto es menor. Intenta de nuevo:";
        FinSi
    FinSi
FinSubProceso

Algoritmo Adivinanza_bucle_funciones
    Definir numero_, intento Como Entero;
    Definir encontrado Como Logico;
	
    encontrado <- Falso;
	
    MostrarBienvenida;
    GenerarNumeroSecreto(numero_);
    PedirIntento(intento);
	
    Mientras encontrado = Falso Hacer
        VerificarIntento(intento, numero_, encontrado);
        Si encontrado = Falso Entonces
            PedirIntento(intento);
        FinSi
    FinMientras
FinAlgoritmo
