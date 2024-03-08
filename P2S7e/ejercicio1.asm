TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   STR1 BYTE "CADENA QUE IMPRIMIREMOS AL REVES"
   ; Vamos a obtener la longitud de la cadena STR1
   L=($-STR1)
   ; Usaremos el operador LENGTHOF que nos da la longitud de la cadena en BYTES
   ; esto es equivalente a que hubiera definido STR2 BYTE longitud de STR1 DUP(20H)
   STR2 BYTE LENGTHOF STR1 DUP(20H)
 
.CODE
MAIN PROC
   ; Aqui me posiciono al final del STR1, es decir en la letra S
   MOV ESI,OFFSET STR1 + LENGTHOF STR1
   ; Dirección de destino
   MOV EDI,OFFSET STR2
   ; Muevo a ECX la cantidad de veces que se va a repetir el lazo
   ; Observe que es una posición menos para NO incluir el cero
   MOV ECX, DWORD PTR (L-1)
   ; laxo a ejecutarse
   DENUEVO: MOV AL,[ESI]
      MOV [EDI],AL
      ; Incremento en UNO la dirección de destino para ubicarse en la siguiente posición
      INC EDI
      ; Decrementa en uno la dirección de ESI para copiar la siguiente en orden inverso
       DEC ESI
   LOOP DENUEVO
 
   ; Despliega la cadena en consola en el orden especificado
   MOV EDX,OFFSET STR2
   CALL WRITESTRING
 
   ; Salto de línea
   CALL CRLF
   EXIT
MAIN ENDP
END MAIN
