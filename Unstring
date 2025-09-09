       IDENTIFICATION DIVISION.
       PROGRAM-ID. ContarPalavras.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FRASE        PIC X(100).
       01 PALAVRA      PIC X(20).
       01 CONTADOR     PIC 9(3) VALUE 0.
       01 POS          PIC 9(3).
       01 RESTO        PIC X(100).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite uma frase: "
           ACCEPT FRASE

           MOVE FRASE TO RESTO
           MOVE 0 TO CONTADOR

           PERFORM UNTIL RESTO = SPACES
               UNSTRING RESTO
                   DELIMITED BY SPACE
                   INTO PALAVRA
                   WITH POINTER POS
               END-UNSTRING

               IF PALAVRA NOT = SPACES
                   ADD 1 TO CONTADOR
               END-IF
           END-PERFORM

           DISPLAY "Número de palavras: " CONTADOR

           STOP RUN.
