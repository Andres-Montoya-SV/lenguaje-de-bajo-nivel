TITLE LAZO

INCLUDE IRVINE32.INC
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA

VB BYTE 0

VW WORD 0

VDW DWORD 0

PB BYTE "ENTRE UN VALOR PARA vb: ",0

PW BYTE "ENTRE UN VALOR PARA vw: ",0

PDW BYTE "ENTRE UN VALOR PARA vdw: ",0

RES BYTE "LA SUMA ES: ",0

INVALIDO BYTE " ***** VALOR MAYOR DE 255, NO SE SUMARA *****",0

.CODE

LAZO PROC

MOV EAX,0 ; limpio los registros a usar

MOV EBX,0

MOV ECX,3 ; esto es para indicar que el lazo se repetirá TRES veces.

DENUEVO: ; etiqueta de instrucción de LOOP

CALL CRLF



MOV EDX,OFFSET PB

CALL WRITESTRING ; mostrar un mensaje

CALL READDEC ; leer un número desde consola y meterlo en EAX

.IF (EAX <= 255) ; valida si es un valor válido par a moverlo a una variable de 8 bits

MOV VB,AL ; mueve la parte baja de AX hacia VB

ADD EBX,EAX



.ELSE ; muestra mensaje de error y no suma ese valor 

CALL CRLF

MOV EDX,OFFSET INVALIDO

CALL WRITESTRING

CALL CRLF

.ENDIF

CALL CRLF

;

MOV EDX, OFFSET PW ; mensaje para llenar VW

CALL WRITESTRING

CALL READDEC

MOV VW,AX

ADD EBX,EAX ; suma 

CALL CRLF

;

MOV EDX,OFFSET PDW

CALL WRITESTRING

CALL READDEC

MOV VDW,EAX

ADD EBX,EAX

;

CALL CRLF



LOOP DENUEVO



CALL CRLF

MOV EDX, OFFSET RES

CALL WRITESTRING

MOV EAX,EBX ; mueve lo acumulado en EBX hacia el registro EAX para poder usr

 ; WRITEDEC

CALL WRITEDEC ; muestra la suma de las variable

EXIT

LAZO ENDP

END LAZO

