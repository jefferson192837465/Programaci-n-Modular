Funcion n1 <- LeerNumero1(1)
    Definir n1 Como Real
    Escribir "Ingrese el primer número: "
    Leer n1
FinFuncion

Funcion n2 <- LeerNumero2(2)
    Definir n2 Como Real
    Escribir "Ingrese el segundo número: "
    Leer n2
FinFuncion

Funcion resultado <- CalcularSuma(a, b)
    Definir resultado Como Real
    resultado <- a + b
FinFuncion

Funcion resultado <- CalcularResta(a, b)
    Definir resultado Como Real
    resultado <- a - b
FinFuncion

Funcion resultado <- CalcularMultiplicacion(a, b)
    Definir resultado Como Real
    resultado <- a * b
FinFuncion

Funcion resultado <- CalcularDivision(a, b)
    Definir resultado Como Real
    Si b <> 0 Entonces
        resultado <- a / b
    SiNo
        Escribir "no se puede dividir entre cero."
        resultado <- 0
    FinSi
FinFuncion

Funcion MostrarResultados(a, b)
    Escribir "=== RESULTADOS ==="
    Escribir "Suma: ", CalcularSuma(a, b)
    Escribir "Resta: ", CalcularResta(a, b)
    Escribir "Multiplicación: ", CalcularMultiplicacion(a, b)
    Escribir "División: ", CalcularDivision(a, b)
FinFuncion

Proceso ProcesoPrincipal
    Definir num1, num2 Como Real;
    num1 <- LeerNumero1(1);
    num2 <- LeerNumero2(2);
    MostrarResultados(num1, num2);
FinProceso
