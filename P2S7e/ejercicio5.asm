TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   MSJ1 BYTE "Longitud de la cadena calculada: ",0
   MSJ2 BYTE "Longitud de la cadena por medio de LENGTHOF ",0
   CHAINX BYTE "LONGITUD DE UNA CADENA SIN USAR LOS METODOS TRADICIONALES",0
 
.CODE
MAIN PROC
   MOV ECX,0
   MOV ESI,OFFSET CHAINX ; se posiciona al inicio de la cadena en la letra "L"
 
   A: MOV AL, BYTE PTR [ESI] ; pone en AL un carácter de la cadena
   .IF ( AL == 0 )
       MOV EAX,ECX ; mueve a EAX la cantidad de bytes de la cadena, sin el cero
      JMP FIN ; se sale para imprimir
   .ENDIF
 
   INC ECX ; incrementa la cantidad de caracteres en uno
   INC ESI ; se desplaza a el próximo carácter
   JMP A ; vuelve a probar otro carácter
 
   FIN: CALL CRLF
 
   MOV EDX,OFFSET MSJ1
   CALL WRITESTRING
   CALL WRITEDEC ; cantidad de bytes que contiene la cadena
 
   CALL CRLF ; salta de línea
   MOV EDX,OFFSET MSJ2
   CALL WRITESTRING
   MOV EAX,LENGTHOF CHAINX ; usamos un operador del lenguaje para obtener la longitud
   CALL WRITEDEC ; cantidad de bytes que devuelve lengthof, la cual incluye al cero
   CALL CRLF
   EXIT
MAIN ENDP
END MAIN
