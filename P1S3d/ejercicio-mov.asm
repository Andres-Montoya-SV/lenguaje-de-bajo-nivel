TITLE MOVER
INCLUDE IRVINE32.INC
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
   VARB BYTE 12
   VARW WORD 235
   VARD DWORD 12547
.CODE
MOVER PROC
   MOV EAX,0
   MOV AH,VARB
   CALL DUMPREGS
   CALL WAITMSG; HACER UNA PAUSA ESPERANDO LA TECLA ENTER
   EXIT
MOVER ENDP
   END MOVER