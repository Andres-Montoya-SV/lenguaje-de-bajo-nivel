TITLE SUMAR
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
INCLUDE Irvine32.inc
.DATA
   ARREGLOD DWORD 12,45,78,35,5,7,65
 
.CODE
IMPAR PROC
   ; Vamos a usar un registro de propósito general como contenedor de la dirección
   ; en lugar de ESI
   MOV EBX,OFFSET ARREGLOD
   ; Inicializamos los registros a cero
   MOV EAX,0
   MOV EDX,0
   ; Voy a inicializar a 4 el contador porque hay 7 elementos y 7/2 es 3 + 1 igual 4
   MOV ECX,4
 
   ; Inicio del lazo , usamos EDX como puente para recibir los valores
   ZZZ: MOV EDX,[EBX]
      ; EAX será el acumulador
      ADD EAX,EDX
      ADD EBX,8
   LOOP ZZZ
   CALL CRLF
   CALL WRITEDEC
   EXIT
IMPAR ENDP
END MAIN