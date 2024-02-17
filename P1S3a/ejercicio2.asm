INCLUDE Irvine32.inc
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
    promptMsg BYTE "Ingrese un numero: ", 0
    displayMsg BYTE "Usted ingreso el numero: ", 0

.CODE
main PROC
    ; Solicitar un número desde consola
    mov edx, OFFSET promptMsg
    call WriteString
    call ReadDec
    mov ebx, eax ; Guardar el número leído en ebx

    ; Mostrar el mensaje con el número ingresado
    mov edx, OFFSET displayMsg
    call WriteString
    mov eax, ebx
    call WriteDec
    call Crlf

    call WaitMsg
main ENDP
END main
