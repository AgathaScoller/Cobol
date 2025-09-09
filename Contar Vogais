       IDENTIFICATION DIVISION.
       PROGRAM-ID. ContarVogais.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FRASE         PIC X(100).
       01 CONTADOR      PIC 9(3) VALUE 0.
       01 I             PIC 9(3).
       01 CARACTERE     PIC X.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite uma frase: "
           ACCEPT FRASE

           MOVE 0 TO CONTADOR

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > FUNCTION LENGTH(FRASE)
               MOVE FRASE(I:1) TO CARACTERE
               IF FUNCTION LOWER-CASE(CARACTERE) = "a"
                   OR FUNCTION LOWER-CASE(CARACTERE) = "e"
                   OR FUNCTION LOWER-CASE(CARACTERE) = "i"
                   OR FUNCTION LOWER-CASE(CARACTERE) = "o"
                   OR FUNCTION LOWER-CASE(CARACTERE) = "u"
                   ADD 1 TO CONTADOR
               END-IF
           END-PERFORM

           DISPLAY "Vogais: " CONTADOR

           STOP RUN.
