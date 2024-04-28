TITLE MINUSCULA A MAYUSCULA Y VICEVERSA
INCLUDE IRVINE32.INC
 
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv

.DATA
   TITULO DB "CONVERSION DE LETRAS",0
   MENSAJE BYTE "Entre un texto para su conversion.."
           BYTE "Presione Aceptar para continuar"
   buffer byte 70 dup(0)
   CuentaBytes DWORD ?
   PEDIR BYTE "Entre su cadena: ",0
 
.CODE
MAIN PROC
   mov ebx, offset titulo
   mov edx,offset mensaje
   call MsgBox
 
   MOV EDX,OFFSET PEDIR
   CALL WRITESTRING
 
   MOV EDX,OFFSET BUFFER
   MOV ECX,SIZEOF BUFFER
   CALL READSTRING
 
   MOV ESI,OFFSET buffer
   MOVER:
      CMP BYTE PTR [ESI],61H
      JB OTRO
      CMP BYTE PTR [ESI],7AH
      JA OTRO
      AND BYTE PTR [ESI],11011111B
      ; MOV AL,BYTE PTR[ESI]
      ; CALL WRITECHAR
   OTRO:
   INC ESI
   LOOP MOVER
 
   CALL CRLF
   mov eax,yellow+(blue*16)
   call SetTextColor
   MOV EDX,OFFSET buffer
   CALL WRITESTRING
   mov eax,white + black
   call SetTextColor
   call CrLf
   EXIT
MAIN ENDP
     END MAIN
 
