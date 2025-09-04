Funcion consumo <- LeerDatosPiso(nombrePiso)
    Definir oficinas, contador Como Entero
    Definir consumoOficina, consumo Como Real
	
    consumo <- 0
    Escribir "Ingrese la cantidad de oficinas del piso ", nombrePiso, ": "
    Leer oficinas
	
    Para contador <- 1 Hasta oficinas Con Paso 1 Hacer
        Escribir "Ingrese el consumo de luz (horas) de la oficina ", i, ": "
        Leer consumoOficina
        consumo <- consumo + consumoOficina
    FinPara
	
    Retornar <- consumo
FinFuncion

SubProceso EvaluarConsumo(consumo)
    Si consumo >= 0 Y consumo <= 30 Entonces
        Escribir "Consumo bajo (", consumo, ")."
    Sino
        Si consumo > 30 Y consumo <= 60 Entonces
            Escribir "Consumo normal (", consumo, ")."
        Sino
            Si consumo > 60 Y consumo <= 100 Entonces
                Escribir "Consumo alto (", consumo, ")."
            Sino
                Escribir "? ALERTA: consumo excesivo (", consumo, "), este piso no se puede seguir utilizando."
            FinSi
        FinSi
    FinSi
FinSubProceso

SubProceso MostrarResultadosPorPiso(nombrePiso, consumo)
    Escribir "=== Piso ", nombrePiso, " ==="
    Escribir "Consumo total: ", consumo
    EvaluarConsumo(consumo)
    Escribir " "
FinSubProceso

Proceso ProcesoPrincipal
    Definir consumoTotal, cEjecutivo, cVIP, cNormal, cBodegas Como Real
    consumoTotal <- 0
	
    cEjecutivo <- LeerDatosPiso("Ejecutivo")
    MostrarResultadosPorPiso("Ejecutivo", cEjecutivo)
    consumoTotal <- consumoTotal + cEjecutivo
	
    cVIP <- LeerDatosPiso("VIP")
    MostrarResultadosPorPiso("VIP", cVIP)
    consumoTotal <- consumoTotal + cVIP
	
    cNormal <- LeerDatosPiso("Normal")
    MostrarResultadosPorPiso("Normal", cNormal)
    consumoTotal <- consumoTotal + cNormal
	
    cBodegas <- LeerDatosPiso("Bodegas")
    MostrarResultadosPorPiso("Bodegas", cBodegas)
    consumoTotal <- consumoTotal + cBodegas
	
    Escribir "=========================="
    Escribir "Consumo total del edificio: ", consumoTotal
FinProceso
