TITLE CAMBIO LETRAS
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE IRVINE32.INC
 
.DATA
   CADENA1  BYTE "letrasminoscula",0
 
.CODE
MAYU PROC
     MOV EBX,OFFSET CADENA1
     MOV ECX,LENGTHOF CADENA1 
 
  A: MOV AL,[EBX]
     AND AL,11011111B
     MOV [EBX],AL
     INC EBX
     LOOP A 
 
     MOV EDX,OFFSET CADENA1
     CALL WRITESTRING
     EXIT
 MAYU ENDP
      END MAYU 
