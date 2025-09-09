       IDENTIFICATION DIVISION.
       PROGRAM-ID. VerificarSenhaSimples.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SENHA-CORRETA PIC X(20) VALUE "senhacerta".
       01 SENHA         PIC X(20).
       01 MENSAGEM      PIC X(20).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite a senha: "
           ACCEPT SENHA

           IF SENHA = SENHA-CORRETA
               MOVE "Acesso permitido." TO MENSAGEM
           ELSE
               MOVE "Acesso negado." TO MENSAGEM
           END-IF

           DISPLAY MENSAGEM

           STOP RUN.
