TITLE usoWhile
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE IRVINE32.INC
.DATA
MENSAJE BYTE "Este mensaje se ha repetido: ",0

.CODE
MR PROC

MOV EDX, OFFSET MENSAJE
MOV EAX,1

.WHILE (EAX <= 10)
    CALL WriteString
    CALL WriteDec
    ADD EAX,1
    CALL Crlf
.ENDW

EXIT
MR ENDP
END MR
