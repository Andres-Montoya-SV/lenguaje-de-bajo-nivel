TITLE Vocales_Asteriscos
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE IRVINE32.INC
 
.DATA
   TEXTO BYTE "HOY ES JUEVES 20 DE OCTUBRE DE 2022.",0
   L=($-TEXTO)
 
.CODE
MAIN PROC
   MOV ESI, OFFSET TEXTO 
   MOV EDX, OFFSET TEXTO ;SE IMPRIME TEXTO
   CALL WRITESTRING
   CALL CRLF            ; SALTO DE LÍNEA
 
   MOV AL,0
   CALL CRLF
   MOV ECX,0            ; CONTADOR DE PLAZO
 
   LAZO1: .WHILE (ECX < L)
      MOV AL,[ESI]
      .IF((AL=="A") || (AL=="E") || (AL=="I") || (AL=="O") || (AL == "U"))
         MOV [ESI], BYTE PTR "*" ; CUANDO LA CONDICION SE CUMPLE, SE REALIZA EL CAMBIO POR EL ASTERISCO
      .ENDIF
      INC ESI
      INC ECX
   .ENDW
 
   MOV EDX, OFFSET TEXTO
   CALL WRITESTRING
   EXIT
MAIN ENDP
     END MAIN
