TITLE RANGOS
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE IRVINE32.INC
.DATA
	C1 BYTE "C1",0
	C2 BYTE "C2",0
	C3 BYTE "C3",0
	C4 BYTE "NO ES VALIDO EL RANGO DEL NUMERO",0
	PEDIR BYTE "ENTRE UN NUMERO ---> :",0
.CODE
RANGO PROC
	MOV EDX,OFFSET PEDIR
	CALL WRITESTRING
	CALL READDEC
	; En esta parte ya tenemos en EAX el numero que hemos leído y listo para ser procesado
	; Comenzamos haciendo la comparación con el límite superior  del rango 0 a100
	CMP EAX, 100
	JA    E1
	MOV EDX,OFFSET C1
	CALL WRITESTRING
	JMP Fuera
	
	; Si el número es mayor que 100 viene a comparar el rango 200-300 
	; Seguimos con la misma lógica de comenzar con el límite superior 300
	; Si es mayor se va a comparar el otro rango, de lo contrario hay que comparar con el 
	; límite inferior (200) de este rango y si es menor nos vamos a hacer la comparación
	;  del rango que sigue y aplicamos el mismo razonamiento
	
	E1: CMP EAX,300 
	JA E2
	CMP EAX,200
	JB E2
	MOV EDX,OFFSET C2
	CALL WRITESTRING
	JMP Fuera
	
	E2: CMP EAX,500
	JA E3
	CMP EAX,400
	JB E3
	MOV EDX,OFFSET C3
	CALL WRITESTRING
	JMP Fuera
	
	; Aquí caen los que no están en el rango establecido
	E3: MOV EDX,OFFSET C4
	CALL WRITESTRING
Fuera:
    EXIT
RANGO ENDP
	  END RANGO