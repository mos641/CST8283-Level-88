      ******************************************************************
      * Author: Mostapha A
      * Purpose: Accept a gas value from the keyboard and display the correct rating value
      * Compare full conditional statements versus level 88 structures and condition names
      ******************************************************************
	   IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. LAB07-PARTA.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       01 PROGRAM_FIELDS.
           05 MILEAGE_IN PIC 9(2).
               88 E VALUES 0 THROUGH 5.
               88 G VALUES 6 THROUGH 10.
               88 F VALUES 11 THROUGH 15.
               88 P VALUES 16 THROUGH 99.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
           DISPLAY "ENTER A VALUE (0-99): "
           ACCEPT MILEAGE_IN.

           DISPLAY " ".

           DISPLAY "REGULAR CONDITIONAL:".
           IF MILEAGE_IN > 0 AND <= 5
               DISPLAY "E"
           ELSE IF MILEAGE_IN > 5 AND <= 10
               DISPLAY "G"
           ELSE IF MILEAGE_IN > 10 AND <= 15
               DISPLAY "F"
           ELSE IF MILEAGE_IN > 15
               DISPLAY "P".

           DISPLAY " ".

           DISPLAY "LEVEL 88 CONDITION NAMES:".
           IF E
               DISPLAY "E"
           ELSE IF G
               DISPLAY "G"
           ELSE IF F
               DISPLAY "F"
           ELSE IF P
               DISPLAY "P".
           STOP RUN.
       END PROGRAM LAB07-PARTA.
