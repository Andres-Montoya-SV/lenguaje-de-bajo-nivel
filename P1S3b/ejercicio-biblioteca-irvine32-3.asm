TITLE FORO1
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE IRVINE32.INC

.DATA

.CODE
    LEER PROC
    CALL READDEC ; lee y guarda en EAX
    MOV EBX, EAX ; mueve a EBX el valor de EAX
    CALL CRLF ; salta línea
    
    CALL READDEC ; lee y guarda en EAX
    MOV ECX,EAX ; mueve lo leído a ECX
    CALL CRLF
    
    CALL READDEC ; lee y lo guarda en EAX
    MOV EDX, EAX ; mueve el valor de EAX a EDX

EXIT

LEER ENDP

END LEER