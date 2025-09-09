       IDENTIFICATION DIVISION.
       PROGRAM-ID. AvaliarAluno.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NOTA      PIC 9(2)V9(2).
       01 MENSAGEM  PIC X(15).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Nota do aluno (0 a 10): "
           ACCEPT NOTA

           IF NOTA >= 7
               MOVE "Aprovado" TO MENSAGEM
           ELSE
               IF NOTA >= 5
                   MOVE "Recuperação" TO MENSAGEM
               ELSE
                   MOVE "Reprovado" TO MENSAGEM
               END-IF
           END-IF

           DISPLAY MENSAGEM

           STOP RUN.
