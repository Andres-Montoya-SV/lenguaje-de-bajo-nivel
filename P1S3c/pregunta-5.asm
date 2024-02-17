Title Nombre del Programa
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
Include Irvine32.Inc

.Data
; Poner aqui las variables a utilizar

.Code
Main Proc
     Call ClrScr       ; Limpia la Pantalla

     ; poner codigo del programa

     Call CrLf         ; Hace un Salto de linea
     Call WaitMsg      ; Espera a que presionen <ENTER>
     Exit              ; Termina el programa
Main EndP

;Aqui pueden ir mas procedimientos

     End Main
