INCLUDE Irvine32.inc
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
    NOMBRE BYTE "Ricardo Andres Rivera Montoya", 0
    CARNET BYTE "2931322018", 0
    CARRERA BYTE "Ingenieria En Sistemas", 0

.CODE
main PROC
    ; Mostrar el nombre
    mov edx, OFFSET NOMBRE
    call WriteString
    call Crlf

    ; Mostrar el carnet
    mov edx, OFFSET CARNET
    call WriteString
    call Crlf

    ; Mostrar la carrera
    mov edx, OFFSET CARRERA
    call WriteString
    call Crlf

    call WaitMsg
main ENDP
END main
