       IDENTIFICATION DIVISION.
       PROGRAM-ID. VerificarPalindromo.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MENSAGEM        PIC X(50).
       01 PALAVRA         PIC X(50).
       01 TEXTO-FINAL     PIC X(50) VALUE SPACES.
       01 LEN-MENSAGEM    PIC 9(2).
       01 I               PIC 9(2).
       01 CARACTERE       PIC X.
       01 SAIDA           PIC X(50).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite uma palavra: "
           ACCEPT MENSAGEM

           * Remove espaços e converte para minúsculas
           MOVE FUNCTION LOWER-CASE(FUNCTION REPLACE(MENSAGEM," ","")) TO PALAVRA

           MOVE SPACES TO TEXTO-FINAL
           MOVE FUNCTION LENGTH(PALAVRA) TO LEN-MENSAGEM

           * Inverte a palavra
           PERFORM VARYING I FROM LEN-MENSAGEM BY -1 UNTIL I < 1
               MOVE PALAVRA(I:1) TO CARACTERE
               STRING CARACTERE DELIMITED BY SIZE
                      TEXTO-FINAL DELIMITED BY SIZE
                      INTO TEXTO-FINAL
               END-STRING
           END-PERFORM

           * Verifica se é palíndromo
           IF FUNCTION LOWER-CASE(MENSAGEM) = TEXTO-FINAL
               DISPLAY "Essa palavra é um palíndromo"
           ELSE
               DISPLAY "Essa palavra nao é um palíndromo"
           END-IF

           STOP RUN.
