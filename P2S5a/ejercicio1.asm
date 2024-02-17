TITLE INICIAR

;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv

INCLUDE IRVINE32.INC
.DATA
   V1 BYTE 60
   V2 WORD 2564
   V3 DWORD 45687
   V4 WORD 2564
   V5 BYTE 122
   MAY DWORD 0
.CODE
MAYOR PROC
   MOV EAX,0
   MOV AL,V1
   .IF ( EAX > MAY )
      MOV MAY, EAX
   .ENDIF
 
   MOV AX,V2
   .IF ( EAX > MAY )
      MOV MAY,EAX
   .ENDIF
   MOV EAX,V3
   .IF ( EAX > MAY )
      MOV MAY, EAX
   .ENDIF
 
   MOV AX,V4
   .IF ( EAX > MAY )
      MOV MAY,EAX
   .ENDIF
 
   MOV AL,V5
   .IF ( EAX > MAY )
      MOV MAY,EAX
   .ENDIF
   MOV EAX,MAY
   CALL WRITEDEC
   EXIT
MAYOR ENDP
   END MAYOR