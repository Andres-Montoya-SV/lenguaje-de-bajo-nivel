TITLE ProgramaEnEnsamblador
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc

.DATA
    nAsc dd 10
    nMin dd 1

.CODE
MR PROC
    mov ebx, dword [nMin]

PRIMERO:
    cmp ebx, dword [nAsc]
    mov eax, 1
    xor ebx, ebx
    int 0x80

    mov ecx, dword [nMin]
LOOP PRIMERO

SEGUNDO:
    cmp ecx, dword [nAsc]
    mov edx, 1
    mov ecx, byte '\n'
    mov ebx, 1
    mov eax, 4
    int 0x80
    add ebx, 1

    cmp ebx, ecx
    mov al, byte ' '
    mov al, byte '*'
    mov edx, 1
    mov ecx, al
    mov ebx, 1
    mov eax, 4
    int 0x80
    add ecx, 1
    jmp PRIMERO
LOOP SEGUNDO

EXIT
MR ENDP
END MR