LDI R16, 10            ; Laddar in immediate 10 (0x0A) i register r16
STS 0x20, R16          ; Sparar värdet från r16 i adressen 0x20 (variabel a)

LDI R16, 8             ; Laddar in immediate 8 (0x08) i register r16
STS 0x21, R16          ; Sparar värdet från r16 i adressen 0x21 (variabel b)

LD R16, 0x20           ; Ladda värdet från minnesadressen 0x20 (variabel a) till r16
SUB R16, 0x21          ; Subtrahera värdet från minnesadressen 0x21 (variabel b) från r16
ST 0x22, R16           ; Spara resultatet från subtraktionen i minnesadressen 0x22 (variabel c)

LOOP:
      RJMP LOOP         ; Oändlig loop
