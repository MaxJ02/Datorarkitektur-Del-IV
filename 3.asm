;******************************************************************
;*
;* The following program code performs subtraction of the value of 
;* two local (stack-allocated) constants a and b, and stores the 
;* result at the memory address of the variable c.
;*
;******************************************************************

.EQU A = 0x1F    ; address of variable a
.EQU B = 0x1E    ; address of variable b
.EQU C = 0x1D    ; address of variable c

LDI R16, HIGH(0x08FF)   ; load high byte of top of SRAM into r16
OUT SPH, R16            ; store high byte into stack pointer high register
LDI R16, LOW(0x08FF)    ; load low byte of top of SRAM into r16
OUT SPL, R16            ; store low byte into stack pointer low register

SUBTRACT:
LD  R24, X+             ; load value of x into r24 and increment x pointer
LD  R25, Y+             ; load value of y into r25 and increment y pointer
SUB R24, R25            ; subtract y from x
ST  Z, R24              ; store result at address of z
RET                     ; return from function

MAIN:
LDI  R16, 10            ; load a into r16
STS  A, R16             ; store a into memory at address A
LDI  R16, 8             ; load b into r16
STS  B, R16             ; store b into memory at address B

LDI  R30, LO8(C)        ; load low byte of c address into r30
LDI  R31, HI8(C)        ; load high byte of c address into r31
LD  R28, Y+             ; load low byte of b address into r28 and increment y pointer
LD  R29, X+             ; load high byte of b address into r29 and increment x pointer

CALL SUBTRACT           ; call the subtract function

main_loop:
JMP main_loop
