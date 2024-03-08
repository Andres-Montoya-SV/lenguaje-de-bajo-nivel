TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   CAD1 BYTE "PROGRAMA ",0
   CAD2 BYTE "EXCELENTE",0
   CAD3 BYTE ?
   ;El objetivo del programa es poner por medio de programación en la cadena CAD3
   ; lo siguiente: CAD3 = "PROGRAMA EXCELENTE". Vamos a la sección de código
 
.CODE
UNIR PROC
   ; Mover el contenido de CAD1 a CAD3, para ello usamos los registros ESI y EDI como fuente y
   ; destino
   MOV ESI, OFFSET CAD1
   MOV EDI, OFFSET CAD3
 
   ; Movemos a ECX la cantidad de bytes a mover, en este caso la longitud de la cadena CAD1
   MOV ECX, LENGTHOF CAD1
 
   OTRA:
      ; Copia a AL una letra de la cadena CAD1
      MOV AL,[ESI]
      ; Copio al contenido de la dirección contenida en EDI la letra que está en AL
      MOV [EDI],AL
      ; Nos movemos a la siguiente letra y a siguiente destino
      INC ESI
      INC EDI
      ; LOOP nos regresa a repetir la operación
   LOOP OTRA
   CALL CRLF
 
COMMENT *
   Ahora ya copiamos a la cadena CAD3 "PROGRAMA"
   El siguiente paso es copiar CAD2 al FINAL de CAD3
   Este código es idéntico al anterior solo que el origen es CAD2 y el destino
   tiene un desplazamiento igual a la longitud de "PROGRAMA" mas uno para el espaciado
*
 
   MOV ESI,OFFSET CAD2
   ; Desplazamiento hasta el final de lo copiado en CAD3
   MOV EDI, OFFSET CAD3 + 9
   ; Cantidad de bytes a copiar desde CAD2 a CAD3
   MOV ECX, LENGTHOF CAD2
 
   ; Lazo de copia de CAD2 a CAD3
   OTRA2:
      MOV AL, [ESI]
      MOV [EDI], AL
      INC ESI
      INC EDI
   LOOP OTRA2
   CALL CRLF
 
   ; Procedimiento para desplegar la CAD3
   MOV EDX,OFFSET CAD3
   CALL WRITESTRING
   CALL CRLF
   EXIT
UNIR ENDP
END UNIR