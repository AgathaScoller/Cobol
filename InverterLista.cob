       IDENTIFICATION DIVISION.
       PROGRAM-ID. InverterLista.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PALAVRAS.
           05 PALAVRA OCCURS 5 TIMES PIC X(10) VALUE
              "python" "java" "c" "js" "go".
       01 I        PIC 9(1).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Invertida:"

           PERFORM VARYING I FROM 5 BY -1 UNTIL I < 1
               DISPLAY PALAVRA(I)
           END-PERFORM

           STOP RUN.
