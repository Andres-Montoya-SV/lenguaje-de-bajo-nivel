TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   A BYTE "LENGUAJE DE MAQUINA",0
   MSJJ BYTE "AL REVES ES ",0
 
.CODE
MAIN PROC
   MOV ECX,LENGTHOF A
   MOV ESI,OFFSET A + (LENGTHOF A - 1)
 
   OTRO: MOV AL,[ESI]
      CALL WRITECHAR
      DEC ESI
   LOOP OTRO
   EXIT
MAIN ENDP
END MAIN