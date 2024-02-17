TITLE usoJMP
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc

.DATA
MSG BYTE "DIGITE UN NUMERO: ",0
MSG2 BYTE "EL NUMERO ESTA ENTRE 1 Y 10",0
MSG3 BYTE "EL NUMERO ESTA ENTRE 11 Y 100",0
MSG4 BYTE "NUMERO FUERA DE RANGO DIGITE OTRO NUMERO",0

.CODE
MR PROC

EVALUAR:
    MOV EDX, OFFSET MSG
    CALL WriteString
    CALL READDEC

    .IF EAX <= 10
        MOV EDX, OFFSET MSG2
        CALL WriteString
        JMP FIN

    .ELSEIF EAX > 10 && EAX <= 100
        MOV EDX, OFFSET MSG3
        CALL WriteString
        JMP FIN

    .ENDIF
    MOV EDX, OFFSET MSG4
    CALL WriteString
    CALL CRLF
    JMP EVALUAR

FIN
EXIT
MR ENDP
END MR