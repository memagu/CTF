010 PRINT
020 PRINT "*** THE FLAG VERIFICATOR: LEVEL 3 ***"
030 PRINT "FLAG FORMAT: FLAG{[A-Z0-9_!]*}"
040 LET PREFIX=5
050 LET FL=41
060 LET SHIFT=$80
110 DIM U$(63), FC$(FL), F(FL), IX$(1), A$(3)
120 PRINT "FLAG"; : INPUT U$
130 IF LEN(U$)<>PREFIX+FL+1 THEN GOTO 600
200 FC$=U$(PREFIX+1,PREFIX+FL)
230 FOR I=1 TO FL
240 F(I)=ASC(FC$(I,I))+SHIFT
250 NEXT I
300 LET ID=0
330 FOR I=1 TO FL
340 READ A$
350 IX$=A$(2,2)
360 GOSUB 700
370 LET RES=ID*16
380 IX$=A$(3,3)
390 GOSUB 700
400 RES=RES+ID
410 IF RES<>F(I) THEN GOTO 600
430 NEXT I
500 PRINT "GOOD JOB! NOW SUBMIT THE FLAG." : END
600 RESTORE
610 PRINT "THE PROVIDED FLAG IS INVALID TRY ANONTHER" : GOTO 120
700 REM *** H2D CONVERTER ***
710 ON ASC(IX$)-64 GOTO 730,740,750,760,770,780
720 ID=VAL(IX$) : RETURN
730 ID=10 : RETURN
740 ID=11 : RETURN
750 ID=12 : RETURN
760 ID=13 : RETURN
770 ID=14 : RETURN
780 ID=15 : RETURN
900 DATA $D3,$D4,$C1,$CE,$C4,$C1,$D2,$C4,$DF,$C3
910 DATA $CF,$C4,$C5,$DF,$C6,$CF,$D2,$DF,$C9,$CE
920 DATA $C6,$CF,$D2,$CD,$C1,$D4,$C9,$CF,$CE,$DF
930 DATA $C9,$CE,$D4,$C5,$D2,$C3,$C8,$C1,$CE,$C7
940 DATA $C5
