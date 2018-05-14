# Single Cycle CPU
In this homework, the single cycle CPU is able to execute `add`, `sub` and `slt` **MIPS instructions**.

## Instruction Format
| Instr| OP [25:20]| RS [19:17]| RT [16:14]| RD [13:11]| Shamt [10:6]| Funct [5:0]|
| -------- | -------- | -------- | ---| ---| ---| ---|
| add| 6'b000000| SSS| TTT| DDD| 5'b00000| 6'b100000|
| sub| 6'b000000| SSS| TTT| DDD| 5'b00000| 6'b100010|
| slt| 6'b000000| SSS| TTT| DDD| 5'b00000| 6'b101010|
