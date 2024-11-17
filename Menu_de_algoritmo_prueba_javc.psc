Proceso Menu_de_algoritmo_prueba_javc
    Definir opcion Como Entero
	
    Repetir
        LimpiarPantalla;  // Limpiar pantalla antes de mostrar el men� principal
        // Mostrar men� principal
        Escribir "Men� Principal:"
        Escribir "1. ejercicio condicional"
        Escribir "2. ejercicio secuencial"
        Escribir "3. ejercicio de ciclo"
        Escribir "4. Salir"
        Escribir "Seleccione una opci�n: "
        Leer opcion
        
        // Validar opci�n inv�lida
        Mientras opcion < 1 O opcion > 4 Hacer
            LimpiarPantalla;  // Limpiar pantalla si la opci�n es inv�lida
            Escribir "Opci�n inv�lida, por favor seleccione una opci�n v�lida."
            Escribir "Men� Principal:"  // Reimprimir men� principal despu�s de limpiar
            Escribir "1. ejercicio condicional"
            Escribir "2. ejercicio secuencial"
            Escribir "3. ejercicio de ciclo"
            Escribir "4. Salir"
            Escribir "Seleccione una opci�n: "
            Leer opcion
        FinMientras
        
        // Ejecutar la opci�n seleccionada
        Segun opcion Hacer
            Caso 1:
                SubmenuAumentoSueldo()  // Llamada al submen� de Aumento de Sueldo
            Caso 2:
                SubmenuCalcularComisiones()  // Llamada al submen� de Calcular Comisiones
            Caso 3:
                SubmenuContarParesImpares()  // Llamada al submen� de Contar Pares e Impares
            Caso 4:
                Escribir "Saliendo del programa..."
        FinSegun
		
    Hasta Que opcion = 4
FinProceso

// Submen� y SubProceso de Aumento de Sueldo
SubProceso SubmenuAumentoSueldo
    Definir subopcion Como Entero
    Repetir
        LimpiarPantalla;  // Limpiar pantalla antes del submen�
        Escribir "Submen� Aumento de Sueldo:"
        Escribir "1. Realizar aumento"
        Escribir "2. Volver al men� principal"
        Leer subopcion
		
        Mientras subopcion < 1 O subopcion > 2 Hacer
            LimpiarPantalla;  // Limpiar pantalla si la opci�n es inv�lida
            Escribir "Opci�n inv�lida, por favor seleccione una opci�n v�lida."
            Leer subopcion
        FinMientras
        
        Si subopcion = 1 Entonces
			AumentoSueldo()  // Llamada correcta al subproceso
        FinSi
		
    Hasta Que subopcion = 2
    LimpiarPantalla;  // Limpiar pantalla al salir del submen�
FinSubProceso

SubProceso AumentoSueldo
    Definir sueldo Como Real
    LimpiarPantalla;
    Escribir "Ingrese el sueldo del trabajador: "
    Leer sueldo
    Si sueldo < 1000 Entonces
        sueldo <- sueldo + sueldo * 0.15
    FinSi
    Escribir "El sueldo actualizado es: ", sueldo
    EsperarTecla;  // Esperar a que el usuario presione una tecla antes de continuar
FinSubProceso

// Submen� y SubProceso de Calcular Comisiones
SubProceso SubmenuCalcularComisiones
    Definir subopcion Como Entero
    Repetir
        LimpiarPantalla;  // Limpiar pantalla antes del submen�
        Escribir "Submen� Calcular Comisiones:"
        Escribir "1. Calcular comisiones"
        Escribir "2. Volver al men� principal"
        Leer subopcion
		
        Mientras subopcion < 1 O subopcion > 2 Hacer
            LimpiarPantalla;  // Limpiar pantalla si la opci�n es inv�lida
            Escribir "Opci�n inv�lida, por favor seleccione una opci�n v�lida."
            Leer subopcion
        FinMientras
        
        Si subopcion = 1 Entonces
			CalcularComisiones()  // Llamada correcta al subproceso
        FinSi
		
    Hasta Que subopcion = 2
    LimpiarPantalla;  // Limpiar pantalla al salir del submen�
FinSubProceso

SubProceso CalcularComisiones
    Definir sueldo_base, comisiones, sueldo_total Como Real
    Definir ventas1, ventas2, ventas3 Como Real
    
    LimpiarPantalla;
    Escribir "Ingrese el sueldo base del vendedor: "
    Leer sueldo_base
    
    Escribir "Ingrese el monto de la venta 1: "
    Leer ventas1
    Escribir "Ingrese el monto de la venta 2: "
    Leer ventas2
    Escribir "Ingrese el monto de la venta 3: "
    Leer ventas3
	
    comisiones <- (ventas1 + ventas2 + ventas3) * 0.10
    sueldo_total <- sueldo_base + comisiones
	
    Escribir "Comisiones por ventas: ", comisiones
    Escribir "Sueldo total con comisiones: ", sueldo_total
    EsperarTecla;  // Esperar a que el usuario presione una tecla antes de continuar
FinSubProceso

// Submen� y SubProceso de Contar Pares e Impares
SubProceso SubmenuContarParesImpares
    Definir subopcion Como Entero
    Repetir
        LimpiarPantalla;  // Limpiar pantalla antes del submen�
        Escribir "Submen� Contar Pares e Impares:"
        Escribir "1. Contar pares e impares"
        Escribir "2. Volver al men� principal"
        Leer subopcion
		
        Mientras subopcion < 1 O subopcion > 2 Hacer
            LimpiarPantalla;  // Limpiar pantalla si la opci�n es inv�lida
            Escribir "Opci�n inv�lida, por favor seleccione una opci�n v�lida."
            Leer subopcion
        FinMientras
        
        Si subopcion = 1 Entonces
			ContarParesImpares()  // Llamada correcta al subproceso
        FinSi
		
    Hasta Que subopcion = 2
    LimpiarPantalla;  // Limpiar pantalla al salir del submen�
FinSubProceso

SubProceso ContarParesImpares
    Definir num, pares, impares Como Entero
    pares <- 0
    impares <- 0
	
    Repetir
        LimpiarPantalla;
        Escribir "Ingrese un n�mero (0 para salir): "
        Leer num
        Si num <> 0 Entonces
            Si num % 2 = 0 Entonces
                pares <- pares + 1
            Sino
                impares <- impares + 1
            FinSi
        FinSi
    Hasta Que num = 0
	
    Escribir "N�meros pares: ", pares
    Escribir "N�meros impares: ", impares
    EsperarTecla;  // Esperar a que el usuario presione una tecla antes de continuar
FinSubProceso
