INCLUDE Irvine32.inc
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
    prompt1 BYTE "Ingrese el primer numero: ", 0
    prompt2 BYTE "Ingrese el segundo numero: ", 0
    resultMsg BYTE "El resultado de la concatenacion es: ", 0
    buffer BYTE 20 DUP (?) ; Buffer para almacenar la concatenación

.CODE
main PROC
    ; Solicitar un número desde consola
    mov edx, OFFSET prompt1
    call WriteString
    call ReadDec
    mov ebx, eax ; Guardar el número leído en ebx

    ; Solicitar un número desde consola
    mov edx, OFFSET prompt2
    call WriteString
    call ReadDec
    mov ecx, eax ; Guardar el número leído en ecx

    ; Convertir el primer número a cadena
    call WriteDec
    mov edx, OFFSET buffer
    call WriteString

    ; Convertir el segundo número a cadena
    call WriteDec
    mov edx, OFFSET buffer
    call WriteString

    ; Concatenar las cadenas
    mov edx, OFFSET resultMsg
    call WriteString
    mov edx, OFFSET buffer
    call WriteString

    call Crlf

    call WaitMsg
main ENDP
END main
