Funcion numero_ <- PedirNumero
    Definir numero_ Como Entero;
    Escribir "Ingrese un número entero (positivo) para realizar la cuenta regresiva:";
    Leer numero_;
    Si numero_ < 0 Entonces
        Escribir "Error: El número debe ser positivo.";
        numero_ <- 0;
    FinSi
FinFuncion

SubProceso MostrarInicio(numero_)
    Escribir "El número agregado es: ", numero_, ". Iniciando cuenta regresiva...";
FinSubProceso

SubProceso HacerCuentaRegresiva(numero_)
    Mientras numero_ >= 0 Hacer
        Escribir numero_;
        Esperar 1 Segundos;
        numero_ <- numero_ - 1;
    FinMientras
FinSubProceso

Algoritmo Cuenta_regresiva_bucle_funciones
    Definir numero_ Como Entero;
    
    numero_ <- PedirNumero;
    MostrarInicio(numero_);
    HacerCuentaRegresiva(numero_);
    
    Escribir "Fin de la cuenta regresiva.";
FinAlgoritmo