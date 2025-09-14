SubProceso PedirTemperatura(temperatura Por Referencia)
    Escribir "Ingrese la temperatura actual en grados Celsius:";
    Leer temperatura;
FinSubProceso

SubProceso VerificarTemperatura(temperatura)
    Si temperatura >= 18 Y temperatura <= 35 Entonces;
        Escribir "La temperatura es adecuada.";
    Sino;
        Escribir "La temperatura no es adecuada.";
    FinSi;
FinSubProceso

Algoritmo Sensor_temperatura_funciones
    Definir temperatura_actual Como Real;
	
    PedirTemperatura(temperatura_actual);
    VerificarTemperatura(temperatura_actual);
FinAlgoritmo