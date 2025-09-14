SubProceso Pedir_peso(peso Por Referencia)
    Escribir "Ingrese su peso en kg:";
    Leer peso;
FinSubProceso

SubProceso Pedir_piso(piso Por Referencia)
    Escribir "Ingrese el piso al que desea ir, 7 como máximo:";
    Leer piso;
FinSubProceso

SubProceso Verificar_ascensor(peso, piso, limite_peso)
    Si peso <= limite_peso Entonces;
        Si piso >= 1 Y piso <= 7 Entonces;
            Escribir "Peso aceptado. El ascensor se está moviendo al piso ", piso, "...";
        Sino;
            Escribir "Error: El piso ingresado no existe.";
        FinSi;
    Sino;
        Escribir "Error: El ascensor está sobrecargado.";
    FinSi;
FinSubProceso

Algoritmo Ascensor_limite_peso_funciones
    Definir peso_persona, piso_deseado, limite_peso Como Real;
	
    limite_peso <- 150;
	
    Pedir_peso(peso_persona);
    Pedir_piso(piso_deseado);
    Verificar_ascensor(peso_persona, piso_deseado, limite_peso);
FinAlgoritmo
