TITLE EjercicioDeIFCondicionSimple
INCLUDE IRVINE32.INC
 
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv

.DATA

.CODE
READ(EAX)
READ(EBX)
READ(ECX)
IF ( EAX <= 3) {   
     IF ( EBX <= 3 ) {
         IF ( ECX <= 3 ) {
             PRINT "RCX"
         }
     } 
}