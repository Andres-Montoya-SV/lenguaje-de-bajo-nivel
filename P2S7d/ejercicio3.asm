TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   CHAIN BYTE "LEER ASSEMBLER , ME CAUSA PLACER", 0
 
.CODE
OMITIR PROC
   MOV ESI,OFFSET CHAIN
   MOV ECX, LENGTHOF CHAIN
 
   ; LAZO DE OMISIÓN
   REPETIR:
      MOV AL,[ESI]
      .IF ( AL == "A" || AL == "E" || AL == "I" || AL == "O" || AL == "U" )
      .ELSE
         CALL WRITECHAR
      .ENDIF
      INC ESI
   LOOP REPETIR
   CALL CRLF
 
   EXIT
OMITIR ENDP
END OMITIR