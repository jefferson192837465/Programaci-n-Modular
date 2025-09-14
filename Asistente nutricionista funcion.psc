SubProceso PedirDatos(peso Por Referencia, altura Por Referencia)
    Escribir "Ingrese su peso en kilogramos:";
    Leer peso;
    Escribir "Ingrese su altura en metros:";
    Leer altura;
FinSubProceso

SubProceso CalcularIMC(peso, altura, imc Por Referencia)
    Si peso <= 0 O altura <= 0 Entonces;
        Escribir "El peso y la altura deben ser valores positivos.";
        imc <- -1;
    Sino;
        imc <- peso / (altura * altura);
        Escribir "Su IMC es: ", imc;
    FinSi;
FinSubProceso

SubProceso ClasificarIMC(imc, categoria Por Referencia)
    Si imc <> -1 Entonces;
        Si imc < 18.5 Entonces;
            categoria <- 1;
        Sino;
            Si imc < 24.9 Entonces;
                categoria <- 2;
            Sino;
                Si imc < 29.9 Entonces;
                    categoria <- 3;
                Sino;
                    categoria <- 4;
                FinSi;
            FinSi;
        FinSi;
    FinSi;
FinSubProceso

SubProceso MostrarCategoria(categoria)
    Segun categoria Hacer
        1:
            Escribir "Categoría: Bajo peso";
        2:
            Escribir "Categoría: Peso normal";
        3:
            Escribir "Categoría: Sobrepeso";
        4:
            Escribir "Categoría: Obesidad";
    FinSegun;
FinSubProceso

Algoritmo Asistente_nutricionista_funciones
    Definir peso, altura, imc Como Real;
    Definir categoria Como Entero;
	
    PedirDatos(peso, altura);
    CalcularIMC(peso, altura, imc);
    ClasificarIMC(imc, categoria);
    MostrarCategoria(categoria);
FinAlgoritmo