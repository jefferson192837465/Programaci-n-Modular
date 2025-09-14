SubProceso PedirResultado(resultado Por Referencia)
    Escribir "Ingrese el resultado del partido (ganado, perdido o empatado):";
    Leer resultado;
    resultado <- Minusculas(resultado);
FinSubProceso

SubProceso ActualizarPuntos(resultado, puntos Por Referencia)
    Segun resultado Hacer
        "ganado":
            puntos <- puntos + 3;
            Escribir "¡Felicidades! Ganaste el partido. +3 puntos.";
        "empatado":
            puntos <- puntos + 1;
            Escribir "Partido empatado. +1 punto.";
        "perdido":
            puntos <- puntos + 0;
            Escribir "Perdiste el partido. 0 puntos.";
        De Otro Modo:
            Escribir "Resultado no válido. Debe ser ganado, perdido o empatado.";
    FinSegun
FinSubProceso

SubProceso MostrarPuntos(puntos)
    Escribir "Puntuación actual del equipo: ", puntos;
FinSubProceso

Algoritmo Clasificacion_campeonato_funciones
    Definir puntos_equipo Como Entero;
    Definir resultado Como Cadena;
	
    puntos_equipo <- 7;
	
    PedirResultado(resultado);
    ActualizarPuntos(resultado, puntos_equipo);
    MostrarPuntos(puntos_equipo);
FinAlgoritmo
