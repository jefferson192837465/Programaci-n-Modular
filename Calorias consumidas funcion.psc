SubProceso PedirCalorias(dia Por copia , calorias Por Referencia)
    Escribir "Ingrese las calor�as consumidas el ", dia, ": ";
    Leer calorias;
FinSubProceso

SubProceso CalcularTotal(lunes, martes, miercoles, jueves, viernes, sabado, domingo, total Por Referencia)
    total <- lunes + martes + miercoles + jueves + viernes + sabado + domingo;
FinSubProceso

SubProceso MostrarTotal(total)
    Escribir "El total de calor�as consumidas en la semana es: ", total;
FinSubProceso

Algoritmo Calorias_consumidas_funciones
    Definir lunes, martes, miercoles, jueves, viernes, sabado, domingo Como Real;
    Definir totalSemana Como Real;
	
    PedirCalorias("lunes", lunes);
    PedirCalorias("martes", martes);
    PedirCalorias("mi�rcoles", miercoles);
    PedirCalorias("jueves", jueves);
    PedirCalorias("viernes", viernes);
    PedirCalorias("s�bado", sabado);
    PedirCalorias("domingo", domingo);
	
    CalcularTotal(lunes, martes, miercoles, jueves, viernes, sabado, domingo, totalSemana);
    MostrarTotal(totalSemana);
FinAlgoritmo
