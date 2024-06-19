INCLUDE "include/macros.inc"
INCLUDE "include/constants.inc"

COLOR_SINGLE_PALETTES_BANK_1 EQU $19

SECTION "Game Boy Color Bank - Single Palettes 1", ROMX[$4000], BANK[COLOR_SINGLE_PALETTES_BANK_1]

ColorSinglePalettesROM:

INCLUDE "pal/npc/palette_list.inc"

; Loads the palette for an NPC.
; a = NPC id
; hl = metatile table pointer
loadNPCPalette_and_createObject_expansion:
; Do not load palettes for chests.
    cp NPC_CHEST_1
    ret z
    cp NPC_CHEST_2
    ret z
    cp NPC_CHEST_3
    ret z
    cp NPC_CHEST_4
    ret z
; Calculate the address of the palette.
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push de
    ld de, ColorSinglePalettesROM
    add hl, de
;   Now calculate the address of the palette to replace.
    ld a, b
    and $07
    add a
    add a
    add a
    ld de, wColorPalettes.obj_main
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
; Copy one palette.
    ld b, $08
    call copyHLtoDE
; That leaves hl ready for the next palette but de needs to 15 palettes (120 bytes).
    ld a, $78
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
; Copy the blind palette.
    ld b, $08
    call copyHLtoDE
; That leaves hl ready for the next palette but de needs to 15 palettes (120 bytes).
    ld a, $78
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
; Copy the damage palette.
    ld b, $08
    call copyHLtoDE
; That leaves hl ready for the next palette but de needs to 15 palettes (120 bytes).
    ld a, $78
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
; Copy the flash palette.
    ld b, $08
    call copyHLtoDE
; Activate the palette.
    ld hl, wColorPalettes.main
    call setPalettes
; And finish.
    pop de
    pop hl
    ret