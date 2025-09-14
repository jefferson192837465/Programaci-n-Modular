Funcion cantidad <- PedirCantidadContactos
    Definir cantidad Como Entero;
    Escribir "==================================================";
    Escribir "===============AGENDA DE CONTACTOS================";
    Escribir "==================================================";
    Escribir "Ingrese la cantidad de contactos que desea agregar:";
    Leer cantidad;
FinFuncion

Funcion contacto <- RegistrarContacto(numero)
    Definir nombre_contacto Como Caracter;
    Definir telefono_contacto Como Entero;
    Definir contacto Como Caracter;
    
    Escribir "Ingrese el nombre del contacto ", numero, ":";
    Leer nombre_contacto;
    
    Escribir "Ingrese el teléfono de ", nombre_contacto, ":";
    Leer telefono_contacto;
    
    contacto <- "Nombre " + ConvertirATexto(numero) + ": " + nombre_contacto + " | Teléfono: " + ConvertirATexto(telefono_contacto) + "\n";
FinFuncion

SubProceso MostrarContactos(lista)
    Escribir "";
    Escribir "=== CONTACTOS REGISTRADOS ===";
    Escribir lista;
FinSubProceso

Algoritmo Contactos_registrados_bucle_funciones
    Definir cantidad_contactos, contador Como Entero;
    Definir lista_contactos, contacto Como Caracter;
    
    lista_contactos <- "";
    
    cantidad_contactos <- PedirCantidadContactos;
    
    Para contador <- 1 Hasta cantidad_contactos Con Paso 1 Hacer
        contacto <- RegistrarContacto(contador);
        lista_contactos <- lista_contactos + contacto;
    FinPara
    
    MostrarContactos(lista_contactos);
    
FinAlgoritmo