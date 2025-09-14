SubProceso PedirSaldo(saldo Por Referencia)
    Escribir "Ingrese su saldo inicial:";
    Leer saldo;
FinSubProceso

SubProceso MostrarSaldo(saldo)
    Escribir "Su saldo actual es: $", saldo;
FinSubProceso

SubProceso ProcesarRetiro(saldo Por Referencia, retiro Por Referencia)
    Escribir "Ingrese la cantidad que desea retirar:";
    Leer retiro;
	
    Si retiro > saldo Entonces
        Escribir "No puede retirar más de lo que tiene.";
    Sino
        saldo <- saldo - retiro;
        Escribir "Retiro exitoso de $", retiro;
        Escribir "Saldo restante: $", saldo;
    FinSi
FinSubProceso

SubProceso PreguntarContinuar(saldo, opcion_ Por Referencia)
    Si saldo > 0 Entonces
        Escribir "¿Desea realizar otro retiro? (S/N)";
        Leer opcion_;
    Sino
        Escribir "Su saldo es 0. No puede retirar más dinero.";
        opcion_ <- "N";
    FinSi
FinSubProceso

Algoritmo Cajero_bucle_funciones
    Definir saldo, retiro Como Real;
    Definir opcion_ Como Caracter;
	
    Escribir "=== Cajero Automático ===";
    PedirSaldo(saldo);
	
    opcion_ <- "S";
	
    Mientras opcion_ = "S" o opcion_ = "s" Hacer
        MostrarSaldo(saldo);
        ProcesarRetiro(saldo, retiro);
        PreguntarContinuar(saldo, opcion_);
    FinMientras;
	
    Escribir "Gracias por usar el cajero.";
FinAlgoritmo