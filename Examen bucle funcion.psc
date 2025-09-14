SubProceso IngresarNota(suma Por Referencia, contador Por Referencia)
    Definir nota Como Real;
    Escribir "Por favor ingrese la nota del examen:";
    Leer nota;
    suma <- suma + nota;
    contador <- contador + 1;
FinSubProceso

Funcion continuar <- PreguntarContinuar
    Definir continuar Como Caracter;
    Escribir "¿Deseas ingresar otra nota? (S/N)";
    Leer continuar;
FinFuncion

SubProceso CalcularPromedio(suma, contador)
    Definir promedio Como Real;
    promedio <- suma / contador;
    Escribir "Promedio de notas: ", promedio;
    
    Si promedio >= 3.0 Entonces
        Escribir "¡Aprobado!";
    Sino
        Escribir "Reprobado.";
    FinSi
FinSubProceso

Algoritmo Examen_bucle_funciones
    Definir suma, promedio Como Real;
    Definir contador Como Entero;
    Definir continuar Como Caracter;
    
    suma <- 0;
    contador <- 0;
    
    Repetir
        IngresarNota(suma, contador);
        continuar <- PreguntarContinuar;
    Hasta Que continuar = "N" o continuar = "n";
    
    Si contador > 0 Entonces
        CalcularPromedio(suma, contador);
    Sino
        Escribir "No se ingresaron notas.";
    FinSi
FinAlgoritmo
