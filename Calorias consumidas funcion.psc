SubProceso PedirCalorias(dia Por copia , calorias Por Referencia)
    Escribir "Ingrese las calorías consumidas el ", dia, ": ";
    Leer calorias;
FinSubProceso

SubProceso CalcularTotal(lunes, martes, miercoles, jueves, viernes, sabado, domingo, total Por Referencia)
    total <- lunes + martes + miercoles + jueves + viernes + sabado + domingo;
FinSubProceso

SubProceso MostrarTotal(total)
    Escribir "El total de calorías consumidas en la semana es: ", total;
FinSubProceso

Algoritmo Calorias_consumidas_funciones
    Definir lunes, martes, miercoles, jueves, viernes, sabado, domingo Como Real;
    Definir totalSemana Como Real;
	
    PedirCalorias("lunes", lunes);
    PedirCalorias("martes", martes);
    PedirCalorias("miércoles", miercoles);
    PedirCalorias("jueves", jueves);
    PedirCalorias("viernes", viernes);
    PedirCalorias("sábado", sabado);
    PedirCalorias("domingo", domingo);
	
    CalcularTotal(lunes, martes, miercoles, jueves, viernes, sabado, domingo, totalSemana);
    MostrarTotal(totalSemana);
FinAlgoritmo
