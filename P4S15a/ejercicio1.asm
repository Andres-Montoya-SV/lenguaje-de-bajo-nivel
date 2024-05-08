.Data
   Msg1 Byte "Loop Interno",0
   Msg2 Byte "Loop Externo",0
 
.Code
Main Proc
     Mov EAX, 1

LoopExterno:
     CMP  EAX, 3
     JA   Salir
     Mov  EDX, OffSet Msg2
     Call WriteString
     Call CrLf 
     Inc  EAX
 
     Mov  EBX, 1
     CMP  EBX, 2
     JA   LoopExterno
     Mov  EDX, OffSet Msg1
     Call WriteString
     Call CrLf 
     Inc  EBX
     JMP LoopInterno 
 
Salir:

Exit
Main EndP
     End Main
