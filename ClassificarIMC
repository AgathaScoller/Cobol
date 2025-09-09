       IDENTIFICATION DIVISION.
       PROGRAM-ID. ClassificarIMC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PESO       PIC 9(3)V99.
       01 ALTURA     PIC 9(1)V99.
       01 IMC        PIC 9(2)V99.
       01 MENSAGEM   PIC X(15).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite seu peso (kg): "
           ACCEPT PESO

           DISPLAY "Digite sua altura (m): "
           ACCEPT ALTURA

           COMPUTE IMC = PESO / (ALTURA * ALTURA)

           IF IMC < 18.5
               MOVE "Abaixo do peso" TO MENSAGEM
           ELSE
               IF IMC < 25
                   MOVE "Peso normal" TO MENSAGEM
               ELSE
                   IF IMC < 30
                       MOVE "Sobrepeso" TO MENSAGEM
                   ELSE
                       MOVE "Obesidade" TO MENSAGEM
                   END-IF
               END-IF
           END-IF

           DISPLAY MENSAGEM

           STOP RUN.
