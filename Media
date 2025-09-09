       IDENTIFICATION DIVISION.
       PROGRAM-ID. MediaVariavel.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 QTD       PIC 9(2).
       01 I         PIC 9(2).
       01 NOTAS.
           05 NOTA OCCURS 100 TIMES PIC 9(3)V9(2).
       01 SOMA      PIC 9(5)V9(2) VALUE 0.
       01 MEDIA     PIC 9(5)V9(2).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Qtd notas: "
           ACCEPT QTD

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > QTD
               DISPLAY "Nota: "
               ACCEPT NOTA(I)
           END-PERFORM

           MOVE 0 TO SOMA
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > QTD
               ADD NOTA(I) TO SOMA
           END-PERFORM

           COMPUTE MEDIA = SOMA / QTD

           DISPLAY "Média: " MEDIA

           STOP RUN.
