TITLE LAZO

INCLUDE IRVINE32.INC
;@Author : Ricardo Andres Rivera Montoya
;@Country: El Salvador, Centro America
;@eMail  : 2931322018@mail.utec.edu.sv
.DATA
    VB BYTE 0
    VW WORD 0
    VDW DWORD 0
    PB BYTE "ENTRE UN VALOR PARA vb: ",0
    PW BYTE "ENTRE UN VALOR PARA vw: ",0
    PDW BYTE "ENTRE UN VALOR PARA vdw: ",0
    RES BYTE "LA SUMA ES: ",0
    INVALIDO BYTE " ***** VALOR MAYOR DE 255, NO SE SUMARA *****",0 ; Una vez tenemos completa la sección de datos hay que pasar a la codificación de lo requerido, que es pedir tres veces estos tres valores , lo que resultará en NUEVE mensajes en consola, pero solo una vez se codificará y el lazo repetirá esta petición.

.CODE

LAZO PROC

MOV EAX,0 ; limpio los registros a usar

MOV ECX,3 ; esto es para indicar que el lazo se repetirá TRES veces.

MOV EBX,0 ; INICIALIZO EBX A CERO porque lo usare como acumulador



 DENUEVO: ; etiqueta de instrucción de LOO



.IF ( ECX == 0 ) ; este if lo usaremos para terminar las tres veces que pediremos los datos



   JMP FUERA ; si ECX es cero nos salimos a una etiqueta para mostrar el resultado de la suma



.ENDIF



CALL CRLF ; salto de línea



MOV EDX,OFFSET PB

CALL WRITESTRING ; mostrar un mensaje 

CALL READDEC ; leer un número desde consola y meterlo en EAX

; como vamos a mover el dato a una variable de 8 bits, la máxima capacidad es de 255

; en realidad es 256, pero como el 0 se toma en cuenta, vamos de 0 a 255.



.IF (EAX <= 255)

MOV VB,AL ; mueve la parte baja de AX hacia VB

.ELSE

; muestra mensaje de que no es válido el número y no lo registra, NO LO VA A SUMAR

CALL CRLF

MOV EDX,OFFSET INVALIDO

CALL WRITESTRING

CALL CRLF

.ENDIF

CALL CRLF

;

MOV EDX, OFFSET PW

CALL WRITESTRING ; mensaje para leer el valor de VW

CALL READDEC

MOV VW,AX ; mueve la parte de 16 bits hacia la variable VW

CALL CRLF

;

MOV EDX,OFFSET PDW

CALL WRITESTRING ; mensaje para pedir VDW

CALL READDEC

MOV VDW,EAX

CALL CRLF

; ahora vamos a sumar las tres variables en el registro EBX



ADD BL,VB ; sumar la variable VB a BL, recordemos que EBX esta con un valor de cero

           ; por lo tanto BL,BX y EBX todos tiene el mismo valor que BL

ADD BX,VW ; sumo a BX el valor de VW, es decir sumo en BX = VB + VW

ADD EBX,VDW ; aquí sumo a EBX = VB+ VW + VDW



CALL DUMPREGS ; en cada iteración muestro el contenido de los registros y me fijo en EBX

                ; para ver el valor de la suma

DEC ECX ; decremento en uno el valor de ECX, para llevarlo a cero y salirme



JMP DENUEVO ; regreso a pedir otros tres números de diferente tamaño



FUERA:  ; saldo la inserción de tres lecturas de tres números de diferente tamaño

CALL CRLF ; salto de línea



MOV EDX, OFFSET RES ; muestro mensaje para ver la suma de las variables

CALL WRITESTRING



MOV EAX,EBX ; para poder mostrar el contenido de EBX / la sumatoria ) tengo que pasar el EBX a EAX

CALL WRITEDEC ; muestra la suma que estaba en EBX, pero que se le pasó a EAX

EXIT



LAZO ENDP

 END LAZO