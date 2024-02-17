TITLE Rombo
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE IRVINE32.INC

.DATA
    M1 BYTE "                         *",0
    M2 BYTE "                        ***",0
    M3 BYTE "                       *****",0
    M4 BYTE "                      *******",0
    M5 BYTE "                     *********",0
    M6 BYTE "                    ***********",0
    M7 BYTE "                   *************",0
    M8 BYTE "                    ***********",0
    M9 BYTE "                     *********",0
    M10 BYTE "                      *******",0
    M11 BYTE "                       *****",0
    M12 BYTE "                        ***",0
    M13 BYTE "                         *",0

.CODE

MR PROC
    CALL CRLF
    MOV EDX,OFFSET M1
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M2
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M3
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M4
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M5
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M6
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M7
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M8
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M9
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M10
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M11
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M12
    CALL WriteString
    CALL CRLF

    MOV EDX,OFFSET M13
    CALL WriteString
    CALL CRLF

    CALL waitmsg

EXIT

MR ENDP

END MR