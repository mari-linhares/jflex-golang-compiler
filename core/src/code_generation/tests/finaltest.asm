100: LD SP, #4000
108: LD R1, #10
116: ST a, R1
124: LD R2, #2
132: ST b, R2

function block
1000: SUB R3, R1, R2
1008: BLEZ R3, #1104
1016: AND R4, #true, #false
1024: LD R0, R4
1032: BR *0(SP)
1040: SUB R5, #1, #2
1048: BLTZ R5, #1080
1056: LD R0, #false
1064: BR *0(SP)
1072: BR #1096
1080: LD R0, #false
1088: BR *0(SP)
1096: BR #1168
1104: SUB R6, R2, #3
1112: BLEZ R6, #1128
1120: BR #1168
1128: SUB R7, R2, #3
1136: BLEZ R7, #1168
1144: LD R8, #3
1152: ST a, R8
1160: BR #1168

function factorial
4168: LD R9, #0
4176: ST x, R9
4184: SUB R10, R9, #1
4192: BGZ R10, #4224
4200: LD R0, #1
4208: BR *0(SP)
4216: BR #4288
4224: ADD SP, SP, #factorialsize
4232: ST *SP, #4248
4240: BR #4168
4248: SUB SP, SP, #factorialsize
4256: SUB R11, R9, #1
4264: MUL R12, R0, R9
4272: LD R0, R12
4280: BR *0(SP)

function main
7288: ADD R13, R8, #2
7296: ST a, R13
7304: ADD SP, SP, #factorialsize
7312: ST *SP, #7328
7320: BR #4168
7328: SUB SP, SP, #factorialsize
7336: ST a, R0
7344: ADD SP, SP, #blocksize
7352: ST *SP, #7368
7360: BR #1000
7368: SUB SP, SP, #blocksize
