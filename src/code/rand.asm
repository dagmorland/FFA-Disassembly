;
; Pseudorandom number generator
;
; Copyright 2018 Damian Yerrick
;
; This software is provided 'as-is', without any express or implied
; warranty.  In no event will the authors be held liable for any damages
; arising from the use of this software.
;
; Permission is granted to anyone to use this software for any purpose,
; including commercial applications, and to alter it and redistribute it
; freely, subject to the following restrictions:
;
; 1. The origin of this software must not be misrepresented; you must not
;    claim that you wrote the original software. If you use this software
;    in a product, an acknowledgment in the product documentation would be
;    appreciated but is not required.
; 2. Altered source versions must be plainly marked as such, and must not be
;    misrepresented as being the original software.
; 3. This notice may not be removed or altered from any source distribution.
;
;section "rand_ram",WRAM0
;randstate: ds 4

;section "rand",ROM0

;;
; Generates a pseudorandom 16-bit integer in BC
; using the LCG formula from cc65 rand():
; x[i + 1] = x[i] * 0x01010101 + 0x31415927
; @return A=B=state bits 31-24 (which have the best entropy),
; C=state bits 23-16, DHL trashed
;rand::
  ; Load bits 31-8 of the current value to BCA
  ld hl,randstate+3
  ld a,[hl-]
  ld b,a
  ld a,[hl-]
  ld c,a
  ld a,[hl-]  ; skip D; thanks ISSOtm for the idea
  ; Used to load bits 7-0 to E.  Reading [HL] each time turned out
  ; no slower and saved 1 byte.

  ; Multiply by 0x01010101
  ;add [hl]
  ;ld d,a
  ;adc c
  ;ld c,a
  ;adc b
  ;ld b,a

  ; Add 0xB3B3B3B3 and xor byte 3 with byte 1 for A
  ;ld e,$B3;2
  ;ld a,[hl]
  ;add e;-1
  ;ld [hl+],a
  ;ld a,d
  ;adc e;-1
  ;ld [hl+],a
  ;;ld d,a
  ;ld a,c
  ;adc e;-1
  ;ld [hl+],a
  ;ld c,a
  ;ld a,b
  ;adc e;-1
  ;ld [hl],a
  ;xor c;2

  ; Add 0x31415927 and write back
  ;ld a,[hl]
  ;add $27
  ;ld [hl+],a
  ;ld a,d
  ;adc $59
  ;ld [hl+],a
  ;ld a,c
  ;adc $41
  ;ld [hl+],a
  ;ld c,a
  ;ld a,b
  ;adc $31
  ;ld [hl],a

  ; multiply by 0x1010105 and add 1
  ld d,a
  ld a, [hl+]
  ld e,a
  add d
  ld [hl+],a
  adc c
  ld [hl+],a
  adc b
  ld [hl-],a
  dec hl
  dec hl
  sla e
  rl d
  rl c
  rl b
  sla e
  rl d
  rl c
  rl b
  inc e
  ld a, [hl]
  add e
  ld [hl+],a
  ld a, [hl]
  adc d
  ld [hl+],a
  ld a, [hl]
  adc c
  ld [hl+],a
  ld a, [hl]
  adc b
  ld [hl],a
