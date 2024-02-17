INCLUDE Irvine32.inc

;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv

.DATA
    ; Variables declaradas por el programador en la sección de datos
    numero1 DWORD ?
    numero2 DWORD ?
    numero3 DWORD ?

    prompt1 BYTE "Ingrese el primer numero hexadecimal: ", 0
    prompt2 BYTE "Ingrese el segundo numero hexadecimal: ", 0
    prompt3 BYTE "Ingrese el tercer numero hexadecimal: ", 0

.CODE
main PROC
    ; Pedir al usuario que ingrese el primer número hexadecimal
    mov edx, OFFSET prompt1
    call WriteString
    call ReadHex
    mov numero1, eax  ; Mover el número hexadecimal ingresado a la variable numero1

    ; Pedir al usuario que ingrese el segundo número hexadecimal
    mov edx, OFFSET prompt2
    call WriteString
    call ReadHex
    mov numero2, eax  ; Mover el número hexadecimal ingresado a la variable numero2

    ; Pedir al usuario que ingrese el tercer número hexadecimal
    mov edx, OFFSET prompt3
    call WriteString
    call ReadHex
    mov numero3, eax  ; Mover el número hexadecimal ingresado a la variable numero3

    ; Imprimir los números hexadecimales ingresados
    mov edx, OFFSET prompt1
    call WriteString
    mov eax, numero1
    call WriteHex
    call Crlf

    mov edx, OFFSET prompt2
    call WriteString
    mov eax, numero2
    call WriteHex
    call Crlf

    mov edx, OFFSET prompt3
    call WriteString
    mov eax, numero3
    call WriteHex
    call Crlf

    call WaitMsg
main ENDP
END main
