TITLE VARIOS

INCLUDE IRVINE32.INC
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
    .DATA

ARRB BYTE 1,8.9,7,6

LB=($-ARRB)

ARRW WORD 11,12,13,14,15

LW=($-ARRW)

.CODE

MOV EAX,LB

CALL WRITEDEC

CALL CRLF

MOV EAX,LW

CALL WRITEDEC

CALL CRLF

MOV EAX,LD

CALL WRITEDEC

CALL CRLF



