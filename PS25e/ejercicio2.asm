TITLE CAMBIOCADENA
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc

.DATA
ARR DWORD 30, 45, 450, 25
SUMA DWORD 0
MSG1 BYTE "La suma es: ", 0

.CODE
MR PROC

MOV ECX, LENGTHOF ARR
MOV EAX, 0
MOV ESI, OFFSET ARR

SUMAR:
    MOV EAX, [ESI]
    ADD SUMA, EAX
    ADD ESI, 4
LOOP SUMAR

MOV EDX, OFFSET MSG1
CALL WriteString
MOV EAX, SUMA
CALL WriteDec

EXIT
MR ENDP
END MR