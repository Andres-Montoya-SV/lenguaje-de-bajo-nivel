TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   CHAIN1 BYTE "LONGITUD DE UNA CADENA POR MEDIO DE LENGTHOH ",0
   MSJ BYTE "La longitud de la cadena es: ",0
 
.CODE
LONCAD PROC
   MOV EAX,LENGTHOF CHAIN1
   MOV EDX,OFFSET MSJ
   CALL WRITESTRING
   CALL WRITEDEC
   CALL CRLF
   EXIT
LONCAD ENDP
MAIN PROC
   CALL LONCAD
   CALL WAITMSG
   EXIT
MAIN ENDP
END MAIN
