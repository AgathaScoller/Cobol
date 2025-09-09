       IDENTIFICATION DIVISION.
       PROGRAM-ID. SaudarContatos.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 LISTA-CONTATOS.
           05 CONTATO OCCURS 4 TIMES PIC X(10) VALUE
              "Ana" "Bruno" "Carlos" "Dani".

       01 I          PIC 9(1).

       PROCEDURE DIVISION.
       INICIO.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 4
               DISPLAY "Bom dia, " CONTATO(I)
           END-PERFORM

           STOP RUN.
