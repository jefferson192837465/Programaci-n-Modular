Funcion Configuracion(cantHabitaciones Por Referencia, minTemp Por Referencia, maxTemp Por Referencia)
    Escribir "Ingrese la cantidad de habitaciones a evaluar: ";
    Leer cantHabitaciones;
    Escribir "Ingrese la temperatura mínima permitida: ";
    Leer minTemp;
    Escribir "Ingrese la temperatura máxima permitida: ";
    Leer maxTemp;
FinFuncion

Funcion Evaluar_Habitaciones(cantHabitaciones, minTemp, maxTemp)
    Definir contador Como Entero;
    Definir temp Como Real;
	
    Para contador <- 1 Hasta cantHabitaciones Con Paso 1 Hacer
        Escribir "Ingrese la temperatura de la habitación ", contador, ": ";
        Leer temp;
        Si temp < minTemp o temp > maxTemp Entonces
            Escribir "ALERTA: Habitación ", contador, " fuera de rango (", temp, "°C).";
        SiNo
            Escribir "Habitación ", contador, " en rango correcto (", temp, "°C).";
        FinSi
    FinPara
FinFuncion

Proceso Funcion_temperatura
    Definir cantidad, minTemp, maxTemp Como Entero;
    Configuracion(cantidad, minTemp, maxTemp);
    Evaluar_Habitaciones(cantidad, minTemp, maxTemp);
    Escribir "Monitoreo finalizado.";
FinProceso
