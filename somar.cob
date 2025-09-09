       IDENTIFICATION DIVISION.
       PROGRAM-ID. SomarNumeros.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 N       PIC 9(5).
       01 I       PIC 9(5).
       01 SOMA    PIC 9(10) VALUE 0.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "N: "
           ACCEPT N

           MOVE 0 TO SOMA

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
               ADD I TO SOMA
           END-PERFORM

           DISPLAY "Soma: " SOMA

           STOP RUN.
