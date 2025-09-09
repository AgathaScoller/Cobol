       IDENTIFICATION DIVISION.
       PROGRAM-ID. MaiorEMenor.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMS.
           05 NUM OCCURS 5 TIMES PIC 9(5)V99.
       01 I        PIC 9(1).
       01 MAIOR    PIC 9(5)V99.
       01 MENOR    PIC 9(5)V99.

       PROCEDURE DIVISION.
       INICIO.
           * Entrada dos números
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY "Número: "
               ACCEPT NUM(I)
           END-PERFORM

           * Inicializa maior e menor
           MOVE NUM(1) TO MAIOR
           MOVE NUM(1) TO MENOR

           * Calcula maior e menor
           PERFORM VARYING I FROM 2 BY 1 UNTIL I > 5
               IF NUM(I) > MAIOR
                   MOVE NUM(I) TO MAIOR
               END-IF
               IF NUM(I) < MENOR
                   MOVE NUM(I) TO MENOR
               END-IF
           END-PERFORM

           * Exibe resultados
           DISPLAY "Maior: " MAIOR
           DISPLAY "Menor: " MENOR

           STOP RUN.
