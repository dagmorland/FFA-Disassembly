; Useful for printing messages to the BGB debugger
; For format details, see https://bgb.bircd.org/manual.html#expressions
; You can turn on logging to debugmsg.txt in BGB settings

; Accepts a string as input
; Example:
; DBGMSG "Here is register A:%A%"
MACRO DBGMSG
    ld d, d
    jr .end\@
    DW $6464
    DW $0000
    DB \1
.end\@:
    ENDM

; Accepts a label as input (even to another bank)
; Example:
; debugMsg:
;   db "Stuff: %($FF9E)% %($FF05)% %($FFA1)% %($FFA0)% %DE%"
; ...
; DBGMSGLOC debugMsg
MACRO DBGMSGLOC
    ld d, d
    jr .end\@
    DW $6464
    DW $0001
    DW \1
    DW BANK(\1)
.end\@:
    ENDM
