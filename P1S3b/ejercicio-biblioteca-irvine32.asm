TITLE FORO1
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE IRVINE32.INC

.DATA

.CODE
    SUMA PROC
    MOV EBX,0 ; limpio EBX porque lo usaré como acumulador
    
    CALL READDEC ; leo un número y lo guardo en EAX
    ADD EBX,EAX ; le sumo a EBX el contenido de EAX
    
    CALL CRLF ; salto línea
    
    ; Leo y acumulo segundo número
    CALL READDEC
    ADD EBX,EAX
    
    CALL CRLF
    ; leo tercer número
    CALL READDEC
    ADD EBX,EAX
    
    CALL CRLF
    
    ; TENGO en EBX acumulado el valor de los tres números leídos
    ; para mostrar esa suma debo de usar WRITEDEC, que usa EAX como parámetro y mostrar
    ; el valor que se le pase, por tanto debo de pasar el contenido de EBX hacia EAX para
    ; mostrarlo.
    
    MOV EAX,EBX
    
    ; Ahora debo de mostrar el valor de EAX por medio de WRITEDEC
    CALL WRITEDEC

EXIT
SUMA ENDP

END SUMA