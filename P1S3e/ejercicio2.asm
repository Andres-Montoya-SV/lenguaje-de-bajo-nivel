TITLE SUMA HEX
INCLUDE IRVINE32.INC
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
   MHEX BYTE "Digite un n",163,"mero en formato HEX ";0
 
.CODE
SHEX PROC
   MOV ECX,0
   MOV EDX,OFFSET MHEX
   CALL WRITESTRING
   CALL READHEX
   ADD ECX,EAX
   CALL CRLF
 
   CALL WRITESTRING
   CALL READHEX
   ADD ECX,EAX
   CALL CRLF
 
   MOV EAX,ECX
   CALL WRITEDEC
   CALL CRLF
   EXIT
SHEX ENDP
   END SHEX
