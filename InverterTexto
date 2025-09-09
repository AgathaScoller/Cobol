       IDENTIFICATION DIVISION.
       PROGRAM-ID. InverterTexto.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MENSAGEM      PIC X(100).
       01 TEXTO-FINAL   PIC X(100) VALUE SPACES.
       01 LEN           PIC 9(3).
       01 I             PIC 9(3).
       01 CARACTERE     PIC X.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite um texto: "
           ACCEPT MENSAGEM

           MOVE FUNCTION LENGTH(MENSAGEM) TO LEN
           MOVE SPACES TO TEXTO-FINAL

           PERFORM VARYING I FROM LEN BY -1 UNTIL I < 1
               MOVE MENSAGEM(I:1) TO CARACTERE
               STRING CARACTERE DELIMITED BY SIZE
                      TEXTO-FINAL DELIMITED BY SIZE
                      INTO TEXTO-FINAL
               END-STRING
           END-PERFORM

           DISPLAY TEXTO-FINAL

           STOP RUN.
