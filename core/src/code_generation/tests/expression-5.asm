100: LD SP, #4000
108: LD R1, #0
116: ST a, R1
124: LD R2, #0
132: ST b, R2
140: LD R3, #0
148: ST c, R3
156: LD R4, #0
164: ST d, R4
172: LD R5, #0
180: ST e, R5

function main
1000: MUL R6, R2, R3
1008: ST a, R6
1016: ADD R7, R6, R4
1024: ST e, R7
