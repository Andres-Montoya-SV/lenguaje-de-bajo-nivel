TITLE FORO1
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE IRVINE32.INC

.DATA
    VAR1 DWORD 154
    VAR2 DWORD 6589
    VAR3 DWORD 5789
    
    ; Si quiero mostrar estos valores en consola tengo que hacer lo siguiente en la sección de código:

.CODE
    VARIABLES PROC
    MOV EAX, VAR1
    CALL WRITEDEC
    CALL CRLF
    
    MOV EAX, VAR2
    CALL WRITEDEC
    CALL CRLF
    
    MOV EAX, VAR3
    CALL WRITEDEC
EXIT

VARIABLES ENDP

END VARIABLES