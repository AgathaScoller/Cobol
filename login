       IDENTIFICATION DIVISION.
       PROGRAM-ID. VerificarLogin.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USUARIO     PIC X(20).
       01 SENHA       PIC X(20).
       01 MENSAGEM    PIC X(30).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite o usuário: "
           ACCEPT USUARIO

           DISPLAY "Digite a senha: "
           ACCEPT SENHA

           IF (USUARIO = "admin" OR USUARIO = "usuario") 
              AND SENHA = "senhacerta"
               MOVE "Login sucedido." TO MENSAGEM
           ELSE
               MOVE "Falha no login." TO MENSAGEM
           END-IF

           DISPLAY MENSAGEM

           STOP RUN.
