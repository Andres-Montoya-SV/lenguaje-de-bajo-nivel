TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   ARREGLO WORD 20,15,45,46,5,34,5,98,37,15
 
.CODE
SUMARP PROC
   ; Obtener la dirección de l arreglo en ESI
   MOV ESI,OFFSET ARREGLO
 
   ; Limpiar el registro EAX porque se va a usar como acumulador y al mismo tiempo
   ; aprovechar que es el registro que usa el procedimiento WRITEDEC para desplegar
   ; en consola su valor, es decir el valor que contiene
   MOV EAX,0
 
   ; Sumar a EAX el contenido de la dirección que contiene ESI, que es 20
   ADD AX,[ESI]
 
   ; El último elemento del arreglo se encuentra a NUEVE posiciones adelante
   ; y cada posición tiene DOS BYTES, lo que hace 18 bytes mas adelante
   ; por eso le sumamos 18 a ESI
   ADD ESI,18
 
   ; sumar a EAX la décima posición
   ADD AX, [ESI]
 
   ; Desplegar en consola la suma del primero con el décimo
   CALL WRITEDEC
   ; saltar una línea
   CALL CRLF
   ; Volver al sistema operativo
   EXIT
SUMARP ENDP
END SUMARP