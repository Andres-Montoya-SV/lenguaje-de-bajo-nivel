TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   A BYTE 12
   B WORD 25
   C DWORD 45
 
.CODE
XAMPLE PROC
   MOV AH,B
   MOV AL,A
   MOV AX,B
   EXIT
XAMPLE ENDP
END XAMPLE
