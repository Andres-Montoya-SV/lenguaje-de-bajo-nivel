INCLUDE Irvine32.inc

.DATA
    _AA  BYTE   1
    _BB  WORD   5
    _CC  DWORD  125
    _AAA BYTE   25
    _BBB WORD   568
    _CCC DWORD  23541

    suma DWORD ?

.CODE
main PROC
    ; Sumar todas las variables
    movzx eax, _AA         ; Extender a 32 bits (cero extendido) el byte AA y moverlo a eax
    movzx ebx, _BB         ; Extender a 32 bits (cero extendido) la palabra BB y moverlo a ebx
    add eax, ebx          ; Sumar AA y BB y almacenar el resultado en eax
    add eax, _CC          ; Sumar el resultado anterior con CC y almacenar el resultado en eax
    movzx ebx, _AAA       ; Extender a 32 bits (cero extendido) el byte AAA y moverlo a ebx
    movzx ecx, _BBB       ; Extender a 32 bits (cero extendido) la palabra BBB y moverlo a ecx
    add eax, ebx          ; Sumar el resultado anterior con AAA y almacenar el resultado en eax
    add eax, ecx          ; Sumar el resultado anterior con BBB y almacenar el resultado en eax
    add eax, _CCC         ; Sumar el resultado anterior con CCC y almacenar el resultado en eax
    mov suma, eax         ; Guardar la suma total en la variable suma

    ; Imprimir el resultado
    mov edx, OFFSET suma
    call WriteDec
    call Crlf

    call WaitMsg          ; Esperar antes de salir del programa
main ENDP
END main
