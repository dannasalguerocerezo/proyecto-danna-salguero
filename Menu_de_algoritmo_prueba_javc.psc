Proceso Menu_de_algoritmo_prueba_javc
    Definir opcion Como Entero
	
    Repetir
        LimpiarPantalla;  // Limpiar pantalla antes de mostrar el menú principal
        // Mostrar menú principal
        Escribir "Menú Principal:"
        Escribir "1. ejercicio condicional"
        Escribir "2. ejercicio secuencial"
        Escribir "3. ejercicio de ciclo"
        Escribir "4. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion
        
        // Validar opción inválida
        Mientras opcion < 1 O opcion > 4 Hacer
            LimpiarPantalla;  // Limpiar pantalla si la opción es inválida
            Escribir "Opción inválida, por favor seleccione una opción válida."
            Escribir "Menú Principal:"  // Reimprimir menú principal después de limpiar
            Escribir "1. ejercicio condicional"
            Escribir "2. ejercicio secuencial"
            Escribir "3. ejercicio de ciclo"
            Escribir "4. Salir"
            Escribir "Seleccione una opción: "
            Leer opcion
        FinMientras
        
        // Ejecutar la opción seleccionada
        Segun opcion Hacer
            Caso 1:
                SubmenuAumentoSueldo()  // Llamada al submenú de Aumento de Sueldo
            Caso 2:
                SubmenuCalcularComisiones()  // Llamada al submenú de Calcular Comisiones
            Caso 3:
                SubmenuContarParesImpares()  // Llamada al submenú de Contar Pares e Impares
            Caso 4:
                Escribir "Saliendo del programa..."
        FinSegun
		
    Hasta Que opcion = 4
FinProceso

// Submenú y SubProceso de Aumento de Sueldo
SubProceso SubmenuAumentoSueldo
    Definir subopcion Como Entero
    Repetir
        LimpiarPantalla;  // Limpiar pantalla antes del submenú
        Escribir "Submenú Aumento de Sueldo:"
        Escribir "1. Realizar aumento"
        Escribir "2. Volver al menú principal"
        Leer subopcion
		
        Mientras subopcion < 1 O subopcion > 2 Hacer
            LimpiarPantalla;  // Limpiar pantalla si la opción es inválida
            Escribir "Opción inválida, por favor seleccione una opción válida."
            Leer subopcion
        FinMientras
        
        Si subopcion = 1 Entonces
			AumentoSueldo()  // Llamada correcta al subproceso
        FinSi
		
    Hasta Que subopcion = 2
    LimpiarPantalla;  // Limpiar pantalla al salir del submenú
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

// Submenú y SubProceso de Calcular Comisiones
SubProceso SubmenuCalcularComisiones
    Definir subopcion Como Entero
    Repetir
        LimpiarPantalla;  // Limpiar pantalla antes del submenú
        Escribir "Submenú Calcular Comisiones:"
        Escribir "1. Calcular comisiones"
        Escribir "2. Volver al menú principal"
        Leer subopcion
		
        Mientras subopcion < 1 O subopcion > 2 Hacer
            LimpiarPantalla;  // Limpiar pantalla si la opción es inválida
            Escribir "Opción inválida, por favor seleccione una opción válida."
            Leer subopcion
        FinMientras
        
        Si subopcion = 1 Entonces
			CalcularComisiones()  // Llamada correcta al subproceso
        FinSi
		
    Hasta Que subopcion = 2
    LimpiarPantalla;  // Limpiar pantalla al salir del submenú
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

// Submenú y SubProceso de Contar Pares e Impares
SubProceso SubmenuContarParesImpares
    Definir subopcion Como Entero
    Repetir
        LimpiarPantalla;  // Limpiar pantalla antes del submenú
        Escribir "Submenú Contar Pares e Impares:"
        Escribir "1. Contar pares e impares"
        Escribir "2. Volver al menú principal"
        Leer subopcion
		
        Mientras subopcion < 1 O subopcion > 2 Hacer
            LimpiarPantalla;  // Limpiar pantalla si la opción es inválida
            Escribir "Opción inválida, por favor seleccione una opción válida."
            Leer subopcion
        FinMientras
        
        Si subopcion = 1 Entonces
			ContarParesImpares()  // Llamada correcta al subproceso
        FinSi
		
    Hasta Que subopcion = 2
    LimpiarPantalla;  // Limpiar pantalla al salir del submenú
FinSubProceso

SubProceso ContarParesImpares
    Definir num, pares, impares Como Entero
    pares <- 0
    impares <- 0
	
    Repetir
        LimpiarPantalla;
        Escribir "Ingrese un número (0 para salir): "
        Leer num
        Si num <> 0 Entonces
            Si num % 2 = 0 Entonces
                pares <- pares + 1
            Sino
                impares <- impares + 1
            FinSi
        FinSi
    Hasta Que num = 0
	
    Escribir "Números pares: ", pares
    Escribir "Números impares: ", impares
    EsperarTecla;  // Esperar a que el usuario presione una tecla antes de continuar
FinSubProceso
