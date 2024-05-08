TITLE EjerciciodeWHILE
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE IRVINE32.INC
 
.DATA

.CODE
EAX = 3
WHILE ( EAX < 10 ) {
   FOR ( ECX = 1 ; ECX < 4 ; ECX++ ) {
       PRINT "IN LAZO FOR "
   }
 EAX ++ ;
 PRINT "WHILE "
}

