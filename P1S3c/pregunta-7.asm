INCLUDE Irvine32.inc
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
    prompt BYTE "Ingrese un numero: ", 0
    sumMsg BYTE "La suma de los numeros es: ", 0

.CODE
main PROC
    mov ecx, 4  ; contador para leer cuatro números
    mov esi, 0  ; inicializar la suma en cero

input_loop:
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt  ; Lee un número entero desde la entrada estándar
    add esi, eax  ; Suma el número leído al total
    loop input_loop  ; Decrementa el contador y repite si no es cero

    ; Muestra la suma de los números
    mov edx, OFFSET sumMsg
    call WriteString
    mov eax, esi  ; Mueve el resultado de la suma a EAX para escribirlo
    call WriteInt
    call Crlf

    call WaitMsg
main ENDP
END main
