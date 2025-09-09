       IDENTIFICATION DIVISION.
       PROGRAM-ID. VerificarSenha.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SENHA-ENTRADA PIC X(10).
       01 SENHA-CORRETA PIC X(10) VALUE "1234".

       PROCEDURE DIVISION.
       INICIO.
           PERFORM UNTIL SENHA-ENTRADA = SENHA-CORRETA
               DISPLAY "Senha: "
               ACCEPT SENHA-ENTRADA

               IF SENHA-ENTRADA = SENHA-CORRETA
                   DISPLAY "Acesso!"
               ELSE
                   DISPLAY "Errada!"
               END-IF
           END-PERFORM

           STOP RUN.
