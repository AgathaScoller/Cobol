       IDENTIFICATION DIVISION.
       PROGRAM-ID. Maioridade.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 IDADE        PIC 99.
       01 MENSAGEM     PIC A(30).

       PROCEDURE DIVISION.
           DISPLAY "Digite sua idade: "
           ACCEPT IDADE

           IF IDADE >= 18
               MOVE "Você é maior de idade." TO MENSAGEM
           ELSE
               MOVE "Você é menor de idade." TO MENSAGEM
           END-IF

           DISPLAY MENSAGEM

           STOP RUN.
