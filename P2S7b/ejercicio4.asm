TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   CADENA BYTE "Cadena a trabajar",0
   L=($-CADENA)
   CONTADOR DWORD 0
 
.CODE
INTER PROC
   MOV EDX, OFFSET CADENA
   CALL WRITESTRING
   CALL CRLF
   ULTIMO = L- 1
   MOV ESI,OFFSET CADENA
   MOV ECX,L
 
   LAZO: MOV AL,[ESI]
      .IF (CONTADOR == 0 || CONTADOR == ULTIMO )
         MOV [ESI], BYTE PTR "?"
      .ELSE
         MOV [ESI], BYTE PTR"-"
      .ENDIF
      INC CONTADOR
      INC ESI
   LOOP LAZO
 
   MOV EDX,OFFSET CADENA
   CALL WRITESTRING
   CALL CRLF
   EXIT
INTER ENDP
END