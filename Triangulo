       IDENTIFICATION DIVISION.
       PROGRAM-ID. ClassificarTriangulo.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A        PIC 9(3)V99.
       01 B        PIC 9(3)V99.
       01 C        PIC 9(3)V99.
       01 MENSAGEM PIC X(50).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite o lado 1: "
           ACCEPT A

           DISPLAY "Digite o lado 2: "
           ACCEPT B

           DISPLAY "Digite o lado 3: "
           ACCEPT C

           * Verifica se pode formar triângulo
           IF (A + B > C) AND (A + C > B) AND (B + C > A)
               * Verifica tipo
               IF A = B AND B = C
                   MOVE "Os lados formam um triângulo Equilátero." TO MENSAGEM
               ELSE
                   IF A = B OR A = C OR B = C
                       MOVE "Os lados formam um triângulo Isósceles." TO MENSAGEM
                   ELSE
                       MOVE "Os lados formam um triângulo Escaleno." TO MENSAGEM
                   END-IF
               END-IF
           ELSE
               MOVE "Os lados nao podem formar um triângulo." TO MENSAGEM
           END-IF

           DISPLAY MENSAGEM

           STOP RUN.
