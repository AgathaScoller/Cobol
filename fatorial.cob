       IDENTIFICATION DIVISION.
       PROGRAM-ID. Fatorial.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 N        PIC 9(5).
       01 RESULTADO PIC 9(20) VALUE 1.
       01 I        PIC 9(5).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite um número: "
           ACCEPT N

           MOVE 1 TO RESULTADO

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
               MULTIPLY RESULTADO BY I GIVING RESULTADO
           END-PERFORM

           DISPLAY N "!= " RESULTADO

           STOP RUN.
