TITLE JUMPS SEGUIDOS
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE IRVINE32.INC
 
.DATA
   MENSAJE BYTE "ENTRE UN NUMERO",0
   MAY BYTE "MAYOR QUE 1000",0
   MEN BYTE "MENOR QUE 1000",0
   IGU BYTE "IGUAL QUE 1000",0
 
.CODE
MAIN PROC
; muestro un mensaje que pide un número por consola
   MOV EDX,OFFSET MENSAJE
   CALL WRITESTRING
   CALL CRLF
 
; LLamo al procedimiento READDEC para que lea desde consola un número y lo guarda en EAX
   CALL READDEC
   CMP EAX,1000 ; hace la comparación
   JA MAYOR ; salta hacia la etiqueta de instruccion MAYOR si el valor de EAX es maypr que 1000
   JB MENOR ; salta hacia la etiqueta de instrucción MENOr si el contenido del registro EAX es menor que 1000.
   JE IGUAL ; saltar a la etiqueta de instrucción IGUAl si el valor de EAx es igual que 1000.
 
   MENOR: MOV EDX,OFFSET MEN
   CALL WRITESTRING ; muestra en consola el mensaje de que es menor el número introducido
   JMP FUERA , termina el programa y hace un salto INCONDICIONAL hacia la etiqueta de instrucción FUERA.
 
   MAYOR: MOV EDX,OFFSET MAY
   CALL WRITESTRING
   JMP FUERA
 
   IGUAL: MOV EDX,OFFSET IGU
   CALL WRITESTRING
 
   FUERA:
   EXIT ; regresa al sistema operativo
MAIN ENDP
     END MAIN
