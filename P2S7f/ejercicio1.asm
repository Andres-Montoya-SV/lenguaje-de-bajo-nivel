TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   A DWORD 12,13,14,15
.CODE
SUMAR PROC
   MOV EAX,0
   MOV EBX,0
   MOV ESI,OFFSET A ; paso 1
   MOV ECX, LENGTHOF A ; paso 2
   OTRO:
      MOV EBX,[ESI] ; paso 3
      ADD EAX,EBX ; paso 4
      ADD ESI,TYPE A ; paso 5
   LOOP OTRO ; paso 6
   CALL WRITEDEC
   EXIT
SUMAR ENDP
END SUMAR
