       IDENTIFICATION DIVISION.
       PROGRAM-ID. STATISTICS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  INDEX               PIC 9.
       01  DATA-ARR.
           05  VALUE1          PIC 9V999.
           05  VALUE2          PIC 9V999.
           05  VALUE3          PIC 9V999.
       01  MEAN                PIC 9V999 VALUE 0.
       01  VARIANCE            PIC 9V999 VALUE 0.
       01  RANGE               PIC 9V999 VALUE 0.
       01  TEMP-MAX            PIC 9V999.
       01  TEMP-MIN            PIC 9V999.
       01  TEMP-SUM            PIC 9V999 VALUE 0.
       01  TEMP-DIFF           PIC 9V999.
       01  TEMP-DIFF-SQ       PIC 9V999.
       01  TEMP-VAR-SUM        PIC 9V999 VALUE 0.

       PROCEDURE DIVISION.
       MAIN-SECTION.

           PERFORM READ-DATA
           PERFORM FIND-RANGE
           PERFORM FIND-MEAN
           PERFORM FIND-VARIANCE

           DISPLAY "Range: " RANGE
           DISPLAY "Mean: " MEAN
           DISPLAY "Variance: " VARIANCE

           STOP RUN.

       READ-DATA.
           DISPLAY "Enter value 1:"
           ACCEPT VALUE1
           DISPLAY "Enter value 2:"
           ACCEPT VALUE2
           DISPLAY "Enter value 3:"
           ACCEPT VALUE3.

       FIND-RANGE.
           MOVE VALUE1 TO TEMP-MAX
           MOVE VALUE1 TO TEMP-MIN

           IF VALUE2 > TEMP-MAX
               MOVE VALUE2 TO TEMP-MAX
           END-IF
           IF VALUE3 > TEMP-MAX
               MOVE VALUE3 TO TEMP-MAX
           END-IF

           IF VALUE2 < TEMP-MIN
               MOVE VALUE2 TO TEMP-MIN
           END-IF
           IF VALUE3 < TEMP-MIN
               MOVE VALUE3 TO TEMP-MIN
           END-IF

           COMPUTE RANGE = TEMP-MAX - TEMP-MIN.

       FIND-MEAN.
           COMPUTE TEMP-SUM

