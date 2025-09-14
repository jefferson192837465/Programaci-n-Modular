SubProceso MostrarPapel(papelDisponible)
    Escribir "Papel disponible: ", papelDisponible;
FinSubProceso

SubProceso ImprimirPaginas(paginasSolicitadas, papelDisponible Por Referencia)
    Si paginasSolicitadas <= papelDisponible Entonces
        Escribir "Imprimiendo ", paginasSolicitadas, " páginas...";
        papelDisponible <- papelDisponible - paginasSolicitadas;
    Sino
        Escribir "No hay suficiente papel para imprimir ", paginasSolicitadas, " páginas.";
        Escribir "Digite nuevamente la cantidad de páginas:";
        Leer paginasSolicitadas;
        ImprimirPaginas(paginasSolicitadas, papelDisponible);
    FinSi
FinSubProceso

SubProceso ConsultarContinuar(papelDisponible, opcion_ Por Referencia)
    Si papelDisponible > 0 Entonces
        Escribir "¿Desea imprimir más? (S/N)";
        Leer opcion_;
    Sino
        Escribir "Se agotó el papel. No puede imprimir más hojas.";
        opcion_ <- "N";
    FinSi
FinSubProceso

Algoritmo Impresora_bucle_funciones
    Definir paginasSolicitadas, papelDisponible Como Entero;
    Definir opcion_ Como Caracter;
    
    papelDisponible <- 100;
    opcion_ <- "S";
    
    Mientras opcion_ = "S" o opcion_ = "s" Hacer
        MostrarPapel(papelDisponible);
        Escribir "¿Cuántas páginas desea imprimir?";
        Leer paginasSolicitadas;
        
        ImprimirPaginas(paginasSolicitadas, papelDisponible);
        
        ConsultarContinuar(papelDisponible, opcion_);
    FinMientras
    
    Escribir "Gracias por usar la impresora.";
FinAlgoritmo