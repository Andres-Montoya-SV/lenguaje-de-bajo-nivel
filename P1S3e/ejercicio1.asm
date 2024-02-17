TITLE SUMAR CUATRO NUMEROS
INCLUDE IRVINE32.INC
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
   M BYTE "Digite un número: ",0
.CODE
SUMX4 PROC
   MOV EBX,0 ; poner a cero EBX para usarlo como acumulador
   MOV EDX,OFFSET M
   CALL WRITESTRING ; desplegar mensaje M
   CALL READDEC ; Leer un número en EAX
   ADD EBX,EAX ; Sumar o acumular el número en EBX
 
   CALL CRLF ; saltar línea
   CALL WRITESTRING
   CALL READDEC
   ADD EBX,EAX ; cumular el segundo número
 
   CALL CRLF ; saltar línea
   CALL WRITESTRING
   CALL READDEC
   ADD EBX, EAX ; Acumular el tercer número
 
   CALL CRLF ; saltar línea
   CALL WRITESTRING
   CALL READDEC
   ADD EBX,EAX ; Acumular el cuarto número
 
   CALL CRLF ; saltar línea
   MOV EAX,EBX
   CALL WRITEDEC
 
   CALL CRLF ; saltar línea
   EXIT
SUMX4 ENDP
   END SUMX4
