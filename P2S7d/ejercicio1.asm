TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   SUMA BYTE "La sumatoria a de los n",163,"meros es: ",0
   PREGUNTAR BYTE "Deme un n",163,"mero entero: ",0
.CODE
REPASO PROC
   MOV EDX,OFFSET PREGUNTAR
   CALL WRITESTRING
   CALL READDEC
   MOV ECX,EAX
   MOV EAX,0
 
   AGAIN: 
      ADD EAX,ECX; aqui se suma 5+4+3+2+1+0
   LOOP AGAI
   CALL CRLF
 
   MOV EDX,OFFSET SUMA
   CALL WRITESTRING
   CALL WRITEDEC
   CALL CRLF
   EXIT
REPASO ENDP
END REPASO