SubProceso Pedir_temperatura(temperatura Por Referencia)
    Escribir "Ingrese la temperatura ambiente en °C:";
    Leer temperatura;
FinSubProceso

SubProceso Verificar_temperatura(temperatura, temperatura_minima, temperatura_maxima, es_valida Por Referencia)
    Si temperatura >= temperatura_minima Y temperatura <= temperatura_maxima Entonces;
        Escribir "Temperatura adecuada. Puede seleccionar el piso.";
        es_valida <- Verdadero;
    Sino
        Escribir "La temperatura no es adecuada. Ascensor bloqueado.";
        es_valida <- Falso;
    FinSi
FinSubProceso

SubProceso Pedir_piso(piso Por Referencia)
    Escribir "Ingrese el número de piso al que desea ir:";
    Leer piso;
FinSubProceso

SubProceso Mover_ascensor(piso)
    Escribir "Moviendo el ascensor al piso ", piso, "...";
FinSubProceso

Algoritmo Ascensor_control_temperatura_funcion
    Definir piso, temperatura_minima, temperatura_maxima Como Entero;
    Definir temperatura Como Real;
    Definir es_valida Como Logico;
	
    temperatura_minima <- 18;
    temperatura_maxima <- 30;
	
    Pedir_temperatura(temperatura);
    Verificar_temperatura(temperatura, temperatura_minima, temperatura_maxima, es_valida);
	
    Si es_valida Entonces;
        Pedir_piso(piso);
        Mover_ascensor(piso);
    FinSi;
FinAlgoritmo
