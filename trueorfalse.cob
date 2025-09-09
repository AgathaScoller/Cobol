       IDENTIFICATION DIVISION.
       PROGRAM-ID. IdadeENota.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 IDADE-ANA     PIC 99 VALUE 23.
       01 NOTA          PIC 9(2)V9(2).
       01 MENSAGEM      PIC X(10).

       PROCEDURE DIVISION.
       INICIO.
           * Verifica idade
           IF IDADE-ANA > 25
               DISPLAY "True"
           ELSE
               DISPLAY "False"
           END-IF

           * Solicita nota do usuário
           DISPLAY "Qual é sua nota? "
           ACCEPT NOTA

           * Verifica aprovação
           IF NOTA >= 5
               MOVE "aprovado" TO MENSAGEM
           ELSE
               MOVE "reprovado" TO MENSAGEM
           END-IF

           DISPLAY MENSAGEM

           STOP RUN.
