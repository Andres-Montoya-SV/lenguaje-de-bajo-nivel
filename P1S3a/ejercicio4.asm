INCLUDE Irvine32.inc
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
    mensajeNormal BYTE "Contenido de los registros antes de mover los valores:", 0
    mensajeEnBinario BYTE "Contenido de los registros en binario:", 0

.CODE
main PROC
    ; Mostrar mensaje antes de mover valores a los registros
    mov edx, OFFSET mensajeNormal
    call WriteString
    call DumpRegs

    ; Mover valores a los registros
    mov eax, 12345678h
    mov ebx, 87654321h
    mov ecx, 13579h
    mov edx, 2468h

    ; Mostrar mensaje antes de mostrar el contenido de los registros en binario
    mov edx, OFFSET mensajeEnBinario
    call WriteString

    ; Mostrar contenido de los registros en binario
    call WriteBin

    call WaitMsg
main ENDP
END main
