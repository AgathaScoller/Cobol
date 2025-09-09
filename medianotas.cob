       IDENTIFICATION DIVISION.
       PROGRAM-ID. MediaNotas.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NOTA1    PIC 9(2)V9(2).
       01 NOTA2    PIC 9(2)V9(2).
       01 NOTA3    PIC 9(2)V9(2).
       01 MEDIA    PIC 9(3)V9(2).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Qual a primeira nota? "
           ACCEPT NOTA1

           DISPLAY "Qual a segunda nota? "
           ACCEPT NOTA2

           DISPLAY "Qual a terceira nota? "
           ACCEPT NOTA3

           COMPUTE MEDIA = (NOTA1 + NOTA2 + NOTA3) / 3

           DISPLAY "Sua média é " MEDIA

           STOP RUN.
