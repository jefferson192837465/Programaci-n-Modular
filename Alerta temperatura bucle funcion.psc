SubProceso PedirTemperatura(Temperatura_actual Por Referencia)
	Limpiar Pantalla
    Escribir "Ingrese la temperatura actual en °C:";
    Leer Temperatura_actual;
FinSubProceso

SubProceso MostrarAlerta
    Escribir "===========================================";
    Escribir "¡¡ALERTA!! La temperatura no se encuentra dentro del rango establecido";
    Escribir "Valide que la temperatura sea la adecuada";
    Escribir "===========================================";
	Esperar Tecla
FinSubProceso

SubProceso MostrarTemperaturaCorrecta(Temperatura_actual)
    Escribir "Los ", Temperatura_actual, " grados están dentro del rango permitido.";
FinSubProceso

Algoritmo Alerta_temperatura_bucle_funciones
    Definir Temperatura_actual Como Real;
	
    PedirTemperatura(Temperatura_actual);
	
    Repetir
        Si Temperatura_actual < 18 O Temperatura_actual > 32 Entonces
            MostrarAlerta;
            PedirTemperatura(Temperatura_actual);
        FinSi
    Hasta Que Temperatura_actual >= 18 Y Temperatura_actual <= 32;
	
    MostrarTemperaturaCorrecta(Temperatura_actual);
FinAlgoritmo
