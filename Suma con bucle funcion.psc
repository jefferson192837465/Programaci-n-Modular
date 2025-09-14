SubProceso PedirCantidadNumeros(n Por Referencia)
    Escribir "¿Cuántos números desea ingresar?";
    Leer n;
FinSubProceso

SubProceso LeerNumero(contador, numero_ Por Referencia)
    Escribir "Ingrese el número ", contador, ":";
    Leer numero_;
    
    Si numero_ < 0 Entonces
        Escribir "Número inválido, se tomará como 0.";
        numero_ <- 0;
    FinSi
FinSubProceso

SubProceso MostrarResultado(suma)
    Escribir "==============================";
    Escribir "La suma total de los números ingresados es: ", suma;
FinSubProceso

Algoritmo Suma_con_bucle_funciones
    Definir n, contador Como Entero;
    Definir numero_, suma Como Real;
    
    suma <- 0;
    
    PedirCantidadNumeros(n);
    
    Para contador <- 1 Hasta n Con Paso 1 Hacer
        LeerNumero(contador, numero_);
        suma <- suma + numero_;
    FinPara
    
    MostrarResultado(suma);
FinAlgoritmo