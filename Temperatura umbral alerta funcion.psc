SubProceso PedirTemperatura(temperatura Por Referencia)
    Escribir "Ingrese la temperatura actual en °C:";
    Leer temperatura;
FinSubProceso

SubProceso PedirUmbral(umbral Por Referencia)
    Escribir "Ingrese el umbral de alerta en °C:";
    Leer umbral;
FinSubProceso

SubProceso VerificarTemperatura(temperatura, umbral)
    Si temperatura >= 18 Y temperatura <= 25 Entonces;
        Escribir "Temperatura adecuada.";
    SiNo;
        Escribir "Temperatura no adecuada.";
        Si temperatura > umbral Entonces;
            Escribir "ALERTA: La temperatura supera el umbral permitido.";
        Sino;
            Escribir "La temperatura no supera el umbral permitido.";
        FinSi;
    FinSi;
FinSubProceso

Algoritmo Temperatura_umbral_alerta_funciones
    Definir temperatura_actual, umbral_alerta Como Real;
	
    PedirTemperatura(temperatura_actual);
    PedirUmbral(umbral_alerta);
    VerificarTemperatura(temperatura_actual, umbral_alerta);
FinAlgoritmo
