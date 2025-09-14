SubProceso Pedir_piso(piso_deseado Por Referencia)
    Escribir "Ingrese el piso al que desea ir:";
    Leer piso_deseado;
FinSubProceso

SubProceso Validar_piso(piso_deseado)
    Si piso_deseado >= 1 Y piso_deseado <= 7 Entonces;
        Escribir "Piso válido.";
        Escribir "El ascensor se está moviendo al piso ", piso_deseado, "...";
    Sino
        Escribir "El piso ingresado no existe.";
    FinSi
FinSubProceso

Algoritmo Ascensor_condicional_funciones
    Definir piso_deseado Como Entero;
    Pedir_piso(piso_deseado);
    Validar_piso(piso_deseado);
FinAlgoritmo
