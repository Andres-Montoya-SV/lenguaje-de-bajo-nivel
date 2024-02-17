TITLE SumarRestar
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv

INCLUDE IRVINE32.inc

.DATA
    PEDIR BYTE "Ingrese un numero: ",0
    MSG1 BYTE "* El Resultado de la suma: ",0
    MSG2 BYTE "* El Resultado de la resta: ",0
    M1 BYTE "-----------------------------------",0
    M2 BYTE "***********************************",0
    M3 BYTE "*",0
    M4 BYTE " *",0
    VAL1 DWORD 0
    VAL2 DWORD 0
.CODE
MR PROC
    CALL CRLF
    MOV EDX,OFFSET PEDIR
    CALL WriteString
    CALL READDEC
    MOV VAL1,EAX

    CALL WriteString
    CALL READDEC
    MOV VAL2,EAX

    MOV EAX,VAL1
    ADD EBX,VAL2
    CALL CRLF

    MOV EBX,VAL1
    SUB EBX,VAL2
    CALL CRLF

    MOV EDX, OFFSET M2
    CALL WriteString
    CALL WriteInt
    MOV EDX, OFFSET MSG1
    CALL WriteString
    CALL WriteInt
    MOV EDX, OFFSET M4
    CALL WriteString
    CALL CRLF

    MOV EDX, OFFSET MSG2
    CALL WriteString
    MOV EAX,EBX
    CALL WriteInt
    CALL CRLF

    MOV EDX, OFFSET M4
    CALL WriteString
    CALL CRLF

    MOV EDX, OFFSET M2
    CALL WriteString
    CALL CRLF

    CALL CRLF

    CALL WAITMSG

EXIT

MR ENDP
END MR