       IDENTIFICATION DIVISION.
       PROGRAM-ID. VerificarDia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DIA          PIC X(10).
       01 MENSAGEM     PIC X(20).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite o dia da semana (em letras minúsculas): "
           ACCEPT DIA

           IF DIA = "sábado" OR DIA = "domingo"
               MOVE "Dia de descanso!" TO MENSAGEM
           ELSE
               MOVE "Dia de trabalho." TO MENSAGEM
           END-IF

           DISPLAY MENSAGEM

           STOP RUN.
