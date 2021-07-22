;=========================================================================
;					Proyecto Final ISE
;					"Sistema de Votacion"
; Por: 
;	* Alejandro Ballón
;	* Ricardo Temoche
;	* Mauricio Rivera
;	* Alex Rodríguez
;	* Eduardo Guerrero
; 
;==========================================================================
.DEF temp=R16

;Vector de interrupciones
.ORG 0x002A
	JMP ISR_ADC

.ORG 0x0034

Inicio:
;================ Definiendo Pila ==================
	LDI temp, LOW(RAMEND)
	OUT SPL, temp 
	LDI temp, HIGH(RAMEND)
	OUT SPH, temp

;=========== Configuracion de Puertos ==============
	

;========== Inicialización de variables ============
	
	
;=========Configuracion de Interrupciones===========
;P0_ISR

;P1_ISR

;P2_ISR

;P3_ISR

;P4_ISR

;SW_ISR

;--------------------ADC_ISR------------------------
;ADMUX: ADC Multiplexor Selection Register 
;	[REFS1, REFS2, ADLAR, - , MUX3, MUX2, MUX1, MUX0] 
;	* REFS[1:0]= 11 --> Volt Interno 1.1V con capacitor en pin AREF
;	* ADLAR= 0 --> Se quiere 10 bits de presicion
;	* MUX[3:0]= 0000 --> Usar la entrada ADC0
	LDI temp, 0b11000000
	STS ADMUX, temp

;ADCSRA: ADC Control and Status Register A 
;	[ADEN, ADSC, ADATE, ADIF, ADIE, ADPS2, ADPS1, ADPS0] 
;	* ADEN= 1 --> Activar ADC
;	* ADSC= 1 --> Empezar Conversion
;	* ADATE= 1 --> Activar autotriggering
;	* ADIF --> Interrupt Flag (No se quiere escribir)
;	* ADIE = 1 -> Activar interrupcion
;	* ADPS[2:0] = 000 --> Factor de Prescaler=2
	LDI temp, 0b11101000
	STS ADCSRA, temp

;ADCSRB: ADC Control and Status Register B
;	[-, ACME , -, -, -, ADTS2, ADTS1, ADTS0] 
;	* ADPS[2:0] = 000 --> Free Running Mode
	CLR temp; Porque el registro guarda el valor 0
	STS ADCSRA, temp 

;Timer_1s_ISR

;Timer_P0_Presionado

;========= Habilitacion de interrupcion global ============
	SEI

;==========================================================
;                       Subrutinas
;==========================================================

;------------------------ISR_P0---------------------------
;Registros Modificados =>
;Registros de Entrada =>

;------------------------ISR_P0---------------------------
;Registros Modificados =>
;Registros de Entrada =>

;------------------------ISR_P0---------------------------
;Registros Modificados =>
;Registros de Entrada =>

;------------------------ISR_P0---------------------------
;Registros Modificados =>
;Registros de Entrada =>

;------------------------ISR_P0---------------------------
;Registros Modificados =>
;Registros de Entrada =>

;------------------------ISR_SW---------------------------
;Registros Modificados =>
;Registros de Entrada =>

;------------------------ISR_ADC--------------------------
;Registros Modificados =>
;Registros de Entrada =>

;---------------------ISR_Timer_1s------------------------
;Registros Modificados =>
;Registros de Entrada =>

;-----------------ISR_Timer_P0_Presionado-----------------
;Registros Modificados =>
;Registros de Entrada =>

;------------------------BCD2BIN7SEG----------------------
;Registros Modificados =>
;Registros de Entrada =>

Main:
    inc r16
    rjmp Main

