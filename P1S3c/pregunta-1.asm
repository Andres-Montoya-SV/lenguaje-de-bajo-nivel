; No lo logré resolver
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
    NB BYTE 12            ; Se reserva un byte de memoria y se inicializa con 12
    NW WORD 2547          ; Se reserva una palabra de memoria y se inicializa con 2547
    ND DWORD 0            ; Se reserva un dword de memoria y se inicializa con 0
    SB BYTE "PRACTICA DE REGISTROS",0  ; Se reserva una cadena de caracteres en memoria

.CODE

MAIN PROC
    MOV EAX, FFAH         ; Se mueve el valor hexadecimal FFAH al registro EAX

    MOV DH, NW            ; Se mueve el contenido de la palabra NW (2547) al registro DH

    MOV ECX, ND           ; Se mueve el contenido del dword ND (0) al registro ECX

    MOV EBX, 0AAH         ; Se mueve el valor hexadecimal AAH al registro EBX

    MOV EDX, ND           ; Se mueve el contenido del dword ND (0) al registro EDX

    MOV EDX, 0000FFFFH    ; Se mueve el valor hexadecimal FFFF al registro EDX

    CALL WRITESTRING      ; Se llama al procedimiento WriteString para mostrar en la consola la cadena de caracteres que se encuentra en SB

    EXIT                  ; Termina el programa

MAIN ENDP

END MAIN
