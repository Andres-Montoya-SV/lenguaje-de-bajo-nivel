TITLE EjercicioDeIF
INCLUDE IRVINE32.INC
 
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv

.DATA

.CODE
READ(EAX)
IF ( EAX > 100 AND EAX <= 900 ) OR ( EAX > 10 AND EAX <= 25 ) {
   PRINT " DENTRO DEL IF "
}