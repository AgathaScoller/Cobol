       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA-CIENTIFICA.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HISTORICO ASSIGN TO "historico-operacoes.txt"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD HISTORICO.
       01 HISTORICO-REGISTRO.
           05 HIST-TIPO-OPERACAO    PIC X(30).
           05 HIST-ENTRADA1         PIC -9(5)V99.
           05 HIST-ENTRADA2         PIC -9(5)V99.
           05 HIST-RESULTADO        PIC -9(7)V99.

       WORKING-STORAGE SECTION.
       01 OPCOES                    PIC 9.
       01 ENTRADA1                  PIC S9(5)V99.
       01 ENTRADA2                  PIC S9(5)V99.
       01 RESULTADO                 PIC S9(7)V99.
       01 TIPO-OPERACAO             PIC X(30).
       01 FIM                       PIC X VALUE 'N'.

       PROCEDURE DIVISION.
       INICIO.
           OPEN EXTEND HISTORICO
           PERFORM UNTIL FIM = 'S'
               DISPLAY "\n--- CALCULADORA CIENTÍFICA COBOL ---"
               DISPLAY "1. Soma"
               DISPLAY "2. Subtração"
               DISPLAY "3. Multiplicação"
               DISPLAY "4. Divisão"
               DISPLAY "5. Raiz Quadrada"
               DISPLAY "6. Potência"
               DISPLAY "7. Logaritmo Natural"
               DISPLAY "8. Seno"
               DISPLAY "9. Cosseno"
               DISPLAY "0. Sair"
               ACCEPT OPCOES
               EVALUATE OPCOES
                   WHEN 1
                       MOVE "Soma" TO TIPO-OPERACAO
                       PERFORM DUAS-ENTRADAS
                       COMPUTE RESULTADO = ENTRADA1 + ENTRADA2
                       PERFORM REGISTRAR
                   WHEN 2
                       MOVE "Subtração" TO TIPO-OPERACAO
                       PERFORM DUAS-ENTRADAS
                       COMPUTE RESULTADO = ENTRADA1 - ENTRADA2
                       PERFORM REGISTRAR
                   WHEN 3
                       MOVE "Multiplicação" TO TIPO-OPERACAO
                       PERFORM DUAS-ENTRADAS
                       COMPUTE RESULTADO = ENTRADA1 * ENTRADA2
                       PERFORM REGISTRAR
                   WHEN 4
                       MOVE "Divisão" TO TIPO-OPERACAO
                       PERFORM DUAS-ENTRADAS
                       IF ENTRADA2 = 0
                           DISPLAY "Erro: Divisão por zero."
                       ELSE
                           COMPUTE RESULTADO = ENTRADA1 / ENTRADA2
                           PERFORM REGISTRAR
                       END-IF
                   WHEN 5
                       MOVE "Raiz Quadrada" TO TIPO-OPERACAO
                       DISPLAY "Digite o número: "
                       ACCEPT ENTRADA1
                       IF ENTRADA1 < 0
                           DISPLAY "Erro: Número negativo."
                       ELSE
                           COMPUTE RESULTADO = FUNCTION SQRT(ENTRADA1)
                           MOVE 0 TO ENTRADA2
                           PERFORM REGISTRAR
                       END-IF
                   WHEN 6
                       MOVE "Potência" TO TIPO-OPERACAO
                       PERFORM DUAS-ENTRADAS
                       COMPUTE RESULTADO = FUNCTION EXP(FUNCTION LOG(ENTRADA1) * ENTRADA2)
                       PERFORM REGISTRAR
                   WHEN 7
                       MOVE "Logaritmo Natural" TO TIPO-OPERACAO
                       DISPLAY "Digite o número: "
                       ACCEPT ENTRADA1
                       IF ENTRADA1 <= 0
                           DISPLAY "Erro: Valor <= 0."
                       ELSE
                           COMPUTE RESULTADO = FUNCTION LOG(ENTRADA1)
                           MOVE 0 TO ENTRADA2
                           PERFORM REGISTRAR
                       END-IF
                   WHEN 8
                       MOVE "Seno" TO TIPO-OPERACAO
                       DISPLAY "Digite o ângulo (radianos): "
                       ACCEPT ENTRADA1
                       COMPUTE RESULTADO = FUNCTION SIN(ENTRADA1)
                       MOVE 0 TO ENTRADA2
                       PERFORM REGISTRAR
                   WHEN 9
                       MOVE "Cosseno" TO TIPO-OPERACAO
                       DISPLAY "Digite o ângulo (radianos): "
                       ACCEPT ENTRADA1
                       COMPUTE RESULTADO = FUNCTION COS(ENTRADA1)
                       MOVE 0 TO ENTRADA2
                       PERFORM REGISTRAR
                   WHEN 0
                       MOVE 'S' TO FIM
                   WHEN OTHER
                       DISPLAY "Opção inválida."
               END-EVALUATE
           END-PERFORM
           CLOSE HISTORICO
           DISPLAY "Calculadora encerrada."
           STOP RUN.

       DUAS-ENTRADAS.
           DISPLAY "Digite o primeiro número: "
           ACCEPT ENTRADA1
           DISPLAY "Digite o segundo número: "
           ACCEPT ENTRADA2.

       REGISTRAR.
           DISPLAY "Resultado: " RESULTADO
           MOVE TIPO-OPERACAO TO HIST-TIPO-OPERACAO
           MOVE ENTRADA1 TO HIST-ENTRADA1
           MOVE ENTRADA2 TO HIST-ENTRADA2
           MOVE RESULTADO TO HIST-RESULTADO
           WRITE HISTORICO-REGISTRO.
