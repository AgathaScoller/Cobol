       IDENTIFICATION DIVISION.
       PROGRAM-ID. DistanciaOndaSismica.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TIPO-ONDA      PIC X(5).
       01 VELOCIDADE     PIC 9(5)V99.
       01 TEMPO          PIC 9(5)V99.
       01 GRAU           PIC 9(3)V99.
       01 RADIANO        PIC 9(5)V99.
       01 D-TOTAL        PIC 9(7)V99.
       01 D-HORIZONTAL   PIC 9(7)V99.
       01 PI              PIC 9(1)V999999 VALUE 3.141593.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "=== Calculadora de Distância de Onda Sísmica ==="

           DISPLAY "Digite o tipo de onda (P, S, etc): "
           ACCEPT TIPO-ONDA

           DISPLAY "Velocidade de onda (m/s): "
           ACCEPT VELOCIDADE

           DISPLAY "Tempo (s): "
           ACCEPT TEMPO

           DISPLAY "Ângulo de incidência em graus (0 para vertical): "
           ACCEPT GRAU

           * Converter graus em radianos
           COMPUTE RADIANO = GRAU * (PI / 180)

           * Distância total
           COMPUTE D-TOTAL = VELOCIDADE * TEMPO

           * Distância horizontal
           COMPUTE D-HORIZONTAL = D-TOTAL * FUNCTION SIN(RADIANO)

           DISPLAY ""
           DISPLAY "=== Resultado ==="
           DISPLAY "Tipo de onda: " TIPO-ONDA
           DISPLAY "Distância total percorrida: " D-TOTAL " m"
           DISPLAY "Distância horizontal: " D-HORIZONTAL " m (ângulo " GRAU "°)"

           STOP RUN.
