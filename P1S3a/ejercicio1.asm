INCLUDE IRVINE32.INC
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv

.DATA
P1 BYTE "************    ***          ***    *** *******        *** ********         *** ********    *** ********",0
P2 BYTE "***      ***    *** **       ***    ***       **       ***        **        *** ********    ***      ***",0
P3 BYTE "***      ***    ***  **      ***    ***        **      ***         **       ***             ***      ***",0
P4 BYTE "***      ***    ***   **     ***    ***         **     ***        **        ***             ***         ",0
P5 BYTE "************    ***    **    ***    ***         ***    *** ******           *** *****       ***",0
P6 BYTE "***      ***    ***     **   ***    ***         **     ***        **        *** *****       *** ********",0
P7 BYTE "***      ***    ***      **  ***    ***        **      ***         **       ***                      ***",0
P8 BYTE "***      ***    ***       ** ***    ***       **       ***          **      *** ********    ***      ***",0
P9 BYTE "***      ***    ***          ***    *** *******        ***            **    *** ********    *** ********",0

.CODE
main PROC
    mov edx, OFFSET P1
    call WriteString
    call Crlf
    mov edx, OFFSET P2
    call WriteString
    call Crlf
    mov edx, OFFSET P3
    call WriteString
    call Crlf
    mov edx, OFFSET P4
    call WriteString
    call Crlf
    mov edx, OFFSET P5
    call WriteString
    call Crlf
    mov edx, OFFSET P6
    call WriteString
    call Crlf
    mov edx, OFFSET P7
    call WriteString
    call Crlf
    mov edx, OFFSET P8
    call WriteString
    call Crlf
    mov edx, OFFSET P9
    call WriteString
    call Crlf
    call WaitMsg
main ENDP
END main
