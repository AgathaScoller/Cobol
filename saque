       IDENTIFICATION DIVISION.
       PROGRAM-ID. VerificarSaque.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 VALOR       PIC 9(4).
       01 MENSAGEM    PIC X(30).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite o valor do saque: "
           ACCEPT VALOR

           IF VALOR MOD 10 = 0 AND VALOR >= 10 AND VALOR <= 600
               STRING "Saque de R$ " DELIMITED BY SIZE
                      VALOR DELIMITED BY SIZE
                      " liberado." DELIMITED BY SIZE
                      INTO MENSAGEM
               END-STRING
           ELSE
               MOVE "Valor de saque inválido." TO MENSAGEM
           END-IF

           DISPLAY MENSAGEM

           STOP RUN.
