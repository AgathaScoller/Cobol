       IDENTIFICATION DIVISION.
       PROGRAM-ID. CalculadoraSimples.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 OP          PIC 9.
       01 NUM1        PIC 9(5)V99.
       01 NUM2        PIC 9(5)V99.
       01 RESULTADO   PIC 9(5)V99.

       PROCEDURE DIVISION.
       INICIO.
           PERFORM UNTIL OP = 0
               DISPLAY ""
               DISPLAY "1-Somar 2-Subtrair 0-Sair: "
               ACCEPT OP

               EVALUATE OP
                   WHEN 1
                       DISPLAY "Digite o primeiro número: "
                       ACCEPT NUM1
                       DISPLAY "Digite o segundo número: "
                       ACCEPT NUM2
                       COMPUTE RESULTADO = NUM1 + NUM2
                       DISPLAY "Soma: " RESULTADO
                   WHEN 2
                       DISPLAY "Digite o primeiro número: "
                       ACCEPT NUM1
                       DISPLAY "Digite o segundo número: "
                       ACCEPT NUM2
                       COMPUTE RESULTADO = NUM1 - NUM2
                       DISPLAY "Subtração: " RESULTADO
                   WHEN 0
                       DISPLAY "Encerrando programa..."
                   WHEN OTHER
                       DISPLAY "Opção inválida"
               END-EVALUATE
           END-PERFORM

           STOP RUN.
