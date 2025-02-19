10 PRINT "Enter the number of rows: "
20 INPUT rows
30 FOR i = 1 TO rows
40   FOR j = 1 TO rows - i
50     PRINT " ";
60   NEXT j
70   FOR k = 1 TO i
80     PRINT "* ";
90   NEXT k
100  PRINT
110 NEXT i