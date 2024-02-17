INCLUDE Irvine32.inc

;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv

.DATA
    nombre      BYTE    50 DUP (?) ; Buffer para almacenar el nombre
    direccion   BYTE    50 DUP (?) ; Buffer para almacenar la dirección
    telefono    BYTE    15 DUP (?) ; Buffer para almacenar el teléfono
    promptNombre    BYTE    "Ingrese su nombre: ", 0
    promptDireccion BYTE    "Ingrese su dirección: ", 0
    promptTelefono  BYTE    "Ingrese su teléfono: ", 0

.CODE
main PROC
    ; Solicitar y leer el nombre del usuario
    mov edx, OFFSET promptNombre
    call WriteString
    mov edx, OFFSET nombre
    mov ecx, SIZEOF nombre
    call ReadString

    ; Solicitar y leer la dirección del usuario
    mov edx, OFFSET promptDireccion
    call WriteString
    mov edx, OFFSET direccion
    mov ecx, SIZEOF direccion
    call ReadString

    ; Solicitar y leer el teléfono del usuario
    mov edx, OFFSET promptTelefono
    call WriteString
    mov edx, OFFSET telefono
    mov ecx, SIZEOF telefono
    call ReadString

    ; Mostrar los datos ingresados por el usuario
    mov edx, OFFSET nombre
    call WriteString
    call Crlf

    mov edx, OFFSET direccion
    call WriteString
    call Crlf

    mov edx, OFFSET telefono
    call WriteString
    call Crlf

    call WaitMsg
main ENDP
END main
