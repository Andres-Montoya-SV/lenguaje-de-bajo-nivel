INCLUDE Irvine32.inc
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
    M1 BYTE "Efecto del cero",0
    M2 BYTE "en el procedimiento",0
    M3 BYTE "writestring de la biblioteca",0

.CODE
main PROC
    mov edx, OFFSET M1
    call WriteString
    call Crlf

    mov edx, OFFSET M2  
    add edx, LENGTHOF M2 - 1  
    mov BYTE PTR [esi], 0  

    mov edx, OFFSET M3  
    add edx, LENGTHOF M3 - 1  
    mov BYTE PTR [esi], 0  

    mov edx, OFFSET M1
    call WriteString
    call Crlf

    call WaitMsg
main ENDP
END main
