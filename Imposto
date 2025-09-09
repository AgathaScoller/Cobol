       IDENTIFICATION DIVISION.
       PROGRAM-ID. CalcularImposto.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SALARIO    PIC 9(5)V99.
       01 IMPOSTO    PIC 9(6)V99.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite seu salário: "
           ACCEPT SALARIO

           IF SALARIO <= 2000
               MOVE 0 TO IMPOSTO
           ELSE
               IF SALARIO <= 3000
                   COMPUTE IMPOSTO = SALARIO * 0.10
               ELSE
                   IF SALARIO <= 5000
                       COMPUTE IMPOSTO = SALARIO * 0.15
                   ELSE
                       COMPUTE IMPOSTO = SALARIO * 0.20
                   END-IF
               END-IF
           END-IF

           DISPLAY "Imposto a pagar: R$ " IMPOSTO

           STOP RUN.
