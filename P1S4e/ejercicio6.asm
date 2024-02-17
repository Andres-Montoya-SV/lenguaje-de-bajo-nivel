INCLUDE Irvine32.inc

;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv

.DATA
    contador DWORD 0       ; Contador para llevar la cuenta de los números pares generados
    numero DWORD 0         ; Variable para almacenar el número par generado

.CODE
main PROC
    mov ecx, 5            ; Iterar cinco veces para generar los cinco primeros números pares

generar_numeros:
    ; Incrementar el contador
    inc contador

    ; Calcular el siguiente número par (cada número par es igual a su posición multiplicada por 2)
    mov eax, contador
    shl eax, 1             ; Multiplicar por 2 (equivale a desplazar bits a la izquierda)
    mov numero, eax        ; Guardar el número par generado en la variable 'numero'

    ; Imprimir el número par generado
    mov edx, OFFSET numero
    call WriteDec          ; Escribir el número en la consola
    call Crlf              ; Cambiar de línea

    loop generar_numeros   ; Repetir hasta que se generen los cinco números pares

    call WaitMsg           ; Esperar antes de salir del programa
main ENDP
END main
