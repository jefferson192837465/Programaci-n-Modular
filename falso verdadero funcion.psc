Funcion mensaje(verdaderoo)
	Escribir verdaderoo
Fin Funcion

Funcion  verdaderoo <- falsoo(boolcana)
	Definir verdaderoo Como Caracter;
	Si boolcana = "si" o boolcana = "si" Entonces
		Escribir " actualmente es estudiante"
	SiNo
		Escribir " no estas en ningun tipo de institucion";
	Fin Si
Fin Funcion

Funcion boolcana <- es_estudiante
	Definir boolcana Como Caracter;
	Escribir " es usted estudiante si/no";
	Leer boolcana;
Fin Funcion

Algoritmo falsoverdadero
	
	Definir sii,dato_persona  Como Caracter;
	
	dato_persona <- es_estudiante
	sii <- falsoo(dato_persona)
	mensaje(verdaderoo)
	
	
FinAlgoritmo
