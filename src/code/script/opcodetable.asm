;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy


;@jumptable amount=256 label=scriptOpCode%02X
scriptOpcodeTable:
    dw   scriptOpCodeEND                               ;; 02:4576 pP $00
    dw   scriptOpCodeJR                                ;; 02:4578 pP $01
    dw   scriptOpCodeCall                              ;; 02:457a pP $02
    dw   scriptOpCodeLoop                              ;; 02:457c pP $03
    dw   scriptOpCodeMsg                               ;; 02:457e pP $04
    dw   scriptOpCodeLoadColorPalette                  ;; 02:4580 ?? $05 ; Added for colorization.
    dw   scriptOpCodeNOP                               ;; 02:4582 ?? $06
    dw   scriptOpCodeNOP                               ;; 02:4584 ?? $07
    dw   scriptOpCodeIfFlags                           ;; 02:4586 pP $08
    dw   scriptOpCodeIfEquiped                         ;; 02:4588 pP $09
    dw   scriptOpCodeIfInventory                       ;; 02:458a pP $0a
    dw   scriptOpCodeIfTriggeredOnBy                   ;; 02:458c pP $0b
    dw   scriptOpCodeIfTriggeredOffBy                  ;; 02:458e ?? $0c
    dw   scriptOpCodeNOP                               ;; 02:4590 ?? $0d
    dw   scriptOpCodeNOP                               ;; 02:4592 ?? $0e
    dw   scriptOpCodeNOP                               ;; 02:4594 ?? $0f
    dw   scriptOpCodeNpc1StepForward                   ;; 02:4596 pP $10
    dw   scriptOpCodeNpc1StepBackwards                 ;; 02:4598 ?? $11
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:459a ?? $12
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:459c ?? $13
    dw   scriptOpCodeNpc1DirectionUp                   ;; 02:459e pP $14
    dw   scriptOpCodeNpc1DirectionDown                 ;; 02:45a0 pP $15
    dw   scriptOpCodeNpc1DirectionRight                ;; 02:45a2 pP $16
    dw   scriptOpCodeNpc1DirectionLeft                 ;; 02:45a4 pP $17
    dw   scriptOpCodeNpc1Delete                        ;; 02:45a6 ?? $18
    dw   scriptOpCodeNpc1SetPosition                   ;; 02:45a8 ?? $19
    dw   scriptOpCodeNpc1WalkSpeed4                    ;; 02:45aa ?? $1a
    dw   scriptOpCodeNpc1WalkSpeedDefault              ;; 02:45ac ?? $1b
    dw   scriptOpCodeNOP                               ;; 02:45ae ?? $1c
    dw   scriptOpCodeNOP                               ;; 02:45b0 ?? $1d
    dw   scriptOpCodeNOP                               ;; 02:45b2 ?? $1e
    dw   scriptOpCodeNOP                               ;; 02:45b4 ?? $1f
    dw   scriptOpCodeNpc2StepForward                   ;; 02:45b6 ?? $20
    dw   scriptOpCodeNpc2StepBackwards                 ;; 02:45b8 ?? $21
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45ba ?? $22
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45bc ?? $23
    dw   scriptOpCodeNpc2DirectionUp                   ;; 02:45be pP $24
    dw   scriptOpCodeNpc2DirectionDown                 ;; 02:45c0 pP $25
    dw   scriptOpCodeNpc2DirectionRight                ;; 02:45c2 pP $26
    dw   scriptOpCodeNpc2DirectionLeft                 ;; 02:45c4 pP $27
    dw   scriptOpCodeNpc2Delete                        ;; 02:45c6 pP $28
    dw   scriptOpCodeNpc2SetPosition                   ;; 02:45c8 ?? $29
    dw   scriptOpCodeNpc2WalkSpeed4                    ;; 02:45ca ?? $2a
    dw   scriptOpCodeNpc2WalkSpeedDefault              ;; 02:45cc ?? $2b
    dw   scriptOpCodeNOP                               ;; 02:45ce ?? $2c
    dw   scriptOpCodeNOP                               ;; 02:45d0 ?? $2d
    dw   scriptOpCodeNOP                               ;; 02:45d2 ?? $2e
    dw   scriptOpCodeNOP                               ;; 02:45d4 ?? $2f
    dw   scriptOpCodeNpc3StepForward                   ;; 02:45d6 ?? $30
    dw   scriptOpCodeNpc3StepBackwards                 ;; 02:45d8 ?? $31
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45da ?? $32
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45dc ?? $33
    dw   scriptOpCodeNpc3DirectionUp                   ;; 02:45de ?? $34
    dw   scriptOpCodeNpc3DirectionDown                 ;; 02:45e0 ?? $35
    dw   scriptOpCodeNpc3DirectionRight                ;; 02:45e2 ?? $36
    dw   scriptOpCodeNpc3DirectionLeft                 ;; 02:45e4 ?? $37
    dw   scriptOpCodeNpc3Delete                        ;; 02:45e6 ?? $38
    dw   scriptOpCodeNpc3SetPosition                   ;; 02:45e8 ?? $39
    dw   scriptOpCodeNpc3WalkSpeed4                    ;; 02:45ea ?? $3a
    dw   scriptOpCodeNpc3WalkSpeedDefault              ;; 02:45ec ?? $3b
    dw   scriptOpCodeNOP                               ;; 02:45ee ?? $3c
    dw   scriptOpCodeNOP                               ;; 02:45f0 ?? $3d
    dw   scriptOpCodeNOP                               ;; 02:45f2 ?? $3e
    dw   scriptOpCodeNOP                               ;; 02:45f4 ?? $3f
    dw   scriptOpCodeNpc4StepForward                   ;; 02:45f6 ?? $40
    dw   scriptOpCodeNpc4StepBackwards                 ;; 02:45f8 ?? $41
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45fa ?? $42
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:45fc ?? $43
    dw   scriptOpCodeNpc4DirectionUp                   ;; 02:45fe ?? $44
    dw   scriptOpCodeNpc4DirectionDown                 ;; 02:4600 ?? $45
    dw   scriptOpCodeNpc4DirectionRight                ;; 02:4602 ?? $46
    dw   scriptOpCodeNpc4DirectionLeft                 ;; 02:4604 ?? $47
    dw   scriptOpCodeNpc4Delete                        ;; 02:4606 ?? $48
    dw   scriptOpCodeNpc4SetPosition                   ;; 02:4608 ?? $49
    dw   scriptOpCodeNpc4WalkSpeed4                    ;; 02:460a ?? $4a
    dw   scriptOpCodeNpc4WalkSpeedDefault              ;; 02:460c ?? $4b
    dw   scriptOpCodeNOP                               ;; 02:460e ?? $4c
    dw   scriptOpCodeNOP                               ;; 02:4610 ?? $4d
    dw   scriptOpCodeNOP                               ;; 02:4612 ?? $4e
    dw   scriptOpCodeNOP                               ;; 02:4614 ?? $4f
    dw   scriptOpCodeNpc5StepForward                   ;; 02:4616 ?? $50
    dw   scriptOpCodeNpc5StepBackwards                 ;; 02:4618 ?? $51
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:461a ?? $52
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:461c ?? $53
    dw   scriptOpCodeNpc5DirectionUp                   ;; 02:461e ?? $54
    dw   scriptOpCodeNpc5DirectionDown                 ;; 02:4620 ?? $55
    dw   scriptOpCodeNpc5DirectionRight                ;; 02:4622 ?? $56
    dw   scriptOpCodeNpc5DirectionLeft                 ;; 02:4624 ?? $57
    dw   scriptOpCodeNpc5Delete                        ;; 02:4626 ?? $58
    dw   scriptOpCodeNpc5SetPosition                   ;; 02:4628 ?? $59
    dw   scriptOpCodeNpc5WalkSpeed4                    ;; 02:462a ?? $5a
    dw   scriptOpCodeNpc5WalkSpeedDefault              ;; 02:462c ?? $5b
    dw   scriptOpCodeNOP                               ;; 02:462e ?? $5c
    dw   scriptOpCodeNOP                               ;; 02:4630 ?? $5d
    dw   scriptOpCodeNOP                               ;; 02:4632 ?? $5e
    dw   scriptOpCodeNOP                               ;; 02:4634 ?? $5f
    dw   scriptOpCodeNpc6StepForward                   ;; 02:4636 ?? $60
    dw   scriptOpCodeNpc6StepBackwards                 ;; 02:4638 ?? $61
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:463a ?? $62
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:463c ?? $63
    dw   scriptOpCodeNpc6DirectionUp                   ;; 02:463e ?? $64
    dw   scriptOpCodeNpc6DirectionDown                 ;; 02:4640 ?? $65
    dw   scriptOpCodeNpc6DirectionRight                ;; 02:4642 ?? $66
    dw   scriptOpCodeNpc6DirectionLeft                 ;; 02:4644 ?? $67
    dw   scriptOpCodeNpc6Delete                        ;; 02:4646 ?? $68
    dw   scriptOpCodeNpc6SetPosition                   ;; 02:4648 ?? $69
    dw   scriptOpCodeNpc6WalkSpeed4                    ;; 02:464a ?? $6a
    dw   scriptOpCodeNpc6WalkSpeedDefault              ;; 02:464c ?? $6b
    dw   scriptOpCodeNOP                               ;; 02:464e ?? $6c
    dw   scriptOpCodeNOP                               ;; 02:4650 ?? $6d
    dw   scriptOpCodeNOP                               ;; 02:4652 ?? $6e
    dw   scriptOpCodeNOP                               ;; 02:4654 ?? $6f
    dw   scriptOpCodeNpc7StepForward                   ;; 02:4656 ?? $70
    dw   scriptOpCodeNpc7StepBackwards                 ;; 02:4658 ?? $71
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:465a ?? $72
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:465c ?? $73
    dw   scriptOpCodeNpc7DirectionUp                   ;; 02:465e ?? $74
    dw   scriptOpCodeNpc7DirectionDown                 ;; 02:4660 ?? $75
    dw   scriptOpCodeNpc7DirectionRight                ;; 02:4662 ?? $76
    dw   scriptOpCodeNpc7DirectionLeft                 ;; 02:4664 ?? $77
    dw   scriptOpCodeNpc7Delete                        ;; 02:4666 ?? $78
    dw   scriptOpCodeNpc7SetPosition                   ;; 02:4668 ?? $79
    dw   scriptOpCodeNpc7WalkSpeed4                    ;; 02:466a ?? $7a
    dw   scriptOpCodeNpc7WalkSpeedDefault              ;; 02:466c ?? $7b
    dw   scriptOpCodeNOP                               ;; 02:466e ?? $7c
    dw   scriptOpCodeNOP                               ;; 02:4670 ?? $7d
    dw   scriptOpCodeNOP                               ;; 02:4672 ?? $7e
    dw   scriptOpCodeNOP                               ;; 02:4674 ?? $7f
    dw   scriptOpCodePlayerStepForward                 ;; 02:4676 pP $80
    dw   scriptOpCodePlayerStepBackwards               ;; 02:4678 pP $81
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:467a ?? $82
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:467c ?? $83
    dw   scriptOpCodePlayerDirectionUp                 ;; 02:467e pP $84
    dw   scriptOpCodePlayerDirectionDown               ;; 02:4680 pP $85
    dw   scriptOpCodePlayerDirectionRight              ;; 02:4682 pP $86
    dw   scriptOpCodePlayerDirectionLeft               ;; 02:4684 pP $87
    dw   scriptOpCodeSetFastMovement                   ;; 02:4686 pP $88
    dw   scriptOpCodeClearFastMovement                 ;; 02:4688 pP $89
    dw   scriptOpCodePlayerSetPosition                 ;; 02:468a pP $8a
    dw   scriptOpCodePlayerJump                        ;; 02:468c ?? $8b
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:468e ?? $8c
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:4690 ?? $8d
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:4692 ?? $8e
    dw   scriptOpWaitWhileMovement                     ;; 02:4694 ?? $8f
    dw   scriptOpCodeFollowerStepForward               ;; 02:4696 ?? $90
    dw   scriptOpCodeFollowerStepBackwards             ;; 02:4698 ?? $91
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:469a ?? $92
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:469c ?? $93
    dw   scriptOpCodeFollowerDirectionUp               ;; 02:469e ?? $94
    dw   scriptOpCodeFollowerDirectionDown             ;; 02:46a0 ?? $95
    dw   scriptOpCodeFollowerDirectionRight            ;; 02:46a2 ?? $96
    dw   scriptOpCodeFollowerDirectionLeft             ;; 02:46a4 ?? $97
    dw   scriptOpCodeFollowerDelete                    ;; 02:46a6 ?? $98
    dw   scriptOpCodeFollowerSetPosition               ;; 02:46a8 ?? $99
    dw   scriptOpCodeFollowerWalkSpeed4                ;; 02:46aa ?? $9a
    dw   scriptOpCodeFollowerWalkSpeedDefault          ;; 02:46ac ?? $9b
    dw   scriptOpCodeGiveFollower                      ;; 02:46ae pP $9c
    dw   scriptOpCodeGiveFollower_Dup                  ;; 02:46b0 ?? $9d
    dw   scriptOpCodeNOP                               ;; 02:46b2 ?? $9e
    dw   scriptOpCodeNOP                               ;; 02:46b4 ?? $9f
    dw   scriptOpCodePlayerOnChocobo                   ;; 02:46b6 ?? $a0
    dw   scriptOpCodePlayerOnChocobot                  ;; 02:46b8 ?? $a1
    dw   scriptOpCodePlayerOnChocobotWater             ;; 02:46ba ?? $a2
    dw   scriptOpCodePlayerInMinecart                  ;; 02:46bc ?? $a3
    dw   scriptOpCodeSetPlayerNormalSprite             ;; 02:46be pP $a4
    dw   scriptOpCodeSetPlayerHurtSprite               ;; 02:46c0 pP $a5
    dw   scriptOpCodeSetPlayerLaydownSprite            ;; 02:46c2 pP $a6
    dw   scriptOpCodeNOP                               ;; 02:46c4 ?? $a7
    dw   scriptOpCodeNOP                               ;; 02:46c6 ?? $a8
    dw   scriptOpCodeCheckIfCanOpenMap                 ;; 02:46c8 pP $a9
    dw   scriptOpCodeClearPlayerAttack                 ;; 02:46ca ?? $aa
    dw   scriptOpCodeClearRoomHistory                  ;; 02:46cc pP $ab
    dw   scriptOpCodeOpenMap                           ;; 02:46ce pP $ac
    dw   scriptOpCodeWaitMapClose                      ;; 02:46d0 pP $ad
    dw   scriptOpCodeCloseMap                          ;; 02:46d2 pP $ae
    dw   scriptOpCodeChangeIntoEmptyChest              ;; 02:46d4 pP $af
    dw   scriptOpCodeSetRoomTile                       ;; 02:46d6 pP $b0
    dw   scriptOpCodeNOP                               ;; 02:46d8 ?? $b1
    dw   scriptOpCodeNOP                               ;; 02:46da ?? $b2
    dw   scriptOpCodeNOP                               ;; 02:46dc ?? $b3
    dw   scriptOpCodeNOP                               ;; 02:46de ?? $b4
    dw   scriptOpCodeNOP                               ;; 02:46e0 ?? $b5
    dw   scriptOpCodeSetLetterboxGraphicEffect         ;; 02:46e2 ?? $b6
    dw   scriptOpCodeSetNormalGraphicEffect            ;; 02:46e4 ?? $b7
    dw   scriptOpCodeSetDarkGraphicEffect              ;; 02:46e6 ?? $b8
    dw   scriptOpCodeClearDarkGraphicEffect            ;; 02:46e8 ?? $b9
    dw   scriptOpCodeCreateEffect                      ;; 02:46ea ?? $ba
    dw   scriptOpCodeNOP                               ;; 02:46ec ?? $bb
    dw   scriptOpCodeFadeToNormal                      ;; 02:46ee pP $bc
    dw   scriptOpCodeFadeToBlack                       ;; 02:46f0 pP $bd
    dw   scriptOpCodeFadeToWhite                       ;; 02:46f2 ?? $be
    dw   scriptOpCodeFlashScreen                       ;; 02:46f4 pP $bf
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:46f6 pP $c0
    dw   scriptOpCodeFullMana                          ;; 02:46f8 pP $c1
    dw   scriptOpCodeClearStatus                       ;; 02:46fa ?? $c2
    dw   scriptOpCodeAltNOP                            ;; 02:46fc ?? $c3
    dw   scriptOpCodeGiveStatus                        ;; 02:46fe pP $c4
    dw   scriptOpCodeSetLocationFlags                  ;; 02:4700 pP $c5
    dw   scriptOpCodeStartNameEntry                    ;; 02:4702 pP $c6
    dw   scriptOpCodeRNG                               ;; 02:4704 ?? $c7
    dw   scriptOpCodeResetGame                         ;; 02:4706 pP $c8
    dw   scriptOpCodeSetChestOpenScript1               ;; 02:4708 pP $c9
    dw   scriptOpCodeSetChestOpenScript2               ;; 02:470a ?? $ca
    dw   scriptOpCodeSetChestOpenScript3               ;; 02:470c ?? $cb
    dw   scriptOpCodeHalt                              ;; 02:470e ?? $cc
    dw   scriptOpCodeNOP                               ;; 02:4710 ?? $cd
    dw   scriptOpCodeNOP                               ;; 02:4712 ?? $ce
    dw   scriptOpCodeNOP                               ;; 02:4714 ?? $cf
    dw   scriptOpCodeGiveMoney                         ;; 02:4716 ?? $d0
    dw   scriptOpCodeTakeMoney                         ;; 02:4718 pP $d1
    dw   scriptOpCodeGiveXP                            ;; 02:471a ?? $d2
    dw   scriptOpCodeTakeXP                            ;; 02:471c ?? $d3
    dw   scriptOpCodeGiveItem                          ;; 02:471e pP $d4
    dw   scriptOpCodeRemoveItemFromInventory           ;; 02:4720 ?? $d5
    dw   scriptOpCodeGiveMagic                         ;; 02:4722 ?? $d6
    dw   scriptOpCodeRemoveMagicFromInventory          ;; 02:4724 ?? $d7
    dw   scriptOpCodeGiveEquipment                     ;; 02:4726 ?? $d8
    dw   scriptOpCodeRemoveEquipmentFromInventory      ;; 02:4728 ?? $d9
    dw   scriptOpCodeSetFlag                           ;; 02:472a pP $da
    dw   scriptOpCodeClearFlag                         ;; 02:472c pP $db
    dw   scriptOpCodeTextSpeedLockOn                   ;; 02:472e pP $dc
    dw   scriptOpCodeTextSpeedLockOff                  ;; 02:4730 pP $dd
    dw   scriptOpCodeTakeEquipedItem                   ;; 02:4732 ?? $de
    dw   scriptOpCodeNOP                               ;; 02:4734 ?? $df
    dw   scriptOpCodeOpenNorthDoor                     ;; 02:4736 pP $e0
    dw   scriptOpCodeCloseNorthDoor                    ;; 02:4738 ?? $e1
    dw   scriptOpCodeOpenSouthDoor                     ;; 02:473a ?? $e2
    dw   scriptOpCodeCloseSouthDoor                    ;; 02:473c ?? $e3
    dw   scriptOpCodeOpenEastDoor                      ;; 02:473e ?? $e4
    dw   scriptOpCodeCloseEastDoor                     ;; 02:4740 ?? $e5
    dw   scriptOpCodeOpenWestDoor                      ;; 02:4742 ?? $e6
    dw   scriptOpCodeCloseWestDoor                     ;; 02:4744 ?? $e7
    dw   scriptOpCodeScrollRoomDown                    ;; 02:4746 pP $e8
    dw   scriptOpCodeScrollRoomUp                      ;; 02:4748 ?? $e9
    dw   scriptOpCodeScrollRoomLeft                    ;; 02:474a pP $ea
    dw   scriptOpCodeScrollRoomRight                   ;; 02:474c pP $eb
    dw   scriptOpCodeRunRoomScript                     ;; 02:474e pP $ec
    dw   scriptOpCodeRunRoomExitScript                 ;; 02:4750 ?? $ed
    dw   scriptOpCodeRunRoomAllKilledScript            ;; 02:4752 ?? $ee
    dw   scriptOpCodeSetNextRoom                       ;; 02:4754 pP $ef
    dw   scriptOpCodeDelay                             ;; 02:4756 pP $f0
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:4758 ?? $f1
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:475a ?? $f2
    dw   scriptOpCodeLoadRoomInstant                   ;; 02:475c pP $f3
    dw   scriptOpCodeLoadRoom                          ;; 02:475e pP $f4
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:4760 ?? $f5
    dw   scriptOpCodeOpenShop                          ;; 02:4762 pP $f6
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:4764 ?? $f7
    dw   scriptOpCodeSetMusic                          ;; 02:4766 pP $f8
    dw   scriptOpCodeSFX                               ;; 02:4768 pP $f9
    dw   scriptOpCodeFullHealDummyFA                   ;; 02:476a ?? $fa
    dw   scriptOpCodeShakeScreen                       ;; 02:476c ?? $fb
    dw   scriptOpCodeSetNPCTypes                       ;; 02:476e pP $fc
    dw   scriptOpCodeSpawnNPC                          ;; 02:4770 pP $fd
    dw   scriptOpCodeSpawnBoss                         ;; 02:4772 pP $fe
    dw   scriptOpCodeFF                                ;; 02:4774 pP $ff
