100: LD SP, #4000
108: LD R3, #10
116: ST y, R3
124: LD R4, #2
132: ST x, R4
140: LD R1, R3
148: LD R2, R4
156: SUB R1, R1, R2
164: BGEZ R1, 188
172: LD R1, 0
180: BR 196
188: LD R1, 1
196: ST w, R1
204: LD R1, R3
212: LD R2, R4
220: SUB R1, R1, R2
228: BEQZ R1, 252
236: LD R1, 0
244: BR 260
252: LD R1, 1
260: ST a, R1
268: LD R1, R3
276: LD R2, R4
284: SUB R1, R1, R2
292: BLEQZ R1, 316
300: LD R1, 0
308: BR 324
316: LD R1, 1
324: ST b, R1
332: LD R1, R3
340: LD R2, R4
348: SUB R1, R1, R2
356: BEQZ R1, 380
364: LD R1, 1
372: BR 388
380: LD R1, 0
388: ST c, R1
396: LD R1, R3
404: LD R2, R4
412: SUB R1, R1, R2
420: BGZ R1, 444
428: LD R1, 0
436: BR 452
444: LD R1, 1
452: ST d, R1
460: LD R1, R3
468: LD R2, R4
476: SUB R1, R1, R2
484: BLTZ R1, 508
492: LD R1, 0
500: BR 516
508: LD R1, 1
516: ST e, R1
