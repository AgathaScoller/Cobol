       IDENTIFICATION DIVISION.
       PROGRAM-ID. Tabuada.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 X       PIC 9(5).
       01 I       PIC 9(2).
       01 RESULT  PIC 9(10).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Número: "
           ACCEPT X

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
               COMPUTE RESULT = X * I
               DISPLAY X " * " I " = " RESULT
           END-PERFORM

           STOP RUN.
