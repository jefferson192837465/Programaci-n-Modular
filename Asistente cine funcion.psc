SubProceso PedirEdad(edad Por Referencia)
    Escribir "Bienvenido a nuestro cine, soy tu asistente virtual.";
    Escribir "Ingrese su edad:";
    Leer edad;
FinSubProceso

SubProceso ClasificarEdad(edad, categoria Por Referencia)
    Si edad < 7 Entonces;
        categoria <- 1;
    SiNo
        Si edad >= 7 Y edad <= 17 Entonces;
            categoria <- 2;
        SiNo
            Si edad >= 18 Y edad <= 30 Entonces;
                categoria <- 3;
            SiNo
                categoria <- 4;
            FinSi
        FinSi;
    FinSi
FinSubProceso

SubProceso MostrarRecomendacion(categoria)
    Segun categoria Hacer
        Caso 1:
            Escribir "Recomendamos películas animadas y educativas.";
        Caso 2:
            Escribir "Sugerimos películas de aventura y comedias familiares.";
        Caso 3:
            Escribir "Ofrecemos una gran variedad de géneros sin restricciones.";
        Caso 4:
            Escribir "Recomendamos películas clásicas o dramas.";
    FinSegun;
FinSubProceso

Algoritmo Asistente_cine_funciones
    Definir edad, categoria Como Entero;
	
    PedirEdad(edad);
    ClasificarEdad(edad, categoria);
    MostrarRecomendacion(categoria);
FinAlgoritmo
