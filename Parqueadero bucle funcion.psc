SubProceso RegistrarCarro(contador, lista_carros Por Referencia)
    Definir placa, hora Como Caracter;
    
    Escribir "Ingrese la placa del carro ", contador, ":";
    Leer placa;
    
    Escribir "Ingrese la hora de ingreso (HH:MM):";
    Leer hora;
    
    lista_carros <- lista_carros + "Carro " + ConvertirATexto(contador) + ": Placa: " + placa + " | Hora de ingreso: " + hora + "   ";
FinSubProceso

SubProceso MostrarRegistro(lista_carros)
    Escribir "";
    Escribir "===== REGISTRO DE CARROS =====";
    Escribir lista_carros;
FinSubProceso

Algoritmo Parqueadero_bucle_funciones
    Definir lista_carros Como Caracter;
    Definir contador, cantidad Como Entero;
    
    lista_carros <- "";
    
    Escribir "¿Cuántos carros desea registrar?";
    Leer cantidad;
    
    Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
        RegistrarCarro(contador, lista_carros);
    FinPara
    
    MostrarRegistro(lista_carros);
FinAlgoritmo