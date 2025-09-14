SubProceso PedirDatos(distancia Por Referencia, velocidad Por Referencia)
    Escribir "Ingrese la distancia del viaje (km):";
    Leer distancia;
    Escribir "Ingrese la velocidad promedio (km/h):";
    Leer velocidad;
FinSubProceso

SubProceso CalcularTiempo(distancia, velocidad, tiempo Por Referencia)
    tiempo <- distancia / velocidad;
FinSubProceso

SubProceso MostrarTiempo(tiempo)
    Escribir "El viaje tomará aproximadamente ", tiempo, " horas.";
FinSubProceso

SubProceso PreguntarContinuar(opcion_ Por Referencia)
    Escribir "¿Desea hacer otro viaje? (S/N):";
    Leer opcion_;
FinSubProceso

Algoritmo Viaje_funciones
    Definir distancia, velocidad, tiempo Como Real;
    Definir opcion_ Como Caracter;
	
    opcion_ <- "S";
	
    Mientras opcion_ = "S" o opcion_ = "s" Hacer
        PedirDatos(distancia, velocidad);
        CalcularTiempo(distancia, velocidad, tiempo);
        MostrarTiempo(tiempo);
        PreguntarContinuar(opcion_);
    FinMientras
	
    Escribir "¡Buen viaje!";
FinAlgoritmo