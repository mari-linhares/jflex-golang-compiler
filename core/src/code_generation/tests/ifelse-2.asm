100: LD SP, #4000

function alwaysBe1
1000: LD R0, #1
1008: BR *0(SP)

function plusPlus
1316: LD R1, #0
1324: ST c, R1
1332: LD R2, #0
1340: ST b, R2
1348: LD R3, #0
1356: ST a, R3
1364: SUB R4, R3, R2
1372: BLEZ R4, #1444
1380: ADD R5, #2, #3
1388: ADD R6, R3, R5
1396: ST a, R6
1404: ADD R7, R2, #5
1412: ST b, R7
1420: LD R0, #1.0
1428: BR *0(SP)
1436: BR #1460
1444: LD R0, #0.0
1452: BR *0(SP)
1460: SUB R8, R6, R7
1468: BLEZ R8, #1492
1476: LD R8, #true
1484: BR #1500
1492: LD R8, #false
1500: ST x, R8
1508: ADD SP, SP, #alwaysBe1size
1516: ST *SP, #1532
1524: BR #1000
1532: SUB SP, SP, #alwaysBe1size
1540: SUB R9, #1, R0
1548: BGEZ R9, #1612
1556: LD R10, #10
1564: ST a, R10
1572: MUL R11, R10, #3
1580: ST b, R11
1588: LD R0, #1.0
1596: BR *0(SP)
1604: BR #1628
1612: LD R0, #0.0
1620: BR *0(SP)

function main