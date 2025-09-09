       IDENTIFICATION DIVISION.
       PROGRAM-ID. CalculadoraIMC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PESO           PIC 9(3)V99.
       01 ALTURA         PIC 9(1)V99.
       01 IMC            PIC 9(2)V99.
       01 IMC-OK         PIC X(3).

       PROCEDURE DIVISION.
           DISPLAY "Digite seu peso (kg): "
           ACCEPT PESO

           DISPLAY "Digite sua altura (m): "
           ACCEPT ALTURA

           COMPUTE IMC = PESO / (ALTURA * ALTURA)

           DISPLAY "Calculadora de IMC"
           DISPLAY "Peso: " PESO
           DISPLAY "Altura: " ALTURA
           DISPLAY "IMC: " IMC

           IF IMC >= 18.5 AND IMC <= 24.9
               MOVE "Sim" TO IMC-OK
           ELSE
               MOVE "Não" TO IMC-OK
           END-IF

           DISPLAY "Seu IMC está adequado? " IMC-OK

           STOP RUN.
