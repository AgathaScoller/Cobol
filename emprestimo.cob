       IDENTIFICATION DIVISION.
       PROGRAM-ID. AvaliarEmprestimo.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 RENDA        PIC 9(6)V99.
       01 RESTRICAO    PIC X(3).
       01 MENSAGEM     PIC X(30).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite sua renda mensal: "
           ACCEPT RENDA

           DISPLAY "Você possui restrição no nome? (sim ou não): "
           ACCEPT RESTRICAO

           IF RENDA > 5000 AND FUNCTION LOWER-CASE(RESTRICAO) = "nao"
               MOVE "Empréstimo aprovado." TO MENSAGEM
           ELSE
               MOVE "Empréstimo não aprovado." TO MENSAGEM
           END-IF

           DISPLAY MENSAGEM

           STOP RUN.
