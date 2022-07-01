; da65 V2.18 - N/A
; Created:    2022-06-30 19:06:21
; Input file: ninja-gaiden-ii.nes
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L002F           := $002F
L004E           := $004E
L8000           := $8000
L91E2           := $91E2
L9278           := $9278
L927D           := $927D
L9325           := $9325
L9374           := $9374
L93CD           := $93CD
L9442           := $9442
L946C           := $946C
L94A2           := $94A2
L951C           := $951C
L9548           := $9548
L9583           := $9583
L95CE           := $95CE
L95E8           := $95E8
L95EA           := $95EA
L962E           := $962E
L968A           := $968A
L96B7           := $96B7
L9743           := $9743
L974A           := $974A
L977C           := $977C
L9903           := $9903
L9B9A           := $9B9A
L9BD5           := $9BD5
L9BD9           := $9BD9
L9D16           := $9D16
L9D55           := $9D55
L9D68           := $9D68
L9D92           := $9D92
L9DC3           := $9DC3
L9E16           := $9E16
L9E24           := $9E24
L9FD3           := $9FD3
LC000           := $C000
LC011           := $C011
LC16F           := $C16F
LC1B2           := $C1B2
LC1BB           := $C1BB
LC1C6           := $C1C6
LC2A2           := $C2A2
LC2A7           := $C2A7
LC429           := $C429
LC56F           := $C56F
LC619           := $C619
LC739           := $C739
LC74E           := $C74E
LC7E1           := $C7E1
LC820           := $C820
LC913           := $C913
LC941           := $C941
LC95B           := $C95B
LCA28           := $CA28
LCA3E           := $CA3E
LCAE9           := $CAE9
LCAF4           := $CAF4
LCBD6           := $CBD6
LCC70           := $CC70
LCCBA           := $CCBA
LCD4B           := $CD4B
LCDC3           := $CDC3
LCDD2           := $CDD2
LCE44           := $CE44
LCEB7           := $CEB7
LCEC5           := $CEC5
LCED2           := $CED2
LD1A9           := $D1A9
LD1B3           := $D1B3
LD1E2           := $D1E2
LD409           := $D409
LD40C           := $D40C
LD425           := $D425
LD618           := $D618
LD62C           := $D62C
LD69A           := $D69A
LD78F           := $D78F
LDB1F           := $DB1F
LDB26           := $DB26
LDBCF           := $DBCF
LDBFA           := $DBFA
; ----------------------------------------------------------------------------
LA000:
        .byte   $85,$1D                         ; A000 85 1D                    ..
; ----------------------------------------------------------------------------
LA003           := * + 1
        lda     $25                             ; A002 A5 25                    .%
        ora     #$06                            ; A004 09 06                    ..
        sta     $24                             ; A006 85 24                    .$
        sta     L8000                           ; A008 8D 00 80                 ...
        lda     $1D                             ; A00B A5 1D                    ..
        sta     $8001                           ; A00D 8D 01 80                 ...
        rts                                     ; A010 60                       `

; ----------------------------------------------------------------------------
        sta     $1E                             ; A011 85 1E                    ..
        lda     $25                             ; A013 A5 25                    .%
        ora     #$07                            ; A015 09 07                    ..
        sta     $24                             ; A017 85 24                    .$
        sta     L8000                           ; A019 8D 00 80                 ...
        lda     $1E                             ; A01C A5 1E                    ..
        sta     $8001                           ; A01E 8D 01 80                 ...
        rts                                     ; A021 60                       `

; ----------------------------------------------------------------------------
        jsr     L951C                           ; A022 20 1C 95                  ..
        jsr     L9583                           ; A025 20 83 95                  ..
        lda     $0520                           ; A028 AD 20 05                 . .
        and     #$10                            ; A02B 29 10                    ).
        bne     LA04C                           ; A02D D0 1D                    ..
        lda     $04C0                           ; A02F AD C0 04                 ...
        and     #$02                            ; A032 29 02                    ).
        bne     LA044                           ; A034 D0 0E                    ..
        lda     $04C0                           ; A036 AD C0 04                 ...
        and     #$08                            ; A039 29 08                    ).
        beq     LA04C                           ; A03B F0 0F                    ..
        lda     $04F0                           ; A03D AD F0 04                 ...
        ora     #$40                            ; A040 09 40                    .@
        bne     LA049                           ; A042 D0 05                    ..
LA044:
        lda     $04F0                           ; A044 AD F0 04                 ...
        and     #$BF                            ; A047 29 BF                    ).
LA049:
        sta     $04F0                           ; A049 8D F0 04                 ...
LA04C:
        jsr     LC16F                           ; A04C 20 6F C1                  o.
        ldy     $0520                           ; A04F AC 20 05                 . .
        lda     $9C                             ; A052 A5 9C                    ..
        cmp     #$0B                            ; A054 C9 0B                    ..
        bcs     LA069                           ; A056 B0 11                    ..
        tya                                     ; A058 98                       .
        and     #$06                            ; A059 29 06                    ).
        beq     LA07C                           ; A05B F0 1F                    ..
        lda     $0460                           ; A05D AD 60 04                 .`.
        cmp     #$0B                            ; A060 C9 0B                    ..
        beq     LA07C                           ; A062 F0 18                    ..
LA064:
        lda     #$00                            ; A064 A9 00                    ..
        tax                                     ; A066 AA                       .
        beq     LA0BE                           ; A067 F0 55                    .U
LA069:
        lda     $9C                             ; A069 A5 9C                    ..
        cmp     #$0B                            ; A06B C9 0B                    ..
        bcc     LA07C                           ; A06D 90 0D                    ..
        cmp     #$0E                            ; A06F C9 0E                    ..
        bcs     LA07C                           ; A071 B0 09                    ..
        lda     $05B0                           ; A073 AD B0 05                 ...
        sta     $8F                             ; A076 85 8F                    ..
        bpl     LA0D0                           ; A078 10 56                    .V
        bmi     LA0E4                           ; A07A 30 68                    0h
LA07C:
        bit     $68                             ; A07C 24 68                    $h
        bpl     LA086                           ; A07E 10 06                    ..
        bit     $41                             ; A080 24 41                    $A
        bpl     LA08E                           ; A082 10 0A                    ..
        bmi     LA0A6                           ; A084 30 20                    0 
LA086:
        lda     $12                             ; A086 A5 12                    ..
        lsr     a                               ; A088 4A                       J
        bcs     LA0A6                           ; A089 B0 1B                    ..
        lsr     a                               ; A08B 4A                       J
        bcc     LA064                           ; A08C 90 D6                    ..
LA08E:
        ldx     #$FE                            ; A08E A2 FE                    ..
        lda     $04C0                           ; A090 AD C0 04                 ...
        and     #$02                            ; A093 29 02                    ).
        beq     LA09E                           ; A095 F0 07                    ..
        tya                                     ; A097 98                       .
        and     #$30                            ; A098 29 30                    )0
        bne     LA0BC                           ; A09A D0 20                    . 
        beq     LA064                           ; A09C F0 C6                    ..
LA09E:
        tya                                     ; A09E 98                       .
        and     #$08                            ; A09F 29 08                    ).
        beq     LA0BC                           ; A0A1 F0 19                    ..
        inx                                     ; A0A3 E8                       .
        bmi     LA0BC                           ; A0A4 30 16                    0.
LA0A6:
        ldx     #$01                            ; A0A6 A2 01                    ..
        lda     $04C0                           ; A0A8 AD C0 04                 ...
        and     #$08                            ; A0AB 29 08                    ).
        beq     LA0B6                           ; A0AD F0 07                    ..
        tya                                     ; A0AF 98                       .
        and     #$30                            ; A0B0 29 30                    )0
        bne     LA0BC                           ; A0B2 D0 08                    ..
        beq     LA064                           ; A0B4 F0 AE                    ..
LA0B6:
        tya                                     ; A0B6 98                       .
        and     #$08                            ; A0B7 29 08                    ).
        beq     LA0BC                           ; A0B9 F0 01                    ..
        dex                                     ; A0BB CA                       .
LA0BC:
        lda     #$80                            ; A0BC A9 80                    ..
LA0BE:
        clc                                     ; A0BE 18                       .
        adc     $0598                           ; A0BF 6D 98 05                 m..
        sta     $0598                           ; A0C2 8D 98 05                 ...
        txa                                     ; A0C5 8A                       .
        adc     $05B0                           ; A0C6 6D B0 05                 m..
        sta     $05B0                           ; A0C9 8D B0 05                 ...
        sta     $8F                             ; A0CC 85 8F                    ..
        bmi     LA0E4                           ; A0CE 30 14                    0.
LA0D0:
        ldx     #$00                            ; A0D0 A2 00                    ..
        lda     $04C0                           ; A0D2 AD C0 04                 ...
        and     #$0B                            ; A0D5 29 0B                    ).
        beq     LA0FE                           ; A0D7 F0 25                    .%
        and     #$08                            ; A0D9 29 08                    ).
        beq     LA0F6                           ; A0DB F0 19                    ..
        tya                                     ; A0DD 98                       .
        and     #$10                            ; A0DE 29 10                    ).
        bne     LA0FE                           ; A0E0 D0 1C                    ..
        beq     LA0F6                           ; A0E2 F0 12                    ..
LA0E4:
        ldx     #$FF                            ; A0E4 A2 FF                    ..
        lda     $04C0                           ; A0E6 AD C0 04                 ...
        and     #$0E                            ; A0E9 29 0E                    ).
        beq     LA0FE                           ; A0EB F0 11                    ..
        and     #$02                            ; A0ED 29 02                    ).
        beq     LA0F6                           ; A0EF F0 05                    ..
        .byte   $98,$29,$10,$D0,$08             ; A0F1 98 29 10 D0 08           .)...
; ----------------------------------------------------------------------------
LA0F6:
        ldx     #$00                            ; A0F6 A2 00                    ..
        stx     $0598                           ; A0F8 8E 98 05                 ...
        stx     $05B0                           ; A0FB 8E B0 05                 ...
LA0FE:
        stx     $8E                             ; A0FE 86 8E                    ..
        tya                                     ; A100 98                       .
        and     #$40                            ; A101 29 40                    )@
        bne     LA14A                           ; A103 D0 45                    .E
        ldx     #$00                            ; A105 A2 00                    ..
        stx     $05C8                           ; A107 8E C8 05                 ...
        stx     $05E0                           ; A10A 8E E0 05                 ...
        lda     $04C0                           ; A10D AD C0 04                 ...
        and     #$0A                            ; A110 29 0A                    ).
        beq     LA16E                           ; A112 F0 5A                    .Z
        lda     $0520                           ; A114 AD 20 05                 . .
        lsr     a                               ; A117 4A                       J
        bcs     LA135                           ; A118 B0 1B                    ..
        lda     $12                             ; A11A A5 12                    ..
        and     #$0C                            ; A11C 29 0C                    ).
        beq     LA135                           ; A11E F0 15                    ..
        and     #$08                            ; A120 29 08                    ).
        bne     LA128                           ; A122 D0 04                    ..
        ldx     #$01                            ; A124 A2 01                    ..
        bne     LA135                           ; A126 D0 0D                    ..
LA128:
        lda     $0580                           ; A128 AD 80 05                 ...
        cmp     #$38                            ; A12B C9 38                    .8
        bcc     LA135                           ; A12D 90 06                    ..
        lda     $9F                             ; A12F A5 9F                    ..
        bne     LA135                           ; A131 D0 02                    ..
        ldx     #$FF                            ; A133 A2 FF                    ..
LA135:
        lda     $9D                             ; A135 A5 9D                    ..
        cmp     #$0C                            ; A137 C9 0C                    ..
        bcs     LA141                           ; A139 B0 06                    ..
        lda     $9E                             ; A13B A5 9E                    ..
        cmp     #$0C                            ; A13D C9 0C                    ..
        bcc     LA146                           ; A13F 90 05                    ..
LA141:
        lda     #$80                            ; A141 A9 80                    ..
        sta     $05C8                           ; A143 8D C8 05                 ...
LA146:
        stx     $05E0                           ; A146 8E E0 05                 ...
        rts                                     ; A149 60                       `

; ----------------------------------------------------------------------------
LA14A:
        tya                                     ; A14A 98                       .
        and     #$30                            ; A14B 29 30                    )0
        beq     LA16E                           ; A14D F0 1F                    ..
        and     #$10                            ; A14F 29 10                    ).
        beq     LA159                           ; A151 F0 06                    ..
        ldx     #$90                            ; A153 A2 90                    ..
        lda     #$FD                            ; A155 A9 FD                    ..
        bne     LA15D                           ; A157 D0 04                    ..
LA159:
        ldx     #$66                            ; A159 A2 66                    .f
        lda     #$FB                            ; A15B A9 FB                    ..
LA15D:
        stx     $05C8                           ; A15D 8E C8 05                 ...
        sta     $05E0                           ; A160 8D E0 05                 ...
        tya                                     ; A163 98                       .
        and     #$CF                            ; A164 29 CF                    ).
        sta     $0520                           ; A166 8D 20 05                 . .
        lda     #$20                            ; A169 A9 20                    . 
        sta     $0700                           ; A16B 8D 00 07                 ...
LA16E:
        rts                                     ; A16E 60                       `

; ----------------------------------------------------------------------------
        lda     $66                             ; A16F A5 66                    .f
        asl     a                               ; A171 0A                       .
        tax                                     ; A172 AA                       .
        lda     $C180,x                         ; A173 BD 80 C1                 ...
        sta     L004E                           ; A176 85 4E                    .N
        lda     $C181,x                         ; A178 BD 81 C1                 ...
        sta     $4F                             ; A17B 85 4F                    .O
        jmp     (L004E)                         ; A17D 6C 4E 00                 lN.

; ----------------------------------------------------------------------------
        .byte   $A2,$C1,$3D,$C2,$42,$C2,$49,$C2 ; A180 A2 C1 3D C2 42 C2 49 C2  ..=.B.I.
        .byte   $4E,$C2,$55,$C2,$5A,$C2,$61,$C2 ; A188 4E C2 55 C2 5A C2 61 C2  N.U.Z.a.
        .byte   $66,$C2,$6D,$C2,$72,$C2,$79,$C2 ; A190 66 C2 6D C2 72 C2 79 C2  f.m.r.y.
        .byte   $7E,$C2,$85,$C2,$8A,$C2,$91,$C2 ; A198 7E C2 85 C2 8A C2 91 C2  ~.......
        .byte   $96,$C2                         ; A1A0 96 C2                    ..
; ----------------------------------------------------------------------------
        lda     $9C                             ; A1A2 A5 9C                    ..
        cmp     #$0B                            ; A1A4 C9 0B                    ..
        bcc     LA1B2                           ; A1A6 90 0A                    ..
        cmp     #$0E                            ; A1A8 C9 0E                    ..
        beq     LA1C6                           ; A1AA F0 1A                    ..
        cmp     #$0F                            ; A1AC C9 0F                    ..
        beq     LA1BB                           ; A1AE F0 0B                    ..
        bne     LA1D1                           ; A1B0 D0 1F                    ..
LA1B2:
        lda     #$00                            ; A1B2 A9 00                    ..
        sta     $0598                           ; A1B4 8D 98 05                 ...
        sta     $05B0                           ; A1B7 8D B0 05                 ...
        rts                                     ; A1BA 60                       `

; ----------------------------------------------------------------------------
LA1BB:
        lda     #$40                            ; A1BB A9 40                    .@
        sta     $0598                           ; A1BD 8D 98 05                 ...
        lda     #$FF                            ; A1C0 A9 FF                    ..
        sta     $05B0                           ; A1C2 8D B0 05                 ...
        rts                                     ; A1C5 60                       `

; ----------------------------------------------------------------------------
LA1C6:
        lda     #$C0                            ; A1C6 A9 C0                    ..
        sta     $0598                           ; A1C8 8D 98 05                 ...
        lda     #$00                            ; A1CB A9 00                    ..
        sta     $05B0                           ; A1CD 8D B0 05                 ...
        rts                                     ; A1D0 60                       `

; ----------------------------------------------------------------------------
LA1D1:
        ldx     #$00                            ; A1D1 A2 00                    ..
        lda     $12                             ; A1D3 A5 12                    ..
        lsr     a                               ; A1D5 4A                       J
        bcs     LA201                           ; A1D6 B0 29                    .)
        lsr     a                               ; A1D8 4A                       J
        bcs     LA205                           ; A1D9 B0 2A                    .*
        bit     $05B0                           ; A1DB 2C B0 05                 ,..
        bmi     LA1E5                           ; A1DE 30 05                    0.
        lda     #$FE                            ; A1E0 A9 FE                    ..
        dex                                     ; A1E2 CA                       .
        bmi     LA1E7                           ; A1E3 30 02                    0.
LA1E5:
        lda     #$02                            ; A1E5 A9 02                    ..
LA1E7:
        clc                                     ; A1E7 18                       .
        adc     $0598                           ; A1E8 6D 98 05                 m..
        sta     $0598                           ; A1EB 8D 98 05                 ...
        txa                                     ; A1EE 8A                       .
        adc     $05B0                           ; A1EF 6D B0 05                 m..
        tax                                     ; A1F2 AA                       .
        eor     $05B0                           ; A1F3 4D B0 05                 M..
        bpl     LA1FD                           ; A1F6 10 05                    ..
        .byte   $A2,$00,$8E,$98,$05             ; A1F8 A2 00 8E 98 05           .....
; ----------------------------------------------------------------------------
LA1FD:
        stx     $05B0                           ; A1FD 8E B0 05                 ...
        rts                                     ; A200 60                       `

; ----------------------------------------------------------------------------
LA201:
        lda     #$08                            ; A201 A9 08                    ..
        bne     LA208                           ; A203 D0 03                    ..
LA205:
        lda     #$F8                            ; A205 A9 F8                    ..
        dex                                     ; A207 CA                       .
LA208:
        clc                                     ; A208 18                       .
        adc     $0598                           ; A209 6D 98 05                 m..
        sta     $0598                           ; A20C 8D 98 05                 ...
        txa                                     ; A20F 8A                       .
        adc     $05B0                           ; A210 6D B0 05                 m..
        sta     $05B0                           ; A213 8D B0 05                 ...
        bmi     LA227                           ; A216 30 0F                    0.
        cmp     #$01                            ; A218 C9 01                    ..
        bcc     LA23C                           ; A21A 90 20                    . 
        lda     $0598                           ; A21C AD 98 05                 ...
        cmp     #$81                            ; A21F C9 81                    ..
        bcc     LA23C                           ; A221 90 19                    ..
        ldx     #$01                            ; A223 A2 01                    ..
        bne     LA234                           ; A225 D0 0D                    ..
LA227:
        cmp     #$FF                            ; A227 C9 FF                    ..
        beq     LA23C                           ; A229 F0 11                    ..
        lda     $0598                           ; A22B AD 98 05                 ...
        cmp     #$80                            ; A22E C9 80                    ..
        bcs     LA23C                           ; A230 B0 0A                    ..
        ldx     #$FE                            ; A232 A2 FE                    ..
LA234:
        stx     $05B0                           ; A234 8E B0 05                 ...
        ldx     #$80                            ; A237 A2 80                    ..
        stx     $0598                           ; A239 8E 98 05                 ...
LA23C:
        rts                                     ; A23C 60                       `

; ----------------------------------------------------------------------------
        lda     #$F0                            ; A23D A9 F0                    ..
        jmp     LC2A2                           ; A23F 4C A2 C2                 L..

; ----------------------------------------------------------------------------
        dec     $42                             ; A242 C6 42                    .B
        beq     LA2A4                           ; A244 F0 5E                    .^
        jmp     LC1BB                           ; A246 4C BB C1                 L..

; ----------------------------------------------------------------------------
        lda     #$F0                            ; A249 A9 F0                    ..
        jmp     LC2A2                           ; A24B 4C A2 C2                 L..

; ----------------------------------------------------------------------------
        dec     $42                             ; A24E C6 42                    .B
        beq     LA2A4                           ; A250 F0 52                    .R
        jmp     LC1B2                           ; A252 4C B2 C1                 L..

; ----------------------------------------------------------------------------
        lda     #$F0                            ; A255 A9 F0                    ..
        jmp     LC2A2                           ; A257 4C A2 C2                 L..

; ----------------------------------------------------------------------------
        dec     $42                             ; A25A C6 42                    .B
        beq     LA2A4                           ; A25C F0 46                    .F
        jmp     LC1C6                           ; A25E 4C C6 C1                 L..

; ----------------------------------------------------------------------------
        lda     #$F0                            ; A261 A9 F0                    ..
        jmp     LC2A2                           ; A263 4C A2 C2                 L..

; ----------------------------------------------------------------------------
        dec     $42                             ; A266 C6 42                    .B
        beq     LA2A4                           ; A268 F0 3A                    .:
        jmp     LC1B2                           ; A26A 4C B2 C1                 L..

; ----------------------------------------------------------------------------
        .byte   $A9,$78,$4C,$A2,$C2,$C6,$42,$F0 ; A26D A9 78 4C A2 C2 C6 42 F0  .xL...B.
        .byte   $2E,$4C,$C6,$C1,$A9,$78,$4C,$A2 ; A275 2E 4C C6 C1 A9 78 4C A2  .L...xL.
        .byte   $C2,$C6,$42,$F0,$22,$4C,$BB,$C1 ; A27D C2 C6 42 F0 22 4C BB C1  ..B."L..
        .byte   $A9,$B4,$4C,$A2,$C2,$C6,$42,$F0 ; A285 A9 B4 4C A2 C2 C6 42 F0  ..L...B.
        .byte   $16,$4C,$C6,$C1                 ; A28D 16 4C C6 C1              .L..
; ----------------------------------------------------------------------------
        lda     #$F0                            ; A291 A9 F0                    ..
        jmp     LC2A2                           ; A293 4C A2 C2                 L..

; ----------------------------------------------------------------------------
        dec     $42                             ; A296 C6 42                    .B
        beq     LA29D                           ; A298 F0 03                    ..
        jmp     LC1B2                           ; A29A 4C B2 C1                 L..

; ----------------------------------------------------------------------------
LA29D:
        lda     #$01                            ; A29D A9 01                    ..
        sta     $66                             ; A29F 85 66                    .f
        rts                                     ; A2A1 60                       `

; ----------------------------------------------------------------------------
        sta     $42                             ; A2A2 85 42                    .B
LA2A4:
        inc     $66                             ; A2A4 E6 66                    .f
        rts                                     ; A2A6 60                       `

; ----------------------------------------------------------------------------
        clc                                     ; A2A7 18                       .
        lda     $3A                             ; A2A8 A5 3A                    .:
        and     #$1F                            ; A2AA 29 1F                    ).
        sta     $C2                             ; A2AC 85 C2                    ..
        adc     $0550                           ; A2AE 6D 50 05                 mP.
        sta     $09                             ; A2B1 85 09                    ..
        lda     #$00                            ; A2B3 A9 00                    ..
        adc     #$00                            ; A2B5 69 00                    i.
        sta     $67                             ; A2B7 85 67                    .g
        bit     $FFFF                           ; A2B9 2C FF FF                 ,..
        bit     $FFFF                           ; A2BC 2C FF FF                 ,..
        lda     $04C0                           ; A2BF AD C0 04                 ...
        and     #$80                            ; A2C2 29 80                    ).
        sta     $0F                             ; A2C4 85 0F                    ..
        lda     #$00                            ; A2C6 A9 00                    ..
        sta     $9C                             ; A2C8 85 9C                    ..
        sta     $9F                             ; A2CA 85 9F                    ..
        lda     $0580                           ; A2CC AD 80 05                 ...
        cmp     #$30                            ; A2CF C9 30                    .0
        bcs     LA2DD                           ; A2D1 B0 0A                    ..
        lda     #$00                            ; A2D3 A9 00                    ..
        sta     $04C0                           ; A2D5 8D C0 04                 ...
        sta     $9D                             ; A2D8 85 9D                    ..
        sta     $9E                             ; A2DA 85 9E                    ..
        rts                                     ; A2DC 60                       `

; ----------------------------------------------------------------------------
LA2DD:
        bit     $05E0                           ; A2DD 2C E0 05                 ,..
        bmi     LA333                           ; A2E0 30 51                    0Q
        clc                                     ; A2E2 18                       .
        lda     $0580                           ; A2E3 AD 80 05                 ...
        adc     $54                             ; A2E6 65 54                    eT
        sta     $0A                             ; A2E8 85 0A                    ..
        tay                                     ; A2EA A8                       .
        clc                                     ; A2EB 18                       .
        lda     $09                             ; A2EC A5 09                    ..
        adc     #$03                            ; A2EE 69 03                    i.
        tax                                     ; A2F0 AA                       .
        lda     $67                             ; A2F1 A5 67                    .g
        adc     #$00                            ; A2F3 69 00                    i.
        jsr     L977C                           ; A2F5 20 7C 97                  |.
        lda     $92DD,y                         ; A2F8 B9 DD 92                 ...
        and     #$10                            ; A2FB 29 10                    ).
        bne     LA315                           ; A2FD D0 16                    ..
        ldy     $0A                             ; A2FF A4 0A                    ..
        sec                                     ; A301 38                       8
        lda     $09                             ; A302 A5 09                    ..
        sbc     #$05                            ; A304 E9 05                    ..
        tax                                     ; A306 AA                       .
        lda     $67                             ; A307 A5 67                    .g
        sbc     #$00                            ; A309 E9 00                    ..
        jsr     L977C                           ; A30B 20 7C 97                  |.
        lda     $92DD,y                         ; A30E B9 DD 92                 ...
        and     #$10                            ; A311 29 10                    ).
        beq     LA333                           ; A313 F0 1E                    ..
LA315:
        lda     $0F                             ; A315 A5 0F                    ..
        ora     #$10                            ; A317 09 10                    ..
        sta     $0F                             ; A319 85 0F                    ..
        lda     $0520                           ; A31B AD 20 05                 . .
        and     #$02                            ; A31E 29 02                    ).
        bne     LA331                           ; A320 D0 0F                    ..
        lda     $0580                           ; A322 AD 80 05                 ...
        and     #$F0                            ; A325 29 F0                    ).
        ora     #$08                            ; A327 09 08                    ..
        sta     $0580                           ; A329 8D 80 05                 ...
        lda     #$00                            ; A32C A9 00                    ..
        sta     $0568                           ; A32E 8D 68 05                 .h.
LA331:
        sty     $9C                             ; A331 84 9C                    ..
LA333:
        ldy     $0580                           ; A333 AC 80 05                 ...
        clc                                     ; A336 18                       .
        lda     $09                             ; A337 A5 09                    ..
        adc     #$05                            ; A339 69 05                    i.
        sta     $0A                             ; A33B 85 0A                    ..
        tax                                     ; A33D AA                       .
        lda     $67                             ; A33E A5 67                    .g
        adc     #$00                            ; A340 69 00                    i.
        pha                                     ; A342 48                       H
        jsr     L977C                           ; A343 20 7C 97                  |.
        lda     $92DD,y                         ; A346 B9 DD 92                 ...
        sta     $0C                             ; A349 85 0C                    ..
        ldx     $0A                             ; A34B A6 0A                    ..
        clc                                     ; A34D 18                       .
        lda     $0580                           ; A34E AD 80 05                 ...
        adc     $55                             ; A351 65 55                    eU
        sta     $0A                             ; A353 85 0A                    ..
        tay                                     ; A355 A8                       .
        pla                                     ; A356 68                       h
        jsr     L977C                           ; A357 20 7C 97                  |.
        sty     $9D                             ; A35A 84 9D                    ..
        lda     $92DD,y                         ; A35C B9 DD 92                 ...
        sta     $0D                             ; A35F 85 0D                    ..
        ldy     $0580                           ; A361 AC 80 05                 ...
        sec                                     ; A364 38                       8
        lda     $09                             ; A365 A5 09                    ..
        sbc     #$09                            ; A367 E9 09                    ..
        sta     $0B                             ; A369 85 0B                    ..
        tax                                     ; A36B AA                       .
        lda     $67                             ; A36C A5 67                    .g
        sbc     #$00                            ; A36E E9 00                    ..
        pha                                     ; A370 48                       H
        jsr     L977C                           ; A371 20 7C 97                  |.
        lda     $92DD,y                         ; A374 B9 DD 92                 ...
        sta     $0E                             ; A377 85 0E                    ..
        ldy     $0A                             ; A379 A4 0A                    ..
        ldx     $0B                             ; A37B A6 0B                    ..
        pla                                     ; A37D 68                       h
        jsr     L977C                           ; A37E 20 7C 97                  |.
        sty     $9E                             ; A381 84 9E                    ..
        lda     $92DD,y                         ; A383 B9 DD 92                 ...
        sta     $0B                             ; A386 85 0B                    ..
        lda     $0F                             ; A388 A5 0F                    ..
        bpl     LA3AA                           ; A38A 10 1E                    ..
        lda     $0C                             ; A38C A5 0C                    ..
        ora     $0D                             ; A38E 05 0D                    ..
        and     #$0A                            ; A390 29 0A                    ).
        bne     LA3A4                           ; A392 D0 10                    ..
        lda     $0E                             ; A394 A5 0E                    ..
        ora     $0B                             ; A396 05 0B                    ..
        and     #$0A                            ; A398 29 0A                    ).
        bne     LA3A4                           ; A39A D0 08                    ..
        lda     $0F                             ; A39C A5 0F                    ..
        and     #$7F                            ; A39E 29 7F                    ).
        sta     $04C0                           ; A3A0 8D C0 04                 ...
        rts                                     ; A3A3 60                       `

; ----------------------------------------------------------------------------
LA3A4:
        lda     $0F                             ; A3A4 A5 0F                    ..
        sta     $04C0                           ; A3A6 8D C0 04                 ...
        rts                                     ; A3A9 60                       `

; ----------------------------------------------------------------------------
LA3AA:
        lda     $0C                             ; A3AA A5 0C                    ..
        eor     $0D                             ; A3AC 45 0D                    E.
        and     #$02                            ; A3AE 29 02                    ).
        sta     $9F                             ; A3B0 85 9F                    ..
        lda     $0D                             ; A3B2 A5 0D                    ..
        and     #$03                            ; A3B4 29 03                    ).
        php                                     ; A3B6 08                       .
        ora     $0F                             ; A3B7 05 0F                    ..
        sta     $0F                             ; A3B9 85 0F                    ..
        plp                                     ; A3BB 28                       (
        bne     LA3CC                           ; A3BC D0 0E                    ..
        lda     $0C                             ; A3BE A5 0C                    ..
        and     #$0A                            ; A3C0 29 0A                    ).
        beq     LA3CC                           ; A3C2 F0 08                    ..
        lda     $0F                             ; A3C4 A5 0F                    ..
        ora     #$80                            ; A3C6 09 80                    ..
        sta     $04C0                           ; A3C8 8D C0 04                 ...
        rts                                     ; A3CB 60                       `

; ----------------------------------------------------------------------------
LA3CC:
        lda     $0B                             ; A3CC A5 0B                    ..
        eor     $0E                             ; A3CE 45 0E                    E.
        and     #$08                            ; A3D0 29 08                    ).
        ora     $9F                             ; A3D2 05 9F                    ..
        sta     $9F                             ; A3D4 85 9F                    ..
        lda     $0B                             ; A3D6 A5 0B                    ..
        and     #$0C                            ; A3D8 29 0C                    ).
        php                                     ; A3DA 08                       .
        ora     $0F                             ; A3DB 05 0F                    ..
        sta     $0F                             ; A3DD 85 0F                    ..
        plp                                     ; A3DF 28                       (
        bne     LA3F0                           ; A3E0 D0 0E                    ..
        lda     $0E                             ; A3E2 A5 0E                    ..
        and     #$0A                            ; A3E4 29 0A                    ).
        beq     LA3F0                           ; A3E6 F0 08                    ..
        lda     $0F                             ; A3E8 A5 0F                    ..
        ora     #$80                            ; A3EA 09 80                    ..
        sta     $04C0                           ; A3EC 8D C0 04                 ...
        rts                                     ; A3EF 60                       `

; ----------------------------------------------------------------------------
LA3F0:
        lda     $0F                             ; A3F0 A5 0F                    ..
        sta     $04C0                           ; A3F2 8D C0 04                 ...
        rts                                     ; A3F5 60                       `

; ----------------------------------------------------------------------------
        sec                                     ; A3F6 38                       8
        lda     $0550,x                         ; A3F7 BD 50 05                 .P.
        sbc     $0550                           ; A3FA ED 50 05                 .P.
        php                                     ; A3FD 08                       .
        bpl     LA405                           ; A3FE 10 05                    ..
        eor     #$FF                            ; A400 49 FF                    I.
        clc                                     ; A402 18                       .
        adc     #$01                            ; A403 69 01                    i.
LA405:
        lsr     a                               ; A405 4A                       J
        lsr     a                               ; A406 4A                       J
        lsr     a                               ; A407 4A                       J
        and     #$FE                            ; A408 29 FE                    ).
        tay                                     ; A40A A8                       .
        plp                                     ; A40B 28                       (
        bcc     LA41D                           ; A40C 90 0F                    ..
        lda     $C45B,y                         ; A40E B9 5B C4                 .[.
        sta     $0598,x                         ; A411 9D 98 05                 ...
        lda     $C45C,y                         ; A414 B9 5C C4                 .\.
        sta     $05B0,x                         ; A417 9D B0 05                 ...
        jmp     LC429                           ; A41A 4C 29 C4                 L).

; ----------------------------------------------------------------------------
LA41D:
        lda     $C47B,y                         ; A41D B9 7B C4                 .{.
        sta     $0598,x                         ; A420 9D 98 05                 ...
        lda     $C47C,y                         ; A423 B9 7C C4                 .|.
        sta     $05B0,x                         ; A426 9D B0 05                 ...
        sec                                     ; A429 38                       8
        lda     $0580,x                         ; A42A BD 80 05                 ...
        sbc     $0580                           ; A42D ED 80 05                 ...
        php                                     ; A430 08                       .
        bpl     LA438                           ; A431 10 05                    ..
        eor     #$FF                            ; A433 49 FF                    I.
        clc                                     ; A435 18                       .
        adc     #$01                            ; A436 69 01                    i.
LA438:
        lsr     a                               ; A438 4A                       J
        lsr     a                               ; A439 4A                       J
        lsr     a                               ; A43A 4A                       J
        and     #$FE                            ; A43B 29 FE                    ).
        tay                                     ; A43D A8                       .
        plp                                     ; A43E 28                       (
        bcc     LA44E                           ; A43F 90 0D                    ..
        lda     $C45B,y                         ; A441 B9 5B C4                 .[.
        sta     $05C8,x                         ; A444 9D C8 05                 ...
        lda     $C45C,y                         ; A447 B9 5C C4                 .\.
        sta     $05E0,x                         ; A44A 9D E0 05                 ...
        rts                                     ; A44D 60                       `

; ----------------------------------------------------------------------------
LA44E:
        lda     $C47B,y                         ; A44E B9 7B C4                 .{.
        sta     $05C8,x                         ; A451 9D C8 05                 ...
        lda     $C47C,y                         ; A454 B9 7C C4                 .|.
        sta     $05E0,x                         ; A457 9D E0 05                 ...
        rts                                     ; A45A 60                       `

; ----------------------------------------------------------------------------
        .byte   $C0,$FF,$80,$FF,$40,$FF,$00,$FF ; A45B C0 FF 80 FF 40 FF 00 FF  ....@...
        .byte   $C0,$FE,$80,$FE,$40,$FE,$00,$FE ; A463 C0 FE 80 FE 40 FE 00 FE  ....@...
        .byte   $40,$00,$80,$00,$C0,$00,$00,$01 ; A46B 40 00 80 00 C0 00 00 01  @.......
        .byte   $40,$01,$80,$01,$C0,$01,$00,$02 ; A473 40 01 80 01 C0 01 00 02  @.......
        .byte   $40,$00,$80,$00,$C0,$00,$00,$01 ; A47B 40 00 80 00 C0 00 00 01  @.......
        .byte   $40,$01,$80,$01,$C0,$01,$00,$02 ; A483 40 01 80 01 C0 01 00 02  @.......
        .byte   $C0,$FF,$80,$FF,$40,$FF,$00,$FF ; A48B C0 FF 80 FF 40 FF 00 FF  ....@...
        .byte   $C0,$FE,$80,$FE,$40,$FE,$00,$FE ; A493 C0 FE 80 FE 40 FE 00 FE  ....@...
; ----------------------------------------------------------------------------
        lda     #$00                            ; A49B A9 00                    ..
        sta     $09                             ; A49D 85 09                    ..
        clc                                     ; A49F 18                       .
        lda     $0550,x                         ; A4A0 BD 50 05                 .P.
        adc     $C2                             ; A4A3 65 C2                    e.
        sta     $0A                             ; A4A5 85 0A                    ..
        lda     #$00                            ; A4A7 A9 00                    ..
        adc     #$00                            ; A4A9 69 00                    i.
        sta     $67                             ; A4AB 85 67                    .g
        clc                                     ; A4AD 18                       .
        lda     $0580,x                         ; A4AE BD 80 05                 ...
        adc     $0628,x                         ; A4B1 7D 28 06                 }(.
        sec                                     ; A4B4 38                       8
        sbc     #$08                            ; A4B5 E9 08                    ..
        sta     $0B                             ; A4B7 85 0B                    ..
        lda     $05E0,x                         ; A4B9 BD E0 05                 ...
        bmi     LA4DB                           ; A4BC 30 1D                    0.
        lda     $0580,x                         ; A4BE BD 80 05                 ...
        cmp     #$30                            ; A4C1 C9 30                    .0
        bcs     LA4C9                           ; A4C3 B0 04                    ..
        lda     #$00                            ; A4C5 A9 00                    ..
        beq     LA50A                           ; A4C7 F0 41                    .A
LA4C9:
        ldx     $0A                             ; A4C9 A6 0A                    ..
        lda     $67                             ; A4CB A5 67                    .g
        ldy     $0B                             ; A4CD A4 0B                    ..
        jsr     L977C                           ; A4CF 20 7C 97                  |.
        lda     $92DD,y                         ; A4D2 B9 DD 92                 ...
        and     #$10                            ; A4D5 29 10                    ).
        sta     $09                             ; A4D7 85 09                    ..
        ldx     $53                             ; A4D9 A6 53                    .S
LA4DB:
        sec                                     ; A4DB 38                       8
        lda     $0B                             ; A4DC A5 0B                    ..
        sbc     #$08                            ; A4DE E9 08                    ..
        tay                                     ; A4E0 A8                       .
        lda     $05B0,x                         ; A4E1 BD B0 05                 ...
        bmi     LA4F3                           ; A4E4 30 0D                    0.
        clc                                     ; A4E6 18                       .
        lda     $0A                             ; A4E7 A5 0A                    ..
        adc     $0610,x                         ; A4E9 7D 10 06                 }..
        tax                                     ; A4EC AA                       .
        lda     $67                             ; A4ED A5 67                    .g
        adc     #$00                            ; A4EF 69 00                    i.
        bpl     LA4FE                           ; A4F1 10 0B                    ..
LA4F3:
        sec                                     ; A4F3 38                       8
        lda     $0A                             ; A4F4 A5 0A                    ..
        sbc     $0610,x                         ; A4F6 FD 10 06                 ...
        tax                                     ; A4F9 AA                       .
        lda     $67                             ; A4FA A5 67                    .g
        sbc     #$00                            ; A4FC E9 00                    ..
LA4FE:
        jsr     L977C                           ; A4FE 20 7C 97                  |.
        ldx     $53                             ; A501 A6 53                    .S
        lda     $92DD,y                         ; A503 B9 DD 92                 ...
        and     #$0F                            ; A506 29 0F                    ).
        ora     $09                             ; A508 05 09                    ..
LA50A:
        sta     $04C0,x                         ; A50A 9D C0 04                 ...
        and     #$10                            ; A50D 29 10                    ).
        beq     LA520                           ; A50F F0 0F                    ..
        lda     $46                             ; A511 A5 46                    .F
        and     #$BF                            ; A513 29 BF                    ).
        sta     $46                             ; A515 85 46                    .F
        lda     $0580,x                         ; A517 BD 80 05                 ...
        and     #$F8                            ; A51A 29 F8                    ).
        sta     $0580,x                         ; A51C 9D 80 05                 ...
        rts                                     ; A51F 60                       `

; ----------------------------------------------------------------------------
LA520:
        lda     $46                             ; A520 A5 46                    .F
        and     #$40                            ; A522 29 40                    )@
        bne     LA534                           ; A524 D0 0E                    ..
        lda     $46                             ; A526 A5 46                    .F
        ora     #$40                            ; A528 09 40                    .@
        sta     $46                             ; A52A 85 46                    .F
        lda     #$00                            ; A52C A9 00                    ..
        sta     $05C8,x                         ; A52E 9D C8 05                 ...
        sta     $05E0,x                         ; A531 9D E0 05                 ...
LA534:
        rts                                     ; A534 60                       `

; ----------------------------------------------------------------------------
        sta     $05E0,x                         ; A535 9D E0 05                 ...
        lda     #$00                            ; A538 A9 00                    ..
        sta     $05C8,x                         ; A53A 9D C8 05                 ...
        lda     $46                             ; A53D A5 46                    .F
        ora     #$40                            ; A53F 09 40                    .@
        sta     $46                             ; A541 85 46                    .F
        rts                                     ; A543 60                       `

; ----------------------------------------------------------------------------
        lda     $47                             ; A544 A5 47                    .G
        ora     #$01                            ; A546 09 01                    ..
        sta     $47                             ; A548 85 47                    .G
        tya                                     ; A54A 98                       .
        jmp     LC619                           ; A54B 4C 19 C6                 L..

; ----------------------------------------------------------------------------
        ldy     $0640,x                         ; A54E BC 40 06                 .@.
        lda     $0550,y                         ; A551 B9 50 05                 .P.
        sta     $0550,x                         ; A554 9D 50 05                 .P.
        rts                                     ; A557 60                       `

; ----------------------------------------------------------------------------
        lda     #$00                            ; A558 A9 00                    ..
        sta     $0598,x                         ; A55A 9D 98 05                 ...
        sta     $05B0,x                         ; A55D 9D B0 05                 ...
        sta     $05C8,x                         ; A560 9D C8 05                 ...
        sta     $05E0,x                         ; A563 9D E0 05                 ...
        rts                                     ; A566 60                       `

; ----------------------------------------------------------------------------
        .byte   $00,$C0,$40,$00,$02,$00,$FF,$FE ; A567 00 C0 40 00 02 00 FF FE  ..@.....
; ----------------------------------------------------------------------------
        ldy     $CA                             ; A56F A4 CA                    ..
        bit     $3D                             ; A571 24 3D                    $=
        bmi     LA58C                           ; A573 30 17                    0.
        lda     ($C3),y                         ; A575 B1 C3                    ..
        cmp     $40                             ; A577 C5 40                    .@
        beq     LA584                           ; A579 F0 09                    ..
        bcs     LA59F                           ; A57B B0 22                    ."
        cpy     $C9                             ; A57D C4 C9                    ..
        bcs     LA59F                           ; A57F B0 1E                    ..
        inc     $CA                             ; A581 E6 CA                    ..
        rts                                     ; A583 60                       `

; ----------------------------------------------------------------------------
LA584:
        cpy     $C9                             ; A584 C4 C9                    ..
        bcs     LA5A6                           ; A586 B0 1E                    ..
        inc     $CA                             ; A588 E6 CA                    ..
        bne     LA5A6                           ; A58A D0 1A                    ..
LA58C:
        ldx     $40                             ; A58C A6 40                    .@
        inx                                     ; A58E E8                       .
        stx     $0A                             ; A58F 86 0A                    ..
        lda     ($C3),y                         ; A591 B1 C3                    ..
        cmp     $0A                             ; A593 C5 0A                    ..
        beq     LA5A0                           ; A595 F0 09                    ..
        bcc     LA59F                           ; A597 90 06                    ..
        dec     $CA                             ; A599 C6 CA                    ..
        bpl     LA59F                           ; A59B 10 02                    ..
        sty     $CA                             ; A59D 84 CA                    ..
LA59F:
        rts                                     ; A59F 60                       `

; ----------------------------------------------------------------------------
LA5A0:
        dec     $CA                             ; A5A0 C6 CA                    ..
        bpl     LA5A6                           ; A5A2 10 02                    ..
        sty     $CA                             ; A5A4 84 CA                    ..
LA5A6:
        sty     $0A                             ; A5A6 84 0A                    ..
        tya                                     ; A5A8 98                       .
        and     #$07                            ; A5A9 29 07                    ).
        tax                                     ; A5AB AA                       .
        tya                                     ; A5AC 98                       .
        lsr     a                               ; A5AD 4A                       J
        lsr     a                               ; A5AE 4A                       J
        lsr     a                               ; A5AF 4A                       J
        tay                                     ; A5B0 A8                       .
        lda     $0440,y                         ; A5B1 B9 40 04                 .@.
        and     $92ED,x                         ; A5B4 3D ED 92                 =..
        bne     LA613                           ; A5B7 D0 5A                    .Z
        sty     $0C                             ; A5B9 84 0C                    ..
        jsr     L91E2                           ; A5BB 20 E2 91                  ..
        bmi     LA613                           ; A5BE 30 53                    0S
        sty     $0D                             ; A5C0 84 0D                    ..
        ldy     $0C                             ; A5C2 A4 0C                    ..
        lda     $0440,y                         ; A5C4 B9 40 04                 .@.
        ora     $92ED,x                         ; A5C7 1D ED 92                 ...
        sta     $0440,y                         ; A5CA 99 40 04                 .@.
        ldx     $0D                             ; A5CD A6 0D                    ..
        ldy     $0A                             ; A5CF A4 0A                    ..
        lda     ($C7),y                         ; A5D1 B1 C7                    ..
        tay                                     ; A5D3 A8                       .
        lda     $E56D,y                         ; A5D4 B9 6D E5                 .m.
        sta     $04D8,x                         ; A5D7 9D D8 04                 ...
        lda     $DA33,y                         ; A5DA B9 33 DA                 .3.
        and     #$03                            ; A5DD 29 03                    ).
        sta     $05F8,x                         ; A5DF 9D F8 05                 ...
        lda     $DA33,y                         ; A5E2 B9 33 DA                 .3.
        and     #$0C                            ; A5E5 29 0C                    ).
        lsr     a                               ; A5E7 4A                       J
        lsr     a                               ; A5E8 4A                       J
        sta     $0670,x                         ; A5E9 9D 70 06                 .p.
        lda     $DA33,y                         ; A5EC B9 33 DA                 .3.
        and     #$F0                            ; A5EF 29 F0                    ).
        lsr     a                               ; A5F1 4A                       J
        lsr     a                               ; A5F2 4A                       J
        sta     $0688,x                         ; A5F3 9D 88 06                 ...
        ldy     $0A                             ; A5F6 A4 0A                    ..
        lda     ($C5),y                         ; A5F8 B1 C5                    ..
        asl     a                               ; A5FA 0A                       .
        asl     a                               ; A5FB 0A                       .
        asl     a                               ; A5FC 0A                       .
        asl     a                               ; A5FD 0A                       .
        sta     $0550,x                         ; A5FE 9D 50 05                 .P.
        lda     $39                             ; A601 A5 39                    .9
        sta     $0538,x                         ; A603 9D 38 05                 .8.
        lda     ($C5),y                         ; A606 B1 C5                    ..
        and     #$F0                            ; A608 29 F0                    ).
        ora     #$08                            ; A60A 09 08                    ..
        sta     $0580,x                         ; A60C 9D 80 05                 ...
        tya                                     ; A60F 98                       .
        sta     $0658,x                         ; A610 9D 58 06                 .X.
LA613:
        rts                                     ; A613 60                       `

; ----------------------------------------------------------------------------
        ldx     $53                             ; A614 A6 53                    .S
        lda     $04D8,x                         ; A616 BD D8 04                 ...
        bmi     LA62A                           ; A619 30 0F                    0.
        asl     a                               ; A61B 0A                       .
        tay                                     ; A61C A8                       .
        lda     $E30F,y                         ; A61D B9 0F E3                 ...
        sta     L004E                           ; A620 85 4E                    .N
        lda     $E310,y                         ; A622 B9 10 E3                 ...
        sta     $4F                             ; A625 85 4F                    .O
        jmp     (L004E)                         ; A627 6C 4E 00                 lN.

; ----------------------------------------------------------------------------
LA62A:
        asl     a                               ; A62A 0A                       .
        tay                                     ; A62B A8                       .
        lda     $E40F,y                         ; A62C B9 0F E4                 ...
        sta     L004E                           ; A62F 85 4E                    .N
        lda     $E410,y                         ; A631 B9 10 E4                 ...
        sta     $4F                             ; A634 85 4F                    .O
        jmp     (L004E)                         ; A636 6C 4E 00                 lN.

; ----------------------------------------------------------------------------
        lda     $68                             ; A639 A5 68                    .h
        beq     LA66A                           ; A63B F0 2D                    .-
        lda     #$1A                            ; A63D A9 1A                    ..
        sta     $5B                             ; A63F 85 5B                    .[
        bit     $68                             ; A641 24 68                    $h
        bmi     LA65B                           ; A643 30 16                    0.
        dec     $68                             ; A645 C6 68                    .h
        bne     LA66A                           ; A647 D0 21                    .!
        lda     #$00                            ; A649 A9 00                    ..
        sta     $5B                             ; A64B 85 5B                    .[
        lda     $04F0                           ; A64D AD F0 04                 ...
        and     #$FB                            ; A650 29 FB                    ).
        sta     $04F0                           ; A652 8D F0 04                 ...
        lda     #$01                            ; A655 A9 01                    ..
        sta     $4C                             ; A657 85 4C                    .L
        bne     LA66A                           ; A659 D0 0F                    ..
LA65B:
        lda     $04C0                           ; A65B AD C0 04                 ...
        and     #$1A                            ; A65E 29 1A                    ).
        beq     LA66A                           ; A660 F0 08                    ..
        lda     #$3C                            ; A662 A9 3C                    .<
        sta     $68                             ; A664 85 68                    .h
        lda     #$00                            ; A666 A9 00                    ..
        sta     $4C                             ; A668 85 4C                    .L
LA66A:
        bit     $BE                             ; A66A 24 BE                    $.
        bmi     LA677                           ; A66C 30 09                    0.
        bvc     LA67A                           ; A66E 50 0A                    P.
        .byte   $AD,$C0,$04,$29,$10,$F0,$03     ; A670 AD C0 04 29 10 F0 03     ...)...
LA677:
        .byte   $4C,$5C,$C8                     ; A677 4C 5C C8                 L\.
; ----------------------------------------------------------------------------
LA67A:
        lda     $D0                             ; A67A A5 D0                    ..
        beq     LA6EB                           ; A67C F0 6D                    .m
        lda     #$1A                            ; A67E A9 1A                    ..
        sta     $5B                             ; A680 85 5B                    .[
        dec     $050E                           ; A682 CE 0E 05                 ...
        bpl     LA6A2                           ; A685 10 1B                    ..
        lda     #$3C                            ; A687 A9 3C                    .<
        sta     $050E                           ; A689 8D 0E 05                 ...
        dec     $050F                           ; A68C CE 0F 05                 ...
        bpl     LA6A2                           ; A68F 10 11                    ..
        lda     #$00                            ; A691 A9 00                    ..
        sta     $D0                             ; A693 85 D0                    ..
        lda     $7E                             ; A695 A5 7E                    .~
        sta     $D3                             ; A697 85 D3                    ..
        lda     #$00                            ; A699 A9 00                    ..
        sta     $D2                             ; A69B 85 D2                    ..
        sta     $4D                             ; A69D 85 4D                    .M
        jmp     LC74E                           ; A69F 4C 4E C7                 LN.

; ----------------------------------------------------------------------------
LA6A2:
        lda     $7E                             ; A6A2 A5 7E                    .~
        cmp     #$2D                            ; A6A4 C9 2D                    .-
        beq     LA6E5                           ; A6A6 F0 3D                    .=
        cmp     #$2E                            ; A6A8 C9 2E                    ..
        beq     LA6E5                           ; A6AA F0 39                    .9
        bit     $D0                             ; A6AC 24 D0                    $.
        bmi     LA6C7                           ; A6AE 30 17                    0.
        bvc     LA6E5                           ; A6B0 50 33                    P3
        lda     #$09                            ; A6B2 A9 09                    ..
        dec     $A8                             ; A6B4 C6 A8                    ..
        bpl     LA6E6                           ; A6B6 10 2E                    ..
        sta     $A8                             ; A6B8 85 A8                    ..
        dec     $A9                             ; A6BA C6 A9                    ..
        bpl     LA6E6                           ; A6BC 10 28                    .(
        sta     $A9                             ; A6BE 85 A9                    ..
        dec     $AA                             ; A6C0 C6 AA                    ..
        bpl     LA6E6                           ; A6C2 10 22                    ."
        jmp     LC913                           ; A6C4 4C 13 C9                 L..

; ----------------------------------------------------------------------------
LA6C7:
        lda     #$09                            ; A6C7 A9 09                    ..
        dec     $AB                             ; A6C9 C6 AB                    ..
        bpl     LA6E6                           ; A6CB 10 19                    ..
        sta     $AB                             ; A6CD 85 AB                    ..
        dec     $AC                             ; A6CF C6 AC                    ..
        bpl     LA6E6                           ; A6D1 10 13                    ..
        sta     $AC                             ; A6D3 85 AC                    ..
        dec     $AD                             ; A6D5 C6 AD                    ..
        bpl     LA6E6                           ; A6D7 10 0D                    ..
        lda     #$00                            ; A6D9 A9 00                    ..
        sta     $AB                             ; A6DB 85 AB                    ..
        sta     $AC                             ; A6DD 85 AC                    ..
        sta     $AD                             ; A6DF 85 AD                    ..
        sta     $B0                             ; A6E1 85 B0                    ..
        lsr     $D0                             ; A6E3 46 D0                    F.
LA6E5:
        rts                                     ; A6E5 60                       `

; ----------------------------------------------------------------------------
LA6E6:
        lda     #$04                            ; A6E6 A9 04                    ..
        jmp     L9D68                           ; A6E8 4C 68 9D                 Lh.

; ----------------------------------------------------------------------------
LA6EB:
        dec     $B0                             ; A6EB C6 B0                    ..
        bpl     LA71D                           ; A6ED 10 2E                    ..
        lda     #$3C                            ; A6EF A9 3C                    .<
        sta     $B0                             ; A6F1 85 B0                    ..
        dec     $B1                             ; A6F3 C6 B1                    ..
        ldx     $B1                             ; A6F5 A6 B1                    ..
        cpx     #$0B                            ; A6F7 E0 0B                    ..
        bcs     LA70B                           ; A6F9 B0 10                    ..
        .byte   $A9,$1A,$85,$5B,$A9             ; A6FB A9 1A 85 5B A9           ...[.
LA700:
        .byte   $26,$8D,$00,$07,$8A,$D0,$04,$A9 ; A700 26 8D 00 07 8A D0 04 A9  &.......
        .byte   $40,$85,$BE                     ; A708 40 85 BE                 @..
; ----------------------------------------------------------------------------
LA70B:
        dec     $AB                             ; A70B C6 AB                    ..
        bpl     LA71D                           ; A70D 10 0E                    ..
        lda     #$09                            ; A70F A9 09                    ..
        sta     $AB                             ; A711 85 AB                    ..
        dec     $AC                             ; A713 C6 AC                    ..
        bpl     LA71D                           ; A715 10 06                    ..
        .byte   $A9,$09,$85,$AC,$C6,$AD         ; A717 A9 09 85 AC C6 AD        ......
; ----------------------------------------------------------------------------
LA71D:
        lda     $9D                             ; A71D A5 9D                    ..
        cmp     #$09                            ; A71F C9 09                    ..
        beq     LA74E                           ; A721 F0 2B                    .+
        cmp     #$07                            ; A723 C9 07                    ..
        beq     LA799                           ; A725 F0 72                    .r
        cmp     #$06                            ; A727 C9 06                    ..
        beq     LA7A2                           ; A729 F0 77                    .w
        lda     $9E                             ; A72B A5 9E                    ..
        cmp     #$06                            ; A72D C9 06                    ..
LA730           := * + 1
        beq     LA7A2                           ; A72F F0 71                    .q
        cmp     #$07                            ; A731 C9 07                    ..
        beq     LA799                           ; A733 F0 64                    .d
        cmp     #$09                            ; A735 C9 09                    ..
        beq     LA74E                           ; A737 F0 15                    ..
        lda     $3B                             ; A739 A5 3B                    .;
        sta     $40                             ; A73B 85 40                    .@
        lda     $3A                             ; A73D A5 3A                    .:
        lsr     $40                             ; A73F 46 40                    F@
        ror     a                               ; A741 6A                       j
        lsr     $40                             ; A742 46 40                    F@
        ror     a                               ; A744 6A                       j
        lsr     $40                             ; A745 46 40                    F@
        ror     a                               ; A747 6A                       j
        lsr     $40                             ; A748 46 40                    F@
        ror     a                               ; A74A 6A                       j
        sta     $40                             ; A74B 85 40                    .@
        rts                                     ; A74D 60                       `

; ----------------------------------------------------------------------------
LA74E:
        jsr     L974A                           ; A74E 20 4A 97                  J.
        lda     $48                             ; A751 A5 48                    .H
        and     #$0F                            ; A753 29 0F                    ).
        sta     $B2                             ; A755 85 B2                    ..
        ldx     #$0E                            ; A757 A2 0E                    ..
        lda     $7E                             ; A759 A5 7E                    .~
LA75B:
        cmp     $C925,x                         ; A75B DD 25 C9                 .%.
        beq     LA763                           ; A75E F0 03                    ..
        dex                                     ; A760 CA                       .
        bpl     LA75B                           ; A761 10 F8                    ..
LA763:
        lda     $CB                             ; A763 A5 CB                    ..
        cmp     $C933,x                         ; A765 DD 33 C9                 .3.
        bcs     LA772                           ; A768 B0 08                    ..
        lda     $C933,x                         ; A76A BD 33 C9                 .3.
        sta     $CB                             ; A76D 85 CB                    ..
        jsr     LC820                           ; A76F 20 20 C8                   .
LA772:
        lda     #$00                            ; A772 A9 00                    ..
        sta     $D1                             ; A774 85 D1                    ..
        inc     $7E                             ; A776 E6 7E                    .~
        lda     $D3                             ; A778 A5 D3                    ..
        cmp     $7E                             ; A77A C5 7E                    .~
        bcs     LA772                           ; A77C B0 F4                    ..
        ldx     #$04                            ; A77E A2 04                    ..
        lda     $CB                             ; A780 A5 CB                    ..
        cmp     #$06                            ; A782 C9 06                    ..
        beq     LA794                           ; A784 F0 0E                    ..
        cmp     #$07                            ; A786 C9 07                    ..
        beq     LA794                           ; A788 F0 0A                    ..
        cmp     #$09                            ; A78A C9 09                    ..
        beq     LA794                           ; A78C F0 06                    ..
        cmp     #$0B                            ; A78E C9 0B                    ..
        bcs     LA794                           ; A790 B0 02                    ..
        ldx     #$03                            ; A792 A2 03                    ..
LA794:
        stx     $B6                             ; A794 86 B6                    ..
        jmp     LCD4B                           ; A796 4C 4B CD                 LK.

; ----------------------------------------------------------------------------
LA799:
        .byte   $C6,$7E,$A9,$80,$85,$B4,$4C,$D2 ; A799 C6 7E A9 80 85 B4 4C D2  .~....L.
        .byte   $CE                             ; A7A1 CE                       .
; ----------------------------------------------------------------------------
LA7A2:
        inc     $7E                             ; A7A2 E6 7E                    .~
        lda     #$00                            ; A7A4 A9 00                    ..
        sta     $B4                             ; A7A6 85 B4                    ..
        ldx     $7E                             ; A7A8 A6 7E                    .~
        lda     $8240,x                         ; A7AA BD 40 82                 .@.
        and     #$03                            ; A7AD 29 03                    ).
        beq     LA7F0                           ; A7AF F0 3F                    .?
        ldy     #$03                            ; A7B1 A0 03                    ..
        sty     $0700                           ; A7B3 8C 00 07                 ...
        cmp     #$02                            ; A7B6 C9 02                    ..
        beq     LA7F3                           ; A7B8 F0 39                    .9
        cmp     #$03                            ; A7BA C9 03                    ..
        beq     LA7D4                           ; A7BC F0 16                    ..
        lda     #$3C                            ; A7BE A9 3C                    .<
        sta     $B0                             ; A7C0 85 B0                    ..
        lda     #$FA                            ; A7C2 A9 FA                    ..
        sta     $B1                             ; A7C4 85 B1                    ..
        lda     #$00                            ; A7C6 A9 00                    ..
        sta     $AB                             ; A7C8 85 AB                    ..
        lda     #$05                            ; A7CA A9 05                    ..
        sta     $AC                             ; A7CC 85 AC                    ..
        lda     #$02                            ; A7CE A9 02                    ..
        sta     $AD                             ; A7D0 85 AD                    ..
        bne     LA7DE                           ; A7D2 D0 0A                    ..
LA7D4:
        jsr     L974A                           ; A7D4 20 4A 97                  J.
        lda     #$20                            ; A7D7 A9 20                    . 
        sta     $89                             ; A7D9 85 89                    ..
        jmp     LC7E1                           ; A7DB 4C E1 C7                 L..

; ----------------------------------------------------------------------------
LA7DE:
        jsr     L974A                           ; A7DE 20 4A 97                  J.
        lda     $3F                             ; A7E1 A5 3F                    .?
        eor     #$01                            ; A7E3 49 01                    I.
        sta     $3F                             ; A7E5 85 3F                    .?
        lda     #$00                            ; A7E7 A9 00                    ..
        sta     $1F                             ; A7E9 85 1F                    ..
        sta     $E000                           ; A7EB 8D 00 E0                 ...
        sta     $2E                             ; A7EE 85 2E                    ..
LA7F0:
        jmp     LCED2                           ; A7F0 4C D2 CE                 L..

; ----------------------------------------------------------------------------
LA7F3:
        jsr     L962E                           ; A7F3 20 2E 96                  ..
        ldx     #$00                            ; A7F6 A2 00                    ..
        jsr     L9374                           ; A7F8 20 74 93                  t.
        lda     $3F                             ; A7FB A5 3F                    .?
        eor     #$01                            ; A7FD 49 01                    I.
        sta     $3F                             ; A7FF 85 3F                    .?
        lda     $89                             ; A801 A5 89                    ..
        eor     #$04                            ; A803 49 04                    I.
        sta     $89                             ; A805 85 89                    ..
        lda     $48                             ; A807 A5 48                    .H
        and     #$0F                            ; A809 29 0F                    ).
        sta     $B2                             ; A80B 85 B2                    ..
        lda     #$08                            ; A80D A9 08                    ..
        sta     $48                             ; A80F 85 48                    .H
        lda     #$00                            ; A811 A9 00                    ..
        sta     $49                             ; A813 85 49                    .I
        sta     $4A                             ; A815 85 4A                    .J
        jsr     L9BD9                           ; A817 20 D9 9B                  ..
        jsr     L9BD9                           ; A81A 20 D9 9B                  ..
        jmp     LCED2                           ; A81D 4C D2 CE                 L..

; ----------------------------------------------------------------------------
        lda     #$00                            ; A820 A9 00                    ..
        sta     $1F                             ; A822 85 1F                    ..
        sta     $E000                           ; A824 8D 00 E0                 ...
        lda     #$80                            ; A827 A9 80                    ..
        sta     $2E                             ; A829 85 2E                    ..
        lda     #$05                            ; A82B A9 05                    ..
        jsr     LC011                           ; A82D 20 11 C0                  ..
        lda     $CB                             ; A830 A5 CB                    ..
        jsr     LA000                           ; A832 20 00 A0                  ..
        lda     #$04                            ; A835 A9 04                    ..
        jsr     LC000                           ; A837 20 00 C0                  ..
        jsr     L95CE                           ; A83A 20 CE 95                  ..
        lda     #$00                            ; A83D A9 00                    ..
        sta     $25                             ; A83F 85 25                    .%
        sta     $2E                             ; A841 85 2E                    ..
        sta     $21                             ; A843 85 21                    .!
        sta     $23                             ; A845 85 23                    .#
        lda     #$0C                            ; A847 A9 0C                    ..
        sta     $26                             ; A849 85 26                    .&
        lda     #$1E                            ; A84B A9 1E                    ..
        sta     $11                             ; A84D 85 11                    ..
        lda     #$A8                            ; A84F A9 A8                    ..
        sta     $10                             ; A851 85 10                    ..
        jsr     L9E16                           ; A853 20 16 9E                  ..
        jsr     L95E8                           ; A856 20 E8 95                  ..
        jmp     L9BD9                           ; A859 4C D9 9B                 L..

; ----------------------------------------------------------------------------
        .byte   $A9,$46,$8D,$00,$07,$A9,$00,$85 ; A85C A9 46 8D 00 07 A9 00 85  .F......
        .byte   $D0,$85,$D1,$85,$68,$A9,$1A,$85 ; A864 D0 85 D1 85 68 A9 1A 85  ....h...
        .byte   $5B,$A5,$48,$29,$F9,$85,$48,$A5 ; A86C 5B A5 48 29 F9 85 48 A5  [.H)..H.
        .byte   $49,$29,$F8,$85,$49,$A9,$0F,$8D ; A874 49 29 F8 85 49 A9 0F 8D  I)..I...
        .byte   $A8,$04,$A9,$78,$85,$BE,$20,$D9 ; A87C A8 04 A9 78 85 BE 20 D9  ...x.. .
        .byte   $9B,$20,$16,$9E,$20,$C2,$96,$20 ; A884 9B 20 16 9E 20 C2 96 20  . .. .. 
        .byte   $24,$9E,$A9,$01,$20,$11,$C0,$20 ; A88C 24 9E A9 01 20 11 C0 20  $... .. 
        .byte   $A2,$94,$20,$42,$94,$C6,$BE,$D0 ; A894 A2 94 20 42 94 C6 BE D0  .. B....
        .byte   $E5,$A9,$01,$8D,$00,$07,$C6,$A5 ; A89C E5 A9 01 8D 00 07 C6 A5  ........
        .byte   $10,$4D,$A9,$33,$8D,$00,$07,$20 ; A8A4 10 4D A9 33 8D 00 07 20  .M.3... 
        .byte   $4A,$97,$A9,$00,$85,$1F,$8D,$00 ; A8AC 4A 97 A9 00 85 1F 8D 00  J.......
        .byte   $E0,$85,$4D,$85,$21,$85,$23,$85 ; A8B4 E0 85 4D 85 21 85 23 85  ..M.!.#.
        .byte   $48,$85,$49,$85,$4A,$A9,$10,$85 ; A8BC 48 85 49 85 4A A9 10 85  H.I.J...
        .byte   $56,$A5,$10,$29,$FC,$85,$10,$20 ; A8C4 56 A5 10 29 FC 85 10 20  V..)... 
        .byte   $16,$9E,$20,$E8,$95,$A2,$00,$20 ; A8CC 16 9E 20 E8 95 A2 00 20  .. .... 
        .byte   $9A,$9B,$20,$D9,$9B,$A9,$01,$20 ; A8D4 9A 9B 20 D9 9B A9 01 20  .. .... 
        .byte   $11,$C0,$20,$A2,$94,$A5,$13,$29 ; A8DC 11 C0 20 A2 94 A5 13 29  .. ....)
        .byte   $10,$F0,$EF,$20,$E8,$95,$20,$B7 ; A8E4 10 F0 EF 20 E8 95 20 B7  ... .. .
        .byte   $96,$A9,$02,$85,$B6,$D0,$0C,$A9 ; A8EC 96 A9 02 85 B6 D0 0C A9  ........
        .byte   $09,$85,$48,$A9,$00,$85,$49,$85 ; A8F4 09 85 48 A9 00 85 49 85  ..H...I.
        .byte   $4A,$A9,$01,$85,$B6,$20,$16,$9E ; A8FC 4A A9 01 85 B6 20 16 9E  J.... ..
        .byte   $20,$24,$9E,$20,$99,$96,$20,$D3 ; A904 20 24 9E 20 99 96 20 D3   $. .. .
        .byte   $9F,$20,$D9,$9B,$4C,$4B,$CD     ; A90C 9F 20 D9 9B 4C 4B CD     . ..LK.
; ----------------------------------------------------------------------------
        lda     #$00                            ; A913 A9 00                    ..
        sta     $A8                             ; A915 85 A8                    ..
        sta     $A9                             ; A917 85 A9                    ..
        sta     $AA                             ; A919 85 AA                    ..
        sta     $AE                             ; A91B 85 AE                    ..
        lsr     $D0                             ; A91D 46 D0                    F.
        lda     #$48                            ; A91F A9 48                    .H
        sta     $0700                           ; A921 8D 00 07                 ...
        rts                                     ; A924 60                       `

; ----------------------------------------------------------------------------
        .byte   $03,$08,$0F,$16,$19,$1C,$1D,$20 ; A925 03 08 0F 16 19 1C 1D 20  ....... 
        .byte   $22,$27,$2C,$2D,$2E,$2F,$02,$03 ; A92D 22 27 2C 2D 2E 2F 02 03  "',-./..
        .byte   $04,$05,$06,$07,$08,$09,$0A,$0B ; A935 04 05 06 07 08 09 0A 0B  ........
        .byte   $0C,$0D,$0E,$0F                 ; A93D 0C 0D 0E 0F              ....
; ----------------------------------------------------------------------------
        ldx     #$01                            ; A941 A2 01                    ..
        stx     $4016                           ; A943 8E 16 40                 ..@
        dex                                     ; A946 CA                       .
        stx     $4016                           ; A947 8E 16 40                 ..@
        ldx     #$08                            ; A94A A2 08                    ..
LA94C:
        lda     $4016                           ; A94C AD 16 40                 ..@
        sta     $2B                             ; A94F 85 2B                    .+
        lsr     a                               ; A951 4A                       J
        ora     $2B                             ; A952 05 2B                    .+
        lsr     a                               ; A954 4A                       J
        rol     $12                             ; A955 26 12                    &.
        dex                                     ; A957 CA                       .
        bne     LA94C                           ; A958 D0 F2                    ..
        rts                                     ; A95A 60                       `

; ----------------------------------------------------------------------------
        clc                                     ; A95B 18                       .
        lda     $82                             ; A95C A5 82                    ..
        adc     $0598                           ; A95E 6D 98 05                 m..
        sta     $82                             ; A961 85 82                    ..
        lda     $83                             ; A963 A5 83                    ..
        adc     $05B0                           ; A965 6D B0 05                 m..
        sta     $83                             ; A968 85 83                    ..
        bmi     LA970                           ; A96A 30 04                    0.
        cmp     #$10                            ; A96C C9 10                    ..
        bcc     LA99D                           ; A96E 90 2D                    .-
LA970:
        and     #$0F                            ; A970 29 0F                    ).
        sta     $83                             ; A972 85 83                    ..
        jsr     LDB26                           ; A974 20 26 DB                  &.
        lda     #$04                            ; A977 A9 04                    ..
        jsr     LC000                           ; A979 20 00 C0                  ..
        lda     #$02                            ; A97C A9 02                    ..
        bit     $3D                             ; A97E 24 3D                    $=
        bpl     LA984                           ; A980 10 02                    ..
        lda     #$FE                            ; A982 A9 FE                    ..
LA984:
        clc                                     ; A984 18                       .
        adc     $88                             ; A985 65 88                    e.
        sta     $88                             ; A987 85 88                    ..
        bmi     LA993                           ; A989 30 08                    0.
        cmp     #$20                            ; A98B C9 20                    . 
        bcc     LA99D                           ; A98D 90 0E                    ..
        lda     #$00                            ; A98F A9 00                    ..
        beq     LA995                           ; A991 F0 02                    ..
LA993:
        lda     #$1E                            ; A993 A9 1E                    ..
LA995:
        sta     $88                             ; A995 85 88                    ..
        lda     $89                             ; A997 A5 89                    ..
        eor     #$04                            ; A999 49 04                    I.
        sta     $89                             ; A99B 85 89                    ..
LA99D:
        clc                                     ; A99D 18                       .
        lda     $84                             ; A99E A5 84                    ..
        adc     $0598                           ; A9A0 6D 98 05                 m..
        sta     $84                             ; A9A3 85 84                    ..
        lda     $85                             ; A9A5 A5 85                    ..
        adc     $05B0                           ; A9A7 6D B0 05                 m..
        sta     $85                             ; A9AA 85 85                    ..
        bmi     LA9B2                           ; A9AC 30 04                    0.
        cmp     #$20                            ; A9AE C9 20                    . 
        bcc     LAA01                           ; A9B0 90 4F                    .O
LA9B2:
        and     #$1F                            ; A9B2 29 1F                    ).
        sta     $85                             ; A9B4 85 85                    ..
        jsr     L9D92                           ; A9B6 20 92 9D                  ..
        lda     #$06                            ; A9B9 A9 06                    ..
        ldx     #$00                            ; A9BB A2 00                    ..
        bit     $3D                             ; A9BD 24 3D                    $=
        bpl     LA9C5                           ; A9BF 10 04                    ..
        lda     #$FA                            ; A9C1 A9 FA                    ..
        ldx     #$FF                            ; A9C3 A2 FF                    ..
LA9C5:
        clc                                     ; A9C5 18                       .
        adc     $86                             ; A9C6 65 86                    e.
        sta     $86                             ; A9C8 85 86                    ..
        txa                                     ; A9CA 8A                       .
        adc     $87                             ; A9CB 65 87                    e.
        sta     $87                             ; A9CD 85 87                    ..
        lda     #$0F                            ; A9CF A9 0F                    ..
        bit     $3D                             ; A9D1 24 3D                    $=
        bpl     LA9D7                           ; A9D3 10 02                    ..
        lda     #$F1                            ; A9D5 A9 F1                    ..
LA9D7:
        clc                                     ; A9D7 18                       .
        adc     $8A                             ; A9D8 65 8A                    e.
        cmp     #$F0                            ; A9DA C9 F0                    ..
        bcc     LA9E6                           ; A9DC 90 08                    ..
        bne     LA9E4                           ; A9DE D0 04                    ..
        lda     #$00                            ; A9E0 A9 00                    ..
        beq     LA9E6                           ; A9E2 F0 02                    ..
LA9E4:
        lda     #$E1                            ; A9E4 A9 E1                    ..
LA9E6:
        sta     $8A                             ; A9E6 85 8A                    ..
        lda     #$0F                            ; A9E8 A9 0F                    ..
        bit     $3D                             ; A9EA 24 3D                    $=
        bpl     LA9F0                           ; A9EC 10 02                    ..
        lda     #$F1                            ; A9EE A9 F1                    ..
LA9F0:
        clc                                     ; A9F0 18                       .
        adc     $8B                             ; A9F1 65 8B                    e.
        cmp     #$F0                            ; A9F3 C9 F0                    ..
        bcc     LA9FF                           ; A9F5 90 08                    ..
        bne     LA9FD                           ; A9F7 D0 04                    ..
        lda     #$00                            ; A9F9 A9 00                    ..
        beq     LA9FF                           ; A9FB F0 02                    ..
LA9FD:
        lda     #$E1                            ; A9FD A9 E1                    ..
LA9FF:
        sta     $8B                             ; A9FF 85 8B                    ..
LAA01:
        rts                                     ; AA01 60                       `

; ----------------------------------------------------------------------------
        lda     $04A8                           ; AA02 AD A8 04                 ...
        cmp     #$1D                            ; AA05 C9 1D                    ..
        bcc     LAA0D                           ; AA07 90 04                    ..
        cmp     #$20                            ; AA09 C9 20                    . 
        bcc     LAA1D                           ; AA0B 90 10                    ..
LAA0D:
        lda     $C1                             ; AA0D A5 C1                    ..
        lsr     a                               ; AA0F 4A                       J
        bcs     LAA15                           ; AA10 B0 03                    ..
        jmp     LCAE9                           ; AA12 4C E9 CA                 L..

; ----------------------------------------------------------------------------
LAA15:
        bit     $BF                             ; AA15 24 BF                    $.
        bmi     LAA1C                           ; AA17 30 03                    0.
        jmp     LCBD6                           ; AA19 4C D6 CB                 L..

; ----------------------------------------------------------------------------
LAA1C:
        .byte   $60                             ; AA1C 60                       `
; ----------------------------------------------------------------------------
LAA1D:
        ldy     #$02                            ; AA1D A0 02                    ..
LAA1F:
        sty     $08                             ; AA1F 84 08                    ..
        lda     $48                             ; AA21 A5 48                    .H
        and     $92ED,y                         ; AA23 39 ED 92                 9..
        bne     LAA2C                           ; AA26 D0 04                    ..
        dey                                     ; AA28 88                       .
        bpl     LAA1F                           ; AA29 10 F4                    ..
        rts                                     ; AA2B 60                       `

; ----------------------------------------------------------------------------
LAA2C:
        ldx     #$17                            ; AA2C A2 17                    ..
LAA2E:
        stx     $09                             ; AA2E 86 09                    ..
        ldy     $92F5,x                         ; AA30 BC F5 92                 ...
        lda     $930D,x                         ; AA33 BD 0D 93                 ...
        tax                                     ; AA36 AA                       .
        lda     $48,x                           ; AA37 B5 48                    .H
        and     $92ED,y                         ; AA39 39 ED 92                 9..
        bne     LAA4A                           ; AA3C D0 0C                    ..
LAA3E:
        ldx     $09                             ; AA3E A6 09                    ..
LAA40:
        dex                                     ; AA40 CA                       .
        cpx     #$0B                            ; AA41 E0 0B                    ..
        bcs     LAA2E                           ; AA43 B0 E9                    ..
        ldy     $08                             ; AA45 A4 08                    ..
        jmp     LCA28                           ; AA47 4C 28 CA                 L(.

; ----------------------------------------------------------------------------
LAA4A:
        ldx     $09                             ; AA4A A6 09                    ..
        lda     $0520,x                         ; AA4C BD 20 05                 . .
        and     #$03                            ; AA4F 29 03                    ).
        bne     LAA40                           ; AA51 D0 ED                    ..
        ldy     $08                             ; AA53 A4 08                    ..
        lda     $04F0,y                         ; AA55 B9 F0 04                 ...
        and     #$40                            ; AA58 29 40                    )@
        bne     LAA6F                           ; AA5A D0 13                    ..
        sec                                     ; AA5C 38                       8
        lda     $0550,x                         ; AA5D BD 50 05                 .P.
        sbc     $0610,x                         ; AA60 FD 10 06                 ...
        sec                                     ; AA63 38                       8
        sbc     $0550,y                         ; AA64 F9 50 05                 .P.
        cmp     #$20                            ; AA67 C9 20                    . 
        bcs     LAA3E                           ; AA69 B0 D3                    ..
        lda     #$08                            ; AA6B A9 08                    ..
        bcc     LAA84                           ; AA6D 90 15                    ..
LAA6F:
        clc                                     ; AA6F 18                       .
        lda     $0550,x                         ; AA70 BD 50 05                 .P.
        adc     $0610,x                         ; AA73 7D 10 06                 }..
        sta     $0A                             ; AA76 85 0A                    ..
        sec                                     ; AA78 38                       8
        lda     $0550,y                         ; AA79 B9 50 05                 .P.
        sbc     $0A                             ; AA7C E5 0A                    ..
        cmp     #$22                            ; AA7E C9 22                    ."
        bcs     LAA3E                           ; AA80 B0 BC                    ..
        lda     #$F8                            ; AA82 A9 F8                    ..
LAA84:
        sta     $0C                             ; AA84 85 0C                    ..
        sec                                     ; AA86 38                       8
        lda     $0580,y                         ; AA87 B9 80 05                 ...
        sbc     #$03                            ; AA8A E9 03                    ..
        sta     $0B                             ; AA8C 85 0B                    ..
        cmp     $0580,x                         ; AA8E DD 80 05                 ...
        bcs     LAAA0                           ; AA91 B0 0D                    ..
        sec                                     ; AA93 38                       8
        lda     $0580,x                         ; AA94 BD 80 05                 ...
        sbc     $0628,x                         ; AA97 FD 28 06                 .(.
        cmp     $0B                             ; AA9A C5 0B                    ..
        bcs     LAA3E                           ; AA9C B0 A0                    ..
        bcc     LAAAB                           ; AA9E 90 0B                    ..
LAAA0:
        clc                                     ; AAA0 18                       .
        lda     $0580,x                         ; AAA1 BD 80 05                 ...
        adc     $0628,x                         ; AAA4 7D 28 06                 }(.
        cmp     $0B                             ; AAA7 C5 0B                    ..
        bcc     LAA3E                           ; AAA9 90 93                    ..
LAAAB:
        lda     $0520,x                         ; AAAB BD 20 05                 . .
        and     #$20                            ; AAAE 29 20                    ) 
        sta     $08                             ; AAB0 85 08                    ..
        dec     $05F8,x                         ; AAB2 DE F8 05                 ...
        bne     LAAD1                           ; AAB5 D0 1A                    ..
        lda     $08                             ; AAB7 A5 08                    ..
        beq     LAABE                           ; AAB9 F0 03                    ..
        jmp     LCCBA                           ; AABB 4C BA CC                 L..

; ----------------------------------------------------------------------------
LAABE:
        lda     #$04                            ; AABE A9 04                    ..
        sta     $04D8,x                         ; AAC0 9D D8 04                 ...
        lda     #$22                            ; AAC3 A9 22                    ."
        sta     $0700                           ; AAC5 8D 00 07                 ...
        lda     $0688,x                         ; AAC8 BD 88 06                 ...
        jsr     L9D68                           ; AACB 20 68 9D                  h.
        jmp     LCA3E                           ; AACE 4C 3E CA                 L>.

; ----------------------------------------------------------------------------
LAAD1:
        lda     #$2F                            ; AAD1 A9 2F                    ./
        sta     $0700                           ; AAD3 8D 00 07                 ...
        lda     $08                             ; AAD6 A5 08                    ..
        beq     LAADD                           ; AAD8 F0 03                    ..
        dec     $81                             ; AADA C6 81                    ..
        rts                                     ; AADC 60                       `

; ----------------------------------------------------------------------------
LAADD:
        clc                                     ; AADD 18                       .
        lda     $0550,x                         ; AADE BD 50 05                 .P.
        adc     $0C                             ; AAE1 65 0C                    e.
        sta     $0550,x                         ; AAE3 9D 50 05                 .P.
        jmp     LCA3E                           ; AAE6 4C 3E CA                 L>.

; ----------------------------------------------------------------------------
        ldy     #$02                            ; AAE9 A0 02                    ..
LAAEB:
        sty     $08                             ; AAEB 84 08                    ..
        lda     $49                             ; AAED A5 49                    .I
        and     $92ED,y                         ; AAEF 39 ED 92                 9..
        bne     LAAF8                           ; AAF2 D0 04                    ..
        dey                                     ; AAF4 88                       .
        bpl     LAAEB                           ; AAF5 10 F4                    ..
        rts                                     ; AAF7 60                       `

; ----------------------------------------------------------------------------
LAAF8:
        ldx     #$17                            ; AAF8 A2 17                    ..
LAAFA:
        stx     $09                             ; AAFA 86 09                    ..
        ldy     $92F5,x                         ; AAFC BC F5 92                 ...
        lda     $930D,x                         ; AAFF BD 0D 93                 ...
        tax                                     ; AB02 AA                       .
        lda     $48,x                           ; AB03 B5 48                    .H
        and     $92ED,y                         ; AB05 39 ED 92                 9..
        bne     LAB16                           ; AB08 D0 0C                    ..
LAB0A:
        ldx     $09                             ; AB0A A6 09                    ..
LAB0C:
        dex                                     ; AB0C CA                       .
        cpx     #$0B                            ; AB0D E0 0B                    ..
        bcs     LAAFA                           ; AB0F B0 E9                    ..
        ldy     $08                             ; AB11 A4 08                    ..
        jmp     LCAF4                           ; AB13 4C F4 CA                 L..

; ----------------------------------------------------------------------------
LAB16:
        ldx     $09                             ; AB16 A6 09                    ..
        lda     $0520,x                         ; AB18 BD 20 05                 . .
        lsr     a                               ; AB1B 4A                       J
        bcs     LAB0C                           ; AB1C B0 EE                    ..
        lsr     a                               ; AB1E 4A                       J
        bcs     LAB0C                           ; AB1F B0 EB                    ..
        clc                                     ; AB21 18                       .
        lda     $0610,x                         ; AB22 BD 10 06                 ...
        adc     $C0                             ; AB25 65 C0                    e.
        sta     $0A                             ; AB27 85 0A                    ..
        lda     $08                             ; AB29 A5 08                    ..
        ora     #$08                            ; AB2B 09 08                    ..
        tay                                     ; AB2D A8                       .
        sec                                     ; AB2E 38                       8
        lda     $0550,x                         ; AB2F BD 50 05                 .P.
        sbc     $0550,y                         ; AB32 F9 50 05                 .P.
        sta     $0B                             ; AB35 85 0B                    ..
        bpl     LAB3E                           ; AB37 10 05                    ..
        eor     #$FF                            ; AB39 49 FF                    I.
        clc                                     ; AB3B 18                       .
        adc     #$01                            ; AB3C 69 01                    i.
LAB3E:
        cmp     $0A                             ; AB3E C5 0A                    ..
        bcs     LAB0A                           ; AB40 B0 C8                    ..
        clc                                     ; AB42 18                       .
        lda     $0628,x                         ; AB43 BD 28 06                 .(.
        adc     $C0                             ; AB46 65 C0                    e.
        sta     $0A                             ; AB48 85 0A                    ..
        sec                                     ; AB4A 38                       8
        lda     $0580,x                         ; AB4B BD 80 05                 ...
        sbc     $0580,y                         ; AB4E F9 80 05                 ...
        bpl     LAB58                           ; AB51 10 05                    ..
        eor     #$FF                            ; AB53 49 FF                    I.
        clc                                     ; AB55 18                       .
        adc     #$01                            ; AB56 69 01                    i.
LAB58:
        cmp     $0A                             ; AB58 C5 0A                    ..
        bcs     LAB0C                           ; AB5A B0 B0                    ..
        lda     #$2F                            ; AB5C A9 2F                    ./
        sta     $0700                           ; AB5E 8D 00 07                 ...
        lda     $0520,x                         ; AB61 BD 20 05                 . .
        and     #$20                            ; AB64 29 20                    ) 
        bne     LAB9C                           ; AB66 D0 34                    .4
        dec     $05F8,x                         ; AB68 DE F8 05                 ...
        bne     LAB7F                           ; AB6B D0 12                    ..
        lda     #$04                            ; AB6D A9 04                    ..
        sta     $04D8,x                         ; AB6F 9D D8 04                 ...
        lda     $0688,x                         ; AB72 BD 88 06                 ...
        jsr     L9D68                           ; AB75 20 68 9D                  h.
        lda     #$22                            ; AB78 A9 22                    ."
        sta     $0700                           ; AB7A 8D 00 07                 ...
        bne     LAB8E                           ; AB7D D0 0F                    ..
LAB7F:
        lda     #$08                            ; AB7F A9 08                    ..
        bit     $0B                             ; AB81 24 0B                    $.
        bpl     LAB87                           ; AB83 10 02                    ..
        lda     #$F8                            ; AB85 A9 F8                    ..
LAB87:
        clc                                     ; AB87 18                       .
        adc     $0550,x                         ; AB88 7D 50 05                 }P.
        sta     $0550,x                         ; AB8B 9D 50 05                 .P.
LAB8E:
        lda     $7D                             ; AB8E A5 7D                    .}
        cmp     #$00                            ; AB90 C9 00                    ..
        bne     LABD3                           ; AB92 D0 3F                    .?
LAB94:
        lda     $08                             ; AB94 A5 08                    ..
        ora     #$08                            ; AB96 09 08                    ..
        tay                                     ; AB98 A8                       .
        jmp     L9D55                           ; AB99 4C 55 9D                 LU.

; ----------------------------------------------------------------------------
LAB9C:
        lda     $7D                             ; AB9C A5 7D                    .}
        beq     LABAA                           ; AB9E F0 0A                    ..
        dec     $05F8,x                         ; ABA0 DE F8 05                 ...
        dec     $81                             ; ABA3 C6 81                    ..
        bne     LAB94                           ; ABA5 D0 ED                    ..
        jmp     LCCBA                           ; ABA7 4C BA CC                 L..

; ----------------------------------------------------------------------------
LABAA:
        .byte   $A5,$08,$09,$08,$AA,$20,$0E,$92 ; ABAA A5 08 09 08 AA 20 0E 92  ..... ..
        .byte   $18,$BD,$50,$05,$7D,$B0,$05,$9D ; ABB2 18 BD 50 05 7D B0 05 9D  ..P.}...
        .byte   $50,$05,$A5,$C1,$4A,$29,$03,$85 ; ABBA 50 05 A5 C1 4A 29 03 85  P...J)..
        .byte   $08,$29,$01,$A8,$B9,$D4,$CB,$05 ; ABC2 08 29 01 A8 B9 D4 CB 05  .)......
        .byte   $08,$9D,$E0,$05,$A9,$56,$8D,$00 ; ABCA 08 9D E0 05 A9 56 8D 00  .....V..
        .byte   $07                             ; ABD2 07                       .
; ----------------------------------------------------------------------------
LABD3:
        rts                                     ; ABD3 60                       `

; ----------------------------------------------------------------------------
        .byte   $00,$FC                         ; ABD4 00 FC                    ..
; ----------------------------------------------------------------------------
        lda     $68                             ; ABD6 A5 68                    .h
        ora     $BE                             ; ABD8 05 BE                    ..
        bne     LAC21                           ; ABDA D0 45                    .E
        lda     $49                             ; ABDC A5 49                    .I
        and     #$01                            ; ABDE 29 01                    ).
        ora     $7D                             ; ABE0 05 7D                    .}
        cmp     #$05                            ; ABE2 C9 05                    ..
        bcs     LAC21                           ; ABE4 B0 3B                    .;
        ldy     #$FF                            ; ABE6 A0 FF                    ..
        lda     #$08                            ; ABE8 A9 08                    ..
        cmp     $9E                             ; ABEA C5 9E                    ..
        beq     LABF7                           ; ABEC F0 09                    ..
        dey                                     ; ABEE 88                       .
        cmp     $9D                             ; ABEF C5 9D                    ..
        beq     LABF7                           ; ABF1 F0 04                    ..
        cmp     $9C                             ; ABF3 C5 9C                    ..
        bne     LAC07                           ; ABF5 D0 10                    ..
LABF7:
        sty     $41                             ; ABF7 84 41                    .A
        sec                                     ; ABF9 38                       8
        lda     $80                             ; ABFA A5 80                    ..
        sbc     #$03                            ; ABFC E9 03                    ..
        bpl     LAC02                           ; ABFE 10 02                    ..
        .byte   $A9,$00                         ; AC00 A9 00                    ..
; ----------------------------------------------------------------------------
LAC02:
        sta     $80                             ; AC02 85 80                    ..
        jmp     LCC70                           ; AC04 4C 70 CC                 Lp.

; ----------------------------------------------------------------------------
LAC07:
        ldy     #$17                            ; AC07 A0 17                    ..
LAC09:
        sty     $08                             ; AC09 84 08                    ..
        ldx     $92F5,y                         ; AC0B BE F5 92                 ...
        lda     $930D,y                         ; AC0E B9 0D 93                 ...
        tay                                     ; AC11 A8                       .
        lda     $48,y                           ; AC12 B9 48 00                 .H.
        and     $92ED,x                         ; AC15 3D ED 92                 =..
        bne     LAC22                           ; AC18 D0 08                    ..
LAC1A:
        ldy     $08                             ; AC1A A4 08                    ..
LAC1C:
        dey                                     ; AC1C 88                       .
        cpy     #$0B                            ; AC1D C0 0B                    ..
        bcs     LAC09                           ; AC1F B0 E8                    ..
LAC21:
        rts                                     ; AC21 60                       `

; ----------------------------------------------------------------------------
LAC22:
        ldy     $08                             ; AC22 A4 08                    ..
        lda     $0520,y                         ; AC24 B9 20 05                 . .
        lsr     a                               ; AC27 4A                       J
        bcs     LAC1C                           ; AC28 B0 F2                    ..
        clc                                     ; AC2A 18                       .
        lda     $0610,y                         ; AC2B B9 10 06                 ...
        adc     #$08                            ; AC2E 69 08                    i.
        sta     $09                             ; AC30 85 09                    ..
        sec                                     ; AC32 38                       8
        lda     $0550,y                         ; AC33 B9 50 05                 .P.
        sbc     $0550                           ; AC36 ED 50 05                 .P.
        sta     $41                             ; AC39 85 41                    .A
        bpl     LAC42                           ; AC3B 10 05                    ..
        eor     #$FF                            ; AC3D 49 FF                    I.
        clc                                     ; AC3F 18                       .
        adc     #$01                            ; AC40 69 01                    i.
LAC42:
        cmp     $09                             ; AC42 C5 09                    ..
        bcs     LAC1C                           ; AC44 B0 D6                    ..
        ldx     #$10                            ; AC46 A2 10                    ..
        lda     $0520                           ; AC48 AD 20 05                 . .
        and     #$02                            ; AC4B 29 02                    ).
        beq     LAC51                           ; AC4D F0 02                    ..
        ldx     #$0C                            ; AC4F A2 0C                    ..
LAC51:
        txa                                     ; AC51 8A                       .
        clc                                     ; AC52 18                       .
        adc     $0628,y                         ; AC53 79 28 06                 y(.
        sta     $09                             ; AC56 85 09                    ..
        sec                                     ; AC58 38                       8
        lda     $0580,y                         ; AC59 B9 80 05                 ...
        sbc     $0580                           ; AC5C ED 80 05                 ...
        bpl     LAC66                           ; AC5F 10 05                    ..
        eor     #$FF                            ; AC61 49 FF                    I.
        clc                                     ; AC63 18                       .
        adc     #$01                            ; AC64 69 01                    i.
LAC66:
        cmp     $09                             ; AC66 C5 09                    ..
        bcs     LAC1A                           ; AC68 B0 B0                    ..
        sec                                     ; AC6A 38                       8
        lda     $80                             ; AC6B A5 80                    ..
        sbc     $0670,y                         ; AC6D F9 70 06                 .p.
        beq     LAC7D                           ; AC70 F0 0B                    ..
        bmi     LAC7D                           ; AC72 30 09                    0.
        sta     $80                             ; AC74 85 80                    ..
        lda     #$21                            ; AC76 A9 21                    .!
        sta     $0700                           ; AC78 8D 00 07                 ...
        bne     LAC85                           ; AC7B D0 08                    ..
LAC7D:
        .byte   $A9,$00,$85,$80,$A9,$40,$85,$BE ; AC7D A9 00 85 80 A9 40 85 BE  .....@..
; ----------------------------------------------------------------------------
LAC85:
        lda     #$80                            ; AC85 A9 80                    ..
        sta     $68                             ; AC87 85 68                    .h
        lda     $04F0                           ; AC89 AD F0 04                 ...
        bit     $41                             ; AC8C 24 41                    $A
        bpl     LAC94                           ; AC8E 10 04                    ..
        ora     #$40                            ; AC90 09 40                    .@
        bne     LAC96                           ; AC92 D0 02                    ..
LAC94:
        and     #$BF                            ; AC94 29 BF                    ).
LAC96:
        sta     $04F0                           ; AC96 8D F0 04                 ...
        lda     $0520                           ; AC99 AD 20 05                 . .
        ora     #$40                            ; AC9C 09 40                    .@
        sta     $0520                           ; AC9E 8D 20 05                 . .
        lda     #$FD                            ; ACA1 A9 FD                    ..
        sta     $05E0                           ; ACA3 8D E0 05                 ...
        lda     $0520,y                         ; ACA6 B9 20 05                 . .
        and     #$10                            ; ACA9 29 10                    ).
        beq     LACB0                           ; ACAB F0 03                    ..
        jsr     L9D55                           ; ACAD 20 55 9D                  U.
LACB0:
        ldx     #$00                            ; ACB0 A2 00                    ..
        stx     $04C0                           ; ACB2 8E C0 04                 ...
        lda     #$08                            ; ACB5 A9 08                    ..
        jmp     L927D                           ; ACB7 4C 7D 92                 L}.

; ----------------------------------------------------------------------------
        lda     $069F                           ; ACBA AD 9F 06                 ...
        jsr     L9D68                           ; ACBD 20 68 9D                  h.
        lda     #$2A                            ; ACC0 A9 2A                    .*
        sta     $0700                           ; ACC2 8D 00 07                 ...
        lda     $49                             ; ACC5 A5 49                    .I
        and     #$07                            ; ACC7 29 07                    ).
        sta     $49                             ; ACC9 85 49                    .I
        lda     #$C0                            ; ACCB A9 C0                    ..
        sta     $4A                             ; ACCD 85 4A                    .J
        lda     #$83                            ; ACCF A9 83                    ..
        sta     $0536                           ; ACD1 8D 36 05                 .6.
        sta     $0537                           ; ACD4 8D 37 05                 .7.
        lda     $0567                           ; ACD7 AD 67 05                 .g.
        sta     $0566                           ; ACDA 8D 66 05                 .f.
        lda     $0597                           ; ACDD AD 97 05                 ...
        sta     $0596                           ; ACE0 8D 96 05                 ...
        ldx     #$01                            ; ACE3 A2 01                    ..
        lda     #$00                            ; ACE5 A9 00                    ..
        sta     $66                             ; ACE7 85 66                    .f
LACE9:
        sta     $05AE,x                         ; ACE9 9D AE 05                 ...
        sta     $05C6,x                         ; ACEC 9D C6 05                 ...
        sta     $05DE,x                         ; ACEF 9D DE 05                 ...
        sta     $05F6,x                         ; ACF2 9D F6 05                 ...
        dex                                     ; ACF5 CA                       .
        bpl     LACE9                           ; ACF6 10 F1                    ..
        sta     $81                             ; ACF8 85 81                    ..
        sta     $0506                           ; ACFA 8D 06 05                 ...
        sta     $04EE                           ; ACFD 8D EE 04                 ...
        sta     $04EF                           ; AD00 8D EF 04                 ...
        sta     $050E                           ; AD03 8D 0E 05                 ...
        lda     #$05                            ; AD06 A9 05                    ..
        sta     $050F                           ; AD08 8D 0F 05                 ...
        lda     #$80                            ; AD0B A9 80                    ..
        sta     $D0                             ; AD0D 85 D0                    ..
        lda     #$1D                            ; AD0F A9 1D                    ..
        sta     $1C                             ; AD11 85 1C                    ..
        ldx     #$16                            ; AD13 A2 16                    ..
        lda     #$23                            ; AD15 A9 23                    .#
        jmp     L927D                           ; AD17 4C 7D 92                 L}.

; ----------------------------------------------------------------------------
        lda     #$1E                            ; AD1A A9 1E                    ..
        sta     $11                             ; AD1C 85 11                    ..
        sta     $2001                           ; AD1E 8D 01 20                 .. 
        lda     #$A8                            ; AD21 A9 A8                    ..
        sta     $10                             ; AD23 85 10                    ..
        sta     $2000                           ; AD25 8D 00 20                 .. 
        jsr     L9BD9                           ; AD28 20 D9 9B                  ..
        lda     #$0C                            ; AD2B A9 0C                    ..
        sta     $26                             ; AD2D 85 26                    .&
        jsr     LD62C                           ; AD2F 20 2C D6                  ,.
        lda     #$00                            ; AD32 A9 00                    ..
        sta     $19                             ; AD34 85 19                    ..
        bit     $FFFF                           ; AD36 2C FF FF                 ,..
        jsr     L96B7                           ; AD39 20 B7 96                  ..
        jsr     L9FD3                           ; AD3C 20 D3 9F                  ..
        jsr     L9BD9                           ; AD3F 20 D9 9B                  ..
        jsr     L974A                           ; AD42 20 4A 97                  J.
        lda     $3F                             ; AD45 A5 3F                    .?
        eor     #$01                            ; AD47 49 01                    I.
        sta     $3F                             ; AD49 85 3F                    .?
        lda     $B6                             ; AD4B A5 B6                    ..
        asl     a                               ; AD4D 0A                       .
        tay                                     ; AD4E A8                       .
        lda     $CD5C,y                         ; AD4F B9 5C CD                 .\.
        sta     L004E                           ; AD52 85 4E                    .N
        lda     $CD5D,y                         ; AD54 B9 5D CD                 .].
        sta     $4F                             ; AD57 85 4F                    .O
        jmp     (L004E)                         ; AD59 6C 4E 00                 lN.

; ----------------------------------------------------------------------------
        .byte   $66,$CD,$7B,$CD,$95,$CD,$A7,$CD ; AD5C 66 CD 7B CD 95 CD A7 CD  f.{.....
        .byte   $AD,$CD                         ; AD64 AD CD                    ..
; ----------------------------------------------------------------------------
        lda     #$28                            ; AD66 A9 28                    .(
        sta     $AF                             ; AD68 85 AF                    ..
        lda     #$04                            ; AD6A A9 04                    ..
        sta     $A6                             ; AD6C 85 A6                    ..
        lda     #$00                            ; AD6E A9 00                    ..
        sta     $A7                             ; AD70 85 A7                    ..
        jsr     LCEC5                           ; AD72 20 C5 CE                  ..
        jsr     LCEB7                           ; AD75 20 B7 CE                  ..
        jmp     LCDC3                           ; AD78 4C C3 CD                 L..

; ----------------------------------------------------------------------------
        .byte   $A5,$4D,$F0,$13,$A9,$00,$85,$4D ; AD7B A5 4D F0 13 A9 00 85 4D  .M.....M
        .byte   $A5,$7E,$C9,$2D,$90,$07,$A9,$28 ; AD83 A5 7E C9 2D 90 07 A9 28  .~.-...(
        .byte   $85,$7E,$4C,$C3,$CD,$C6,$7E,$4C ; AD8B 85 7E 4C C3 CD C6 7E 4C  .~L...~L
        .byte   $C3,$CD,$A6,$7E,$BD,$40,$82,$4A ; AD93 C3 CD A6 7E BD 40 82 4A  ...~.@.J
        .byte   $4A,$85,$7E,$20,$C5,$CE,$20,$B7 ; AD9B 4A 85 7E 20 C5 CE 20 B7  J.~ .. .
        .byte   $CE,$4C,$C3,$CD                 ; ADA3 CE 4C C3 CD              .L..
; ----------------------------------------------------------------------------
        jsr     LCEB7                           ; ADA7 20 B7 CE                  ..
        jmp     LCDC3                           ; ADAA 4C C3 CD                 L..

; ----------------------------------------------------------------------------
        lda     $7E                             ; ADAD A5 7E                    .~
        cmp     #$2D                            ; ADAF C9 2D                    .-
        bcs     LADB7                           ; ADB1 B0 04                    ..
        cmp     #$1D                            ; ADB3 C9 1D                    ..
        bne     LADD2                           ; ADB5 D0 1B                    ..
LADB7:
        lda     $3F                             ; ADB7 A5 3F                    .?
        eor     #$01                            ; ADB9 49 01                    I.
        sta     $3F                             ; ADBB 85 3F                    .?
        jsr     L962E                           ; ADBD 20 2E 96                  ..
        jmp     LCDD2                           ; ADC0 4C D2 CD                 L..

; ----------------------------------------------------------------------------
        lda     #$10                            ; ADC3 A9 10                    ..
        sta     $80                             ; ADC5 85 80                    ..
        ldx     #$00                            ; ADC7 A2 00                    ..
        stx     $B4                             ; ADC9 86 B4                    ..
        stx     $7D                             ; ADCB 86 7D                    .}
        stx     $93                             ; ADCD 86 93                    ..
        inx                                     ; ADCF E8                       .
        stx     $4C                             ; ADD0 86 4C                    .L
LADD2:
        lda     #$3C                            ; ADD2 A9 3C                    .<
        sta     $B0                             ; ADD4 85 B0                    ..
        lda     #$FA                            ; ADD6 A9 FA                    ..
        sta     $B1                             ; ADD8 85 B1                    ..
        lda     #$00                            ; ADDA A9 00                    ..
        sta     $AB                             ; ADDC 85 AB                    ..
        lda     #$05                            ; ADDE A9 05                    ..
        sta     $AC                             ; ADE0 85 AC                    ..
        lda     #$02                            ; ADE2 A9 02                    ..
        sta     $AD                             ; ADE4 85 AD                    ..
        lda     #$10                            ; ADE6 A9 10                    ..
        sta     $81                             ; ADE8 85 81                    ..
        ldx     #$2D                            ; ADEA A2 2D                    .-
        ldy     #$2D                            ; ADEC A0 2D                    .-
        jsr     LCE44                           ; ADEE 20 44 CE                  D.
        ldx     #$09                            ; ADF1 A2 09                    ..
LADF3:
        ldy     $CE4F,x                         ; ADF3 BC 4F CE                 .O.
        lda     $A1,x                           ; ADF6 B5 A1                    ..
        sta     $03F0,y                         ; ADF8 99 F0 03                 ...
        dex                                     ; ADFB CA                       .
        bpl     LADF3                           ; ADFC 10 F5                    ..
        lda     $9B                             ; ADFE A5 9B                    ..
        and     #$07                            ; AE00 29 07                    ).
        sta     $0408                           ; AE02 8D 08 04                 ...
        lda     $9B                             ; AE05 A5 9B                    ..
        and     #$78                            ; AE07 29 78                    )x
        lsr     a                               ; AE09 4A                       J
        lsr     a                               ; AE0A 4A                       J
        lsr     a                               ; AE0B 4A                       J
        sta     $0406                           ; AE0C 8D 06 04                 ...
        jsr     L9BD5                           ; AE0F 20 D5 9B                  ..
        ldx     #$2F                            ; AE12 A2 2F                    ./
        ldy     #$5D                            ; AE14 A0 5D                    .]
        jsr     LCE44                           ; AE16 20 44 CE                  D.
        lda     $AD                             ; AE19 A5 AD                    ..
        sta     $03F9                           ; AE1B 8D F9 03                 ...
        lda     $AC                             ; AE1E A5 AC                    ..
        sta     $03FA                           ; AE20 8D FA 03                 ...
        lda     $AB                             ; AE23 A5 AB                    ..
        sta     $03FB                           ; AE25 8D FB 03                 ...
        jsr     L9BD5                           ; AE28 20 D5 9B                  ..
        lda     #$A8                            ; AE2B A9 A8                    ..
        sta     $10                             ; AE2D 85 10                    ..
        lda     #$C0                            ; AE2F A9 C0                    ..
        sta     $23                             ; AE31 85 23                    .#
        ldx     #$08                            ; AE33 A2 08                    ..
        stx     $19                             ; AE35 86 19                    ..
        inx                                     ; AE37 E8                       .
        stx     $1A                             ; AE38 86 1A                    ..
        lda     #$20                            ; AE3A A9 20                    . 
        sta     $89                             ; AE3C 85 89                    ..
        jsr     L9903                           ; AE3E 20 03 99                  ..
        jmp     LCED2                           ; AE41 4C D2 CE                 L..

; ----------------------------------------------------------------------------
LAE44:
        lda     $CE59,y                         ; AE44 B9 59 CE                 .Y.
        sta     $03F0,x                         ; AE47 9D F0 03                 ...
        dey                                     ; AE4A 88                       .
        dex                                     ; AE4B CA                       .
        bpl     LAE44                           ; AE4C 10 F6                    ..
        rts                                     ; AE4E 60                       `

; ----------------------------------------------------------------------------
        .byte   $0C,$0B,$0A,$09,$1C,$27,$26,$24 ; AE4F 0C 0B 0A 09 1C 27 26 24  .....'&$
        .byte   $23,$22,$1A,$23,$43,$15,$0B,$12 ; AE57 23 22 1A 23 43 15 0B 12  #".#C...
        .byte   $14,$0C,$18,$00,$00,$00,$00,$00 ; AE5F 14 0C 18 00 00 00 00 00  ........
        .byte   $00,$3F,$15,$16,$0A,$0D,$0C,$18 ; AE67 00 3F 15 16 0A 0D 0C 18  .?......
        .byte   $00,$18,$00,$3F,$13,$18,$00,$0D ; AE6F 00 18 00 3F 13 18 00 0D  ...?....
        .byte   $23,$83,$20,$18,$00,$01,$00,$21 ; AE77 23 83 20 18 00 01 00 21  #. ....!
        .byte   $00,$00,$00,$1E,$3C,$3C,$1F,$00 ; AE7F 00 00 00 1E 3C 3C 1F 00  ....<<..
        .byte   $1B,$23,$63,$16,$0E,$10,$0C,$14 ; AE87 1B 23 63 16 0E 10 0C 14  .#c.....
        .byte   $18,$02,$05,$00,$1C,$3C,$3C,$1D ; AE8F 18 02 05 00 1C 3C 3C 1D  .....<<.
        .byte   $11,$0E,$11,$0F,$0A,$18,$19,$19 ; AE97 11 0E 11 0F 0A 18 19 19  ........
        .byte   $19,$19,$19,$19,$19,$19,$0E,$23 ; AE9F 19 19 19 19 19 19 0E 23  .......#
        .byte   $90,$0C,$11,$0C,$10,$17,$18,$19 ; AEA7 90 0C 11 0C 10 17 18 19  ........
        .byte   $19,$19,$19,$19,$19,$19,$19,$00 ; AEAF 19 19 19 19 19 19 19 00  ........
; ----------------------------------------------------------------------------
        lda     #$0A                            ; AEB7 A9 0A                    ..
        sta     $AE                             ; AEB9 85 AE                    ..
        ldx     #$00                            ; AEBB A2 00                    ..
        stx     $A8                             ; AEBD 86 A8                    ..
        stx     $AA                             ; AEBF 86 AA                    ..
        inx                                     ; AEC1 E8                       .
        stx     $A9                             ; AEC2 86 A9                    ..
        rts                                     ; AEC4 60                       `

; ----------------------------------------------------------------------------
        ldx     #$02                            ; AEC5 A2 02                    ..
        stx     $A5                             ; AEC7 86 A5                    ..
        inx                                     ; AEC9 E8                       .
        lda     #$00                            ; AECA A9 00                    ..
LAECC:
        sta     $A1,x                           ; AECC 95 A1                    ..
        dex                                     ; AECE CA                       .
        bpl     LAECC                           ; AECF 10 FB                    ..
        rts                                     ; AED1 60                       `

; ----------------------------------------------------------------------------
        lda     #$01                            ; AED2 A9 01                    ..
        jsr     LC011                           ; AED4 20 11 C0                  ..
        ldx     $7E                             ; AED7 A6 7E                    .~
        lda     LA700,x                         ; AED9 BD 00 A7                 ...
        sta     $86                             ; AEDC 85 86                    ..
        lda     LA730,x                         ; AEDE BD 30 A7                 .0.
        sta     $87                             ; AEE1 85 87                    ..
        ldx     $7E                             ; AEE3 A6 7E                    .~
        lda     $8180,x                         ; AEE5 BD 80 81                 ...
        and     #$0F                            ; AEE8 29 0F                    ).
        sta     $7F                             ; AEEA 85 7F                    ..
        lda     $8180,x                         ; AEEC BD 80 81                 ...
        lsr     a                               ; AEEF 4A                       J
        lsr     a                               ; AEF0 4A                       J
        lsr     a                               ; AEF1 4A                       J
        lsr     a                               ; AEF2 4A                       J
        sta     $99                             ; AEF3 85 99                    ..
        lda     L8000,x                         ; AEF5 BD 00 80                 ...
        sta     $94                             ; AEF8 85 94                    ..
        lda     $8030,x                         ; AEFA BD 30 80                 .0.
        sta     $95                             ; AEFD 85 95                    ..
        lda     $8060,x                         ; AEFF BD 60 80                 .`.
        sta     $96                             ; AF02 85 96                    ..
        lda     $8090,x                         ; AF04 BD 90 80                 ...
        sta     $97                             ; AF07 85 97                    ..
        lda     $80C0,x                         ; AF09 BD C0 80                 ...
        and     #$7F                            ; AF0C 29 7F                    ).
        sta     $98                             ; AF0E 85 98                    ..
        lda     $80C0,x                         ; AF10 BD C0 80                 ...
        bpl     LAF1D                           ; AF13 10 08                    ..
        lda     #$80                            ; AF15 A9 80                    ..
        bmi     LAF2D                           ; AF17 30 14                    0.
        .byte   $3C,$0A,$04,$02                 ; AF19 3C 0A 04 02              <...
; ----------------------------------------------------------------------------
LAF1D:
        lda     $8210,x                         ; AF1D BD 10 82                 ...
        and     #$03                            ; AF20 29 03                    ).
        tay                                     ; AF22 A8                       .
        lda     $CF19,y                         ; AF23 B9 19 CF                 ...
        sta     $CD                             ; AF26 85 CD                    ..
        lda     $8210,x                         ; AF28 BD 10 82                 ...
        and     #$04                            ; AF2B 29 04                    ).
LAF2D:
        sta     $CC                             ; AF2D 85 CC                    ..
        lda     $8210,x                         ; AF2F BD 10 82                 ...
        lsr     a                               ; AF32 4A                       J
        lsr     a                               ; AF33 4A                       J
        lsr     a                               ; AF34 4A                       J
        jsr     L946C                           ; AF35 20 6C 94                  l.
        jsr     L9DC3                           ; AF38 20 C3 9D                  ..
        ldx     $7E                             ; AF3B A6 7E                    .~
        lda     $80F0,x                         ; AF3D BD F0 80                 ...
        and     #$38                            ; AF40 29 38                    )8
        lsr     a                               ; AF42 4A                       J
        tay                                     ; AF43 A8                       .
        adc     #$9C                            ; AF44 69 9C                    i.
        sta     $6A                             ; AF46 85 6A                    .j
        tya                                     ; AF48 98                       .
        lsr     a                               ; AF49 4A                       J
        tay                                     ; AF4A A8                       .
        adc     #$B0                            ; AF4B 69 B0                    i.
        sta     $70                             ; AF4D 85 70                    .p
        tya                                     ; AF4F 98                       .
        lsr     a                               ; AF50 4A                       J
        adc     #$BA                            ; AF51 69 BA                    i.
        sta     $6E                             ; AF53 85 6E                    .n
        lda     $80F0,x                         ; AF55 BD F0 80                 ...
        and     #$07                            ; AF58 29 07                    ).
        asl     a                               ; AF5A 0A                       .
        asl     a                               ; AF5B 0A                       .
        adc     #$80                            ; AF5C 69 80                    i.
        sta     $6C                             ; AF5E 85 6C                    .l
        lda     $8720,x                         ; AF60 BD 20 87                 . .
        sta     $BA                             ; AF63 85 BA                    ..
        lda     $8750,x                         ; AF65 BD 50 87                 .P.
        sta     $BB                             ; AF68 85 BB                    ..
        lda     $8780,x                         ; AF6A BD 80 87                 ...
        sta     $BC                             ; AF6D 85 BC                    ..
        lda     $87B0,x                         ; AF6F BD B0 87                 ...
        sta     $BD                             ; AF72 85 BD                    ..
        lda     $87E0,x                         ; AF74 BD E0 87                 ...
        sta     $C3                             ; AF77 85 C3                    ..
        lda     $8810,x                         ; AF79 BD 10 88                 ...
        sta     $C4                             ; AF7C 85 C4                    ..
        lda     $8840,x                         ; AF7E BD 40 88                 .@.
        sta     $C5                             ; AF81 85 C5                    ..
        lda     $8870,x                         ; AF83 BD 70 88                 .p.
        sta     $C6                             ; AF86 85 C6                    ..
        lda     $88A0,x                         ; AF88 BD A0 88                 ...
        sta     $C7                             ; AF8B 85 C7                    ..
        lda     $88D0,x                         ; AF8D BD D0 88                 ...
        sta     $C8                             ; AF90 85 C8                    ..
        lda     $82A0,x                         ; AF92 BD A0 82                 ...
        sta     $B9                             ; AF95 85 B9                    ..
        lda     $82D0,x                         ; AF97 BD D0 82                 ...
        sta     $C9                             ; AF9A 85 C9                    ..
        lda     $80F0,x                         ; AF9C BD F0 80                 ...
        and     #$80                            ; AF9F 29 80                    ).
        sta     $92                             ; AFA1 85 92                    ..
        eor     $B4                             ; AFA3 45 B4                    E.
        sta     $3D                             ; AFA5 85 3D                    .=
        bpl     LAFD7                           ; AFA7 10 2E                    ..
        lda     $7F                             ; AFA9 A5 7F                    ..
        sta     $3B                             ; AFAB 85 3B                    .;
        asl     a                               ; AFAD 0A                       .
        tay                                     ; AFAE A8                       .
        clc                                     ; AFAF 18                       .
        lda     $86                             ; AFB0 A5 86                    ..
        adc     $9B7A,y                         ; AFB2 79 7A 9B                 yz.
        sta     $86                             ; AFB5 85 86                    ..
        lda     $87                             ; AFB7 A5 87                    ..
        adc     $9B7B,y                         ; AFB9 79 7B 9B                 y{.
        sta     $87                             ; AFBC 85 87                    ..
        ldy     $B9                             ; AFBE A4 B9                    ..
        sty     $B7                             ; AFC0 84 B7                    ..
        dey                                     ; AFC2 88                       .
        sty     $B8                             ; AFC3 84 B8                    ..
        ldy     $C9                             ; AFC5 A4 C9                    ..
        sty     $CA                             ; AFC7 84 CA                    ..
        lda     #$69                            ; AFC9 A9 69                    .i
        sta     $8B                             ; AFCB 85 8B                    ..
        lda     #$1E                            ; AFCD A9 1E                    ..
        sta     $88                             ; AFCF 85 88                    ..
        lda     #$10                            ; AFD1 A9 10                    ..
        sta     $85                             ; AFD3 85 85                    ..
        bne     LAFE8                           ; AFD5 D0 11                    ..
LAFD7:
        ldy     #$FF                            ; AFD7 A0 FF                    ..
        sty     $B8                             ; AFD9 84 B8                    ..
        iny                                     ; AFDB C8                       .
        sty     $B7                             ; AFDC 84 B7                    ..
        sty     $CA                             ; AFDE 84 CA                    ..
        sty     $8B                             ; AFE0 84 8B                    ..
        sty     $3B                             ; AFE2 84 3B                    .;
        sty     $88                             ; AFE4 84 88                    ..
        sty     $85                             ; AFE6 84 85                    ..
LAFE8:
        lda     $81B0,x                         ; AFE8 BD B0 81                 ...
        bit     $B4                             ; AFEB 24 B4                    $.
        bpl     LAFF2                           ; AFED 10 03                    ..
        .byte   $BD,$E0,$81                     ; AFEF BD E0 81                 ...
; ----------------------------------------------------------------------------
LAFF2:
        pha                                     ; AFF2 48                       H
        lda     $8120,x                         ; AFF3 BD 20 81                 . .
        and     #$07                            ; AFF6 29 07                    ).
        tay                                     ; AFF8 A8                       .
        lda     $D25A,y                         ; AFF9 B9 5A D2                 .Z.
        sta     $34                             ; AFFC 85 34                    .4
        lda     $8120,x                         ; AFFE BD 20 81                 . .
        lsr     a                               ; B001 4A                       J
        lsr     a                               ; B002 4A                       J
        lsr     a                               ; B003 4A                       J
        asl     a                               ; B004 0A                       .
        clc                                     ; B005 18                       .
        adc     #$20                            ; B006 69 20                    i 
        sta     $18                             ; B008 85 18                    ..
        lda     $8270,x                         ; B00A BD 70 82                 .p.
        sta     $9B                             ; B00D 85 9B                    ..
        ldy     #$00                            ; B00F A0 00                    ..
        sty     $69                             ; B011 84 69                    .i
        sty     $6B                             ; B013 84 6B                    .k
        sty     $6D                             ; B015 84 6D                    .m
        sty     $82                             ; B017 84 82                    ..
        sty     $83                             ; B019 84 83                    ..
        sty     $84                             ; B01B 84 84                    ..
        sty     $39                             ; B01D 84 39                    .9
        sty     $66                             ; B01F 84 66                    .f
        sty     $3E                             ; B021 84 3E                    .>
        sty     $40                             ; B023 84 40                    .@
        sty     $5B                             ; B025 84 5B                    .[
        sty     $0598                           ; B027 8C 98 05                 ...
        sty     $17                             ; B02A 84 17                    ..
        lda     #$10                            ; B02C A9 10                    ..
        bit     $3D                             ; B02E 24 3D                    $=
        bpl     LB034                           ; B030 10 02                    ..
        lda     #$F0                            ; B032 A9 F0                    ..
LB034:
        sta     $05B0                           ; B034 8D B0 05                 ...
        lda     #$2F                            ; B037 A9 2F                    ./
        sta     $1F                             ; B039 85 1F                    ..
        lda     $7E                             ; B03B A5 7E                    .~
        cmp     #$05                            ; B03D C9 05                    ..
        bcc     LB049                           ; B03F 90 08                    ..
        cmp     #$09                            ; B041 C9 09                    ..
        bcs     LB049                           ; B043 B0 04                    ..
        lda     #$0F                            ; B045 A9 0F                    ..
        sta     $66                             ; B047 85 66                    .f
LB049:
        jsr     L9BD9                           ; B049 20 D9 9B                  ..
        ldx     #$0F                            ; B04C A2 0F                    ..
LB04E:
        txa                                     ; B04E 8A                       .
        pha                                     ; B04F 48                       H
        lda     #$01                            ; B050 A9 01                    ..
        jsr     LC011                           ; B052 20 11 C0                  ..
        jsr     L94A2                           ; B055 20 A2 94                  ..
        jsr     LC95B                           ; B058 20 5B C9                  [.
        jsr     L93CD                           ; B05B 20 CD 93                  ..
        jsr     L9442                           ; B05E 20 42 94                  B.
        jsr     L9E16                           ; B061 20 16 9E                  ..
        jsr     L9E24                           ; B064 20 24 9E                  $.
        jsr     L9BD9                           ; B067 20 D9 9B                  ..
        pla                                     ; B06A 68                       h
        tax                                     ; B06B AA                       .
        dex                                     ; B06C CA                       .
        bpl     LB04E                           ; B06D 10 DF                    ..
        lda     $7E                             ; B06F A5 7E                    .~
        cmp     #$04                            ; B071 C9 04                    ..
        beq     LB081                           ; B073 F0 0C                    ..
        cmp     #$0F                            ; B075 C9 0F                    ..
        beq     LB085                           ; B077 F0 0C                    ..
        lda     #$A8                            ; B079 A9 A8                    ..
        ldx     #$00                            ; B07B A2 00                    ..
        ldy     #$01                            ; B07D A0 01                    ..
        bne     LB08B                           ; B07F D0 0A                    ..
LB081:
        ldx     #$01                            ; B081 A2 01                    ..
        bne     LB087                           ; B083 D0 02                    ..
LB085:
        ldx     #$08                            ; B085 A2 08                    ..
LB087:
        lda     #$AA                            ; B087 A9 AA                    ..
        ldy     #$00                            ; B089 A0 00                    ..
LB08B:
        sta     $10                             ; B08B 85 10                    ..
        stx     $2E                             ; B08D 86 2E                    ..
        sty     $27                             ; B08F 84 27                    .'
        ldx     #$00                            ; B091 A2 00                    ..
        lda     #$07                            ; B093 A9 07                    ..
        jsr     L927D                           ; B095 20 7D 92                  }.
        ldx     #$17                            ; B098 A2 17                    ..
        lda     #$00                            ; B09A A9 00                    ..
LB09C:
        sta     $0598,x                         ; B09C 9D 98 05                 ...
        sta     $05B0,x                         ; B09F 9D B0 05                 ...
        sta     $05C8,x                         ; B0A2 9D C8 05                 ...
        sta     $05E0,x                         ; B0A5 9D E0 05                 ...
        sta     $04F0,x                         ; B0A8 9D F0 04                 ...
        dex                                     ; B0AB CA                       .
        bpl     LB09C                           ; B0AC 10 EE                    ..
        pla                                     ; B0AE 68                       h
        jsr     LD1E2                           ; B0AF 20 E2 D1                  ..
        ldx     #$1F                            ; B0B2 A2 1F                    ..
        lda     #$00                            ; B0B4 A9 00                    ..
LB0B6:
        sta     $0440,x                         ; B0B6 9D 40 04                 .@.
        dex                                     ; B0B9 CA                       .
        bpl     LB0B6                           ; B0BA 10 FA                    ..
        ldx     #$17                            ; B0BC A2 17                    ..
LB0BE:
        sta     $D8,x                           ; B0BE 95 D8                    ..
        dex                                     ; B0C0 CA                       .
        bpl     LB0BE                           ; B0C1 10 FB                    ..
        lda     #$00                            ; B0C3 A9 00                    ..
        sta     $3A                             ; B0C5 85 3A                    .:
        ldy     #$06                            ; B0C7 A0 06                    ..
LB0C9:
        lda     $D1DB,y                         ; B0C9 B9 DB D1                 ...
        sta     $03F0,y                         ; B0CC 99 F0 03                 ...
        dey                                     ; B0CF 88                       .
        bpl     LB0C9                           ; B0D0 10 F7                    ..
        lda     $9B                             ; B0D2 A5 9B                    ..
        and     #$07                            ; B0D4 29 07                    ).
        sta     $03F5                           ; B0D6 8D F5 03                 ...
        lda     $9B                             ; B0D9 A5 9B                    ..
        and     #$78                            ; B0DB 29 78                    )x
        lsr     a                               ; B0DD 4A                       J
        lsr     a                               ; B0DE 4A                       J
        lsr     a                               ; B0DF 4A                       J
        sta     $03F3                           ; B0E0 8D F3 03                 ...
        lda     #$80                            ; B0E3 A9 80                    ..
        sta     $16                             ; B0E5 85 16                    ..
        ldx     $7E                             ; B0E7 A6 7E                    .~
        cpx     #$28                            ; B0E9 E0 28                    .(
        bcc     LB103                           ; B0EB 90 16                    ..
        cpx     #$2D                            ; B0ED E0 2D                    .-
        bcs     LB103                           ; B0EF B0 12                    ..
        lda     $D1                             ; B0F1 A5 D1                    ..
        bne     LB112                           ; B0F3 D0 1D                    ..
        lda     $C1                             ; B0F5 A5 C1                    ..
        and     #$03                            ; B0F7 29 03                    ).
        tay                                     ; B0F9 A8                       .
        lda     $D0FF,y                         ; B0FA B9 FF D0                 ...
        bne     LB10D                           ; B0FD D0 0E                    ..
        .byte   $04,$05,$06,$19                 ; B0FF 04 05 06 19              ....
; ----------------------------------------------------------------------------
LB103:
        ldy     $8300,x                         ; B103 BC 00 83                 ...
        lda     $D26E,y                         ; B106 B9 6E D2                 .n.
        cmp     $D1                             ; B109 C5 D1                    ..
        beq     LB112                           ; B10B F0 05                    ..
LB10D:
        sta     $D1                             ; B10D 85 D1                    ..
        sta     $0700                           ; B10F 8D 00 07                 ...
LB112:
        lda     $48                             ; B112 A5 48                    .H
        and     #$0F                            ; B114 29 0F                    ).
        ora     #$09                            ; B116 09 09                    ..
        sta     $48                             ; B118 85 48                    .H
        lda     #$00                            ; B11A A9 00                    ..
        sta     $49                             ; B11C 85 49                    .I
        sta     $4A                             ; B11E 85 4A                    .J
        lda     #$6F                            ; B120 A9 6F                    .o
        sta     $0553                           ; B122 8D 53 05                 .S.
        lda     #$1F                            ; B125 A9 1F                    ..
        sta     $0583                           ; B127 8D 83 05                 ...
        jsr     L9E16                           ; B12A 20 16 9E                  ..
        jsr     L9E24                           ; B12D 20 24 9E                  $.
        jsr     L9BD9                           ; B130 20 D9 9B                  ..
        ldx     $7E                             ; B133 A6 7E                    .~
        lda     $8150,x                         ; B135 BD 50 81                 .P.
        and     #$0F                            ; B138 29 0F                    ).
        tay                                     ; B13A A8                       .
        lda     $D24A,y                         ; B13B B9 4A D2                 .J.
        sta     $1B                             ; B13E 85 1B                    ..
        lda     $8150,x                         ; B140 BD 50 81                 .P.
        lsr     a                               ; B143 4A                       J
        lsr     a                               ; B144 4A                       J
        lsr     a                               ; B145 4A                       J
        lsr     a                               ; B146 4A                       J
        tay                                     ; B147 A8                       .
        lda     $D24A,y                         ; B148 B9 4A D2                 .J.
        sta     $1C                             ; B14B 85 1C                    ..
        lda     $B4                             ; B14D A5 B4                    ..
        bne     LB174                           ; B14F D0 23                    .#
        ldx     $7E                             ; B151 A6 7E                    .~
        lda     $8240,x                         ; B153 BD 40 82                 .@.
        and     #$03                            ; B156 29 03                    ).
        beq     LB174                           ; B158 F0 1A                    ..
        cmp     #$02                            ; B15A C9 02                    ..
        beq     LB17D                           ; B15C F0 1F                    ..
        lda     $B6                             ; B15E A5 B6                    ..
        cmp     #$01                            ; B160 C9 01                    ..
        beq     LB174                           ; B162 F0 10                    ..
        lda     $89                             ; B164 A5 89                    ..
        and     #$04                            ; B166 29 04                    ).
        lsr     a                               ; B168 4A                       J
        lsr     a                               ; B169 4A                       J
        eor     #$01                            ; B16A 49 01                    I.
        sta     $3F                             ; B16C 85 3F                    .?
        jsr     L9743                           ; B16E 20 43 97                  C.
        jmp     LD1B3                           ; B171 4C B3 D1                 L..

; ----------------------------------------------------------------------------
LB174:
        jsr     L9FD3                           ; B174 20 D3 9F                  ..
        jsr     L9BD9                           ; B177 20 D9 9B                  ..
        jmp     LD1A9                           ; B17A 4C A9 D1                 L..

; ----------------------------------------------------------------------------
LB17D:
        lda     #$00                            ; B17D A9 00                    ..
        sta     $47                             ; B17F 85 47                    .G
        lda     $B2                             ; B181 A5 B2                    ..
        sta     $48                             ; B183 85 48                    .H
        jsr     LC56F                           ; B185 20 6F C5                  o.
        lda     $04EF                           ; B188 AD EF 04                 ...
        jsr     LC619                           ; B18B 20 19 C6                  ..
        lda     $47                             ; B18E A5 47                    .G
        sta     $0507                           ; B190 8D 07 05                 ...
        lda     $46                             ; B193 A5 46                    .F
        sta     $0537                           ; B195 8D 37 05                 .7.
        jsr     L9E24                           ; B198 20 24 9E                  $.
        jsr     L9FD3                           ; B19B 20 D3 9F                  ..
        lda     $89                             ; B19E A5 89                    ..
        lsr     a                               ; B1A0 4A                       J
        lsr     a                               ; B1A1 4A                       J
        sta     $3F                             ; B1A2 85 3F                    .?
        ldx     #$02                            ; B1A4 A2 02                    ..
        jsr     L9325                           ; B1A6 20 25 93                  %.
        lda     $89                             ; B1A9 A5 89                    ..
        and     #$04                            ; B1AB 29 04                    ).
        lsr     a                               ; B1AD 4A                       J
        lsr     a                               ; B1AE 4A                       J
        eor     #$01                            ; B1AF 49 01                    I.
        sta     $3F                             ; B1B1 85 3F                    .?
        jsr     LC739                           ; B1B3 20 39 C7                  9.
        lda     #$10                            ; B1B6 A9 10                    ..
        bit     $3D                             ; B1B8 24 3D                    $=
        bpl     LB1BE                           ; B1BA 10 02                    ..
        lda     #$F0                            ; B1BC A9 F0                    ..
LB1BE:
        sta     $05B0                           ; B1BE 8D B0 05                 ...
        lda     $3D                             ; B1C1 A5 3D                    .=
        asl     a                               ; B1C3 0A                       .
        rol     a                               ; B1C4 2A                       *
        eor     #$01                            ; B1C5 49 01                    I.
        sta     $0C                             ; B1C7 85 0C                    ..
LB1C9:
        jsr     LC95B                           ; B1C9 20 5B C9                  [.
        jsr     L9BD9                           ; B1CC 20 D9 9B                  ..
        dec     $0C                             ; B1CF C6 0C                    ..
        bpl     LB1C9                           ; B1D1 10 F6                    ..
        lda     #$00                            ; B1D3 A9 00                    ..
        sta     $05B0                           ; B1D5 8D B0 05                 ...
        sta     $8A                             ; B1D8 85 8A                    ..
        rts                                     ; B1DA 60                       `

; ----------------------------------------------------------------------------
        .byte   $03,$23,$56,$00,$18,$00,$00     ; B1DB 03 23 56 00 18 00 00     .#V....
; ----------------------------------------------------------------------------
        sta     $08                             ; B1E2 85 08                    ..
        lda     #$01                            ; B1E4 A9 01                    ..
        sta     $04F1                           ; B1E6 8D F1 04                 ...
        sta     $04F2                           ; B1E9 8D F2 04                 ...
        ldy     #$17                            ; B1EC A0 17                    ..
        bit     $9B                             ; B1EE 24 9B                    $.
        bpl     LB1FD                           ; B1F0 10 0B                    ..
LB1F2:
        lda     #$20                            ; B1F2 A9 20                    . 
        ora     $04F0,y                         ; B1F4 19 F0 04                 ...
        sta     $04F0,y                         ; B1F7 99 F0 04                 ...
        dey                                     ; B1FA 88                       .
        bpl     LB1F2                           ; B1FB 10 F5                    ..
LB1FD:
        lda     $08                             ; B1FD A5 08                    ..
        and     #$0F                            ; B1FF 29 0F                    ).
        tay                                     ; B201 A8                       .
        lda     $D262,y                         ; B202 B9 62 D2                 .b.
        sta     $0550                           ; B205 8D 50 05                 .P.
        sta     $0551                           ; B208 8D 51 05                 .Q.
        sta     $0552                           ; B20B 8D 52 05                 .R.
        lda     $08                             ; B20E A5 08                    ..
        and     #$F0                            ; B210 29 F0                    ).
        ora     #$08                            ; B212 09 08                    ..
        sta     $0580                           ; B214 8D 80 05                 ...
        lda     #$FF                            ; B217 A9 FF                    ..
        sta     $0581                           ; B219 8D 81 05                 ...
        sta     $0582                           ; B21C 8D 82 05                 ...
        lda     $92                             ; B21F A5 92                    ..
        lsr     a                               ; B221 4A                       J
        sta     $08                             ; B222 85 08                    ..
        ldy     #$02                            ; B224 A0 02                    ..
LB226:
        lda     $04F0,y                         ; B226 B9 F0 04                 ...
        and     #$BF                            ; B229 29 BF                    ).
        ora     $08                             ; B22B 05 08                    ..
        sta     $04F0,y                         ; B22D 99 F0 04                 ...
        dey                                     ; B230 88                       .
        bpl     LB226                           ; B231 10 F3                    ..
        ldy     #$3F                            ; B233 A0 3F                    .?
LB235:
        lda     $0550                           ; B235 AD 50 05                 .P.
        sta     $0100,y                         ; B238 99 00 01                 ...
        lda     #$FF                            ; B23B A9 FF                    ..
        sta     $0140,y                         ; B23D 99 40 01                 .@.
        lda     $04F1                           ; B240 AD F1 04                 ...
        sta     $0180,y                         ; B243 99 80 01                 ...
        dey                                     ; B246 88                       .
        bpl     LB235                           ; B247 10 EC                    ..
        rts                                     ; B249 60                       `

; ----------------------------------------------------------------------------
        .byte   $0C,$0E,$10,$11,$12,$13,$14,$15 ; B24A 0C 0E 10 11 12 13 14 15  ........
        .byte   $16,$17,$18,$19,$1A,$1B,$1C,$1D ; B252 16 17 18 19 1A 1B 1C 1D  ........
        .byte   $00,$1E,$0A,$22,$30,$50,$2C,$40 ; B25A 00 1E 0A 22 30 50 2C 40  ..."0P,@
        .byte   $40,$DB,$3B,$20,$30,$10,$28,$BB ; B262 40 DB 3B 20 30 10 28 BB  @.; 0.(.
        .byte   $9B,$50,$90,$80,$04,$05,$06,$07 ; B26A 9B 50 90 80 04 05 06 07  .P......
        .byte   $08,$09,$0A,$0B,$19             ; B272 08 09 0A 0B 19           .....
; ----------------------------------------------------------------------------
        bit     $2E                             ; B277 24 2E                    $.
        bmi     LB299                           ; B279 30 1E                    0.
        sta     $31                             ; B27B 85 31                    .1
        stx     $32                             ; B27D 86 32                    .2
        sty     $33                             ; B27F 84 33                    .3
        sta     $E000                           ; B281 8D 00 E0                 ...
        sta     $E001                           ; B284 8D 01 E0                 ...
        lda     $2E                             ; B287 A5 2E                    ..
        tax                                     ; B289 AA                       .
        asl     a                               ; B28A 0A                       .
        tay                                     ; B28B A8                       .
        lda     $D29C,y                         ; B28C B9 9C D2                 ...
        sta     L002F                           ; B28F 85 2F                    ./
        lda     $D29D,y                         ; B291 B9 9D D2                 ...
        sta     $30                             ; B294 85 30                    .0
        jmp     (L002F)                         ; B296 6C 2F 00                 l/.

; ----------------------------------------------------------------------------
LB299:
        jmp     LA003                           ; B299 4C 03 A0                 L..

; ----------------------------------------------------------------------------
        .byte   $B2,$D2,$DC,$D2,$0D,$D3,$28,$D3 ; B29C B2 D2 DC D2 0D D3 28 D3  ......(.
        .byte   $50,$D3,$73,$D3,$7D,$D3,$7D,$D3 ; B2A4 50 D3 73 D3 7D D3 7D D3  P.s.}.}.
        .byte   $A1,$D3,$D2,$D3,$F4,$D3         ; B2AC A1 D3 D2 D3 F4 D3        ......
; ----------------------------------------------------------------------------
        lda     ($00,x)                         ; B2B2 A1 00                    ..
        ldx     #$00                            ; B2B4 A2 00                    ..
        stx     LA000                           ; B2B6 8E 00 A0                 ...
        lda     $10                             ; B2B9 A5 10                    ..
        and     #$FE                            ; B2BB 29 FE                    ).
        ora     $3F                             ; B2BD 05 3F                    .?
        sta     $2000                           ; B2BF 8D 00 20                 .. 
        bit     $2002                           ; B2C2 2C 02 20                 ,. 
        lda     $3A                             ; B2C5 A5 3A                    .:
        sta     $2005                           ; B2C7 8D 05 20                 .. 
        lda     #$C0                            ; B2CA A9 C0                    ..
        sta     $2005                           ; B2CC 8D 05 20                 .. 
        lda     #$00                            ; B2CF A9 00                    ..
        sta     L8000                           ; B2D1 8D 00 80                 ...
        lda     $34                             ; B2D4 A5 34                    .4
        sta     $8001                           ; B2D6 8D 01 80                 ...
        jmp     LD409                           ; B2D9 4C 09 D4                 L..

; ----------------------------------------------------------------------------
        bit     $2002                           ; B2DC 2C 02 20                 ,. 
        lda     $35                             ; B2DF A5 35                    .5
        sta     $2005                           ; B2E1 8D 05 20                 .. 
        lda     #$C0                            ; B2E4 A9 C0                    ..
        sta     $2005                           ; B2E6 8D 05 20                 .. 
        lda     #$00                            ; B2E9 A9 00                    ..
        sta     L8000                           ; B2EB 8D 00 80                 ...
        lda     $34                             ; B2EE A5 34                    .4
        sta     $8001                           ; B2F0 8D 01 80                 ...
        lda     #$2F                            ; B2F3 A9 2F                    ./
        sta     LC000                           ; B2F5 8D 00 C0                 ...
        lda     #$01                            ; B2F8 A9 01                    ..
        sta     LA000                           ; B2FA 8D 00 A0                 ...
        clc                                     ; B2FD 18                       .
        lda     $38                             ; B2FE A5 38                    .8
        adc     #$80                            ; B300 69 80                    i.
        sta     $38                             ; B302 85 38                    .8
        bcc     LB308                           ; B304 90 02                    ..
        inc     $35                             ; B306 E6 35                    .5
LB308:
        ldx     #$02                            ; B308 A2 02                    ..
        jmp     LD40C                           ; B30A 4C 0C D4                 L..

; ----------------------------------------------------------------------------
        lda     #$10                            ; B30D A9 10                    ..
        sta     LC000                           ; B30F 8D 00 C0                 ...
        bit     $2002                           ; B312 2C 02 20                 ,. 
        lda     $36                             ; B315 A5 36                    .6
        sta     $2005                           ; B317 8D 05 20                 .. 
        lda     #$C0                            ; B31A A9 C0                    ..
        sta     $2005                           ; B31C 8D 05 20                 .. 
        inc     $36                             ; B31F E6 36                    .6
        inc     $36                             ; B321 E6 36                    .6
        ldx     #$03                            ; B323 A2 03                    ..
        jmp     LD40C                           ; B325 4C 0C D4                 L..

; ----------------------------------------------------------------------------
        lda     $10                             ; B328 A5 10                    ..
        and     #$FE                            ; B32A 29 FE                    ).
        ora     $3F                             ; B32C 05 3F                    .?
        sta     $2000                           ; B32E 8D 00 20                 .. 
        lda     #$55                            ; B331 A9 55                    .U
        sta     LC000                           ; B333 8D 00 C0                 ...
        cmp     ($00,x)                         ; B336 C1 00                    ..
        nop                                     ; B338 EA                       .
        bit     $2002                           ; B339 2C 02 20                 ,. 
        lda     $3A                             ; B33C A5 3A                    .:
        sta     $2005                           ; B33E 8D 05 20                 .. 
        lda     #$C0                            ; B341 A9 C0                    ..
        sta     $2005                           ; B343 8D 05 20                 .. 
        lda     #$00                            ; B346 A9 00                    ..
        sta     LA000                           ; B348 8D 00 A0                 ...
        ldx     #$04                            ; B34B A2 04                    ..
        jmp     LD40C                           ; B34D 4C 0C D4                 L..

; ----------------------------------------------------------------------------
        bit     $2002                           ; B350 2C 02 20                 ,. 
        lda     $37                             ; B353 A5 37                    .7
        sta     $2005                           ; B355 8D 05 20                 .. 
        lda     #$C0                            ; B358 A9 C0                    ..
        sta     $2005                           ; B35A 8D 05 20                 .. 
        lda     #$01                            ; B35D A9 01                    ..
        sta     LA000                           ; B35F 8D 00 A0                 ...
        lda     #$29                            ; B362 A9 29                    .)
        sta     LC000                           ; B364 8D 00 C0                 ...
        clc                                     ; B367 18                       .
        lda     $37                             ; B368 A5 37                    .7
        adc     #$07                            ; B36A 69 07                    i.
        sta     $37                             ; B36C 85 37                    .7
        ldx     #$05                            ; B36E A2 05                    ..
        jmp     LD40C                           ; B370 4C 0C D4                 L..

; ----------------------------------------------------------------------------
        lda     #$00                            ; B373 A9 00                    ..
        sta     LA000                           ; B375 8D 00 A0                 ...
        ldx     #$01                            ; B378 A2 01                    ..
        jmp     LD409                           ; B37A 4C 09 D4                 L..

; ----------------------------------------------------------------------------
        .byte   $A2,$82,$8E,$00,$80,$A0,$04,$8C ; B37D A2 82 8E 00 80 A0 04 8C  ........
        .byte   $01,$80,$E8,$8E,$00,$80,$C8,$8C ; B385 01 80 E8 8E 00 80 C8 8C  ........
        .byte   $01,$80,$2C,$02,$20,$A5,$3A,$8D ; B38D 01 80 2C 02 20 A5 3A 8D  ..,. .:.
        .byte   $05,$20,$A9,$00,$8D,$05,$20,$A2 ; B395 05 20 A9 00 8D 05 20 A2  . .... .
        .byte   $07,$4C,$09,$D4                 ; B39D 07 4C 09 D4              .L..
; ----------------------------------------------------------------------------
        lda     #$17                            ; B3A1 A9 17                    ..
        sta     LC000                           ; B3A3 8D 00 C0                 ...
        lda     #$01                            ; B3A6 A9 01                    ..
        sta     LA000                           ; B3A8 8D 00 A0                 ...
        clc                                     ; B3AB 18                       .
        lda     $35                             ; B3AC A5 35                    .5
        adc     #$40                            ; B3AE 69 40                    i@
        sta     $35                             ; B3B0 85 35                    .5
        bcc     LB3B6                           ; B3B2 90 02                    ..
        inc     $36                             ; B3B4 E6 36                    .6
LB3B6:
        bit     $2002                           ; B3B6 2C 02 20                 ,. 
        lda     $36                             ; B3B9 A5 36                    .6
        sta     $2005                           ; B3BB 8D 05 20                 .. 
        lda     #$C0                            ; B3BE A9 C0                    ..
        sta     $2005                           ; B3C0 8D 05 20                 .. 
        lda     #$00                            ; B3C3 A9 00                    ..
        sta     L8000                           ; B3C5 8D 00 80                 ...
        lda     $34                             ; B3C8 A5 34                    .4
        sta     $8001                           ; B3CA 8D 01 80                 ...
        ldx     #$09                            ; B3CD A2 09                    ..
        jmp     LD40C                           ; B3CF 4C 0C D4                 L..

; ----------------------------------------------------------------------------
        lda     #$37                            ; B3D2 A9 37                    .7
        sta     LC000                           ; B3D4 8D 00 C0                 ...
        bit     $2002                           ; B3D7 2C 02 20                 ,. 
        lda     $38                             ; B3DA A5 38                    .8
        sta     $2005                           ; B3DC 8D 05 20                 .. 
        lda     #$C0                            ; B3DF A9 C0                    ..
        sta     $2005                           ; B3E1 8D 05 20                 .. 
        clc                                     ; B3E4 18                       .
        lda     $37                             ; B3E5 A5 37                    .7
        adc     #$20                            ; B3E7 69 20                    i 
        sta     $37                             ; B3E9 85 37                    .7
        bcc     LB3EF                           ; B3EB 90 02                    ..
        inc     $38                             ; B3ED E6 38                    .8
LB3EF:
        ldx     #$0A                            ; B3EF A2 0A                    ..
        jmp     LD40C                           ; B3F1 4C 0C D4                 L..

; ----------------------------------------------------------------------------
        ldx     #$06                            ; B3F4 A2 06                    ..
LB3F6:
        dex                                     ; B3F6 CA                       .
        bne     LB3F6                           ; B3F7 D0 FD                    ..
        bit     $2002                           ; B3F9 2C 02 20                 ,. 
        stx     $2005                           ; B3FC 8E 05 20                 .. 
        lda     #$C0                            ; B3FF A9 C0                    ..
        sta     $2005                           ; B401 8D 05 20                 .. 
        stx     LA000                           ; B404 8E 00 A0                 ...
        ldx     #$08                            ; B407 A2 08                    ..
        sta     $E000                           ; B409 8D 00 E0                 ...
        stx     $2E                             ; B40C 86 2E                    ..
        lda     #$80                            ; B40E A9 80                    ..
        sta     $2D                             ; B410 85 2D                    .-
        lda     $24                             ; B412 A5 24                    .$
        sta     L8000                           ; B414 8D 00 80                 ...
        ldy     $33                             ; B417 A4 33                    .3
        ldx     $32                             ; B419 A6 32                    .2
        lda     $31                             ; B41B A5 31                    .1
        rti                                     ; B41D 40                       @

; ----------------------------------------------------------------------------
        ldx     $53                             ; B41E A6 53                    .S
        cpx     #$04                            ; B420 E0 04                    ..
        bcs     LB451                           ; B422 B0 2D                    .-
        rts                                     ; B424 60                       `

; ----------------------------------------------------------------------------
        lda     $47                             ; B425 A5 47                    .G
        and     #$04                            ; B427 29 04                    ).
        beq     LB42E                           ; B429 F0 03                    ..
        jmp     L9D16                           ; B42B 4C 16 9D                 L..

; ----------------------------------------------------------------------------
LB42E:
        lda     $46                             ; B42E A5 46                    .F
        and     #$20                            ; B430 29 20                    ) 
        beq     LB437                           ; B432 F0 03                    ..
        jmp     L9D16                           ; B434 4C 16 9D                 L..

; ----------------------------------------------------------------------------
LB437:
        ldy     $0640,x                         ; B437 BC 40 06                 .@.
        tya                                     ; B43A 98                       .
        and     #$07                            ; B43B 29 07                    ).
        tax                                     ; B43D AA                       .
        tya                                     ; B43E 98                       .
        lsr     a                               ; B43F 4A                       J
        lsr     a                               ; B440 4A                       J
        lsr     a                               ; B441 4A                       J
        tay                                     ; B442 A8                       .
        lda     $92ED,x                         ; B443 BD ED 92                 ...
        eor     #$FF                            ; B446 49 FF                    I.
        and     $D8,y                           ; B448 39 D8 00                 9..
        sta     $D8,y                           ; B44B 99 D8 00                 ...
        jmp     L9D16                           ; B44E 4C 16 9D                 L..

; ----------------------------------------------------------------------------
LB451:
        sec                                     ; B451 38                       8
        lda     $0598,x                         ; B452 BD 98 05                 ...
        sbc     $8C                             ; B455 E5 8C                    ..
        sta     $08                             ; B457 85 08                    ..
        lda     $05B0,x                         ; B459 BD B0 05                 ...
        sbc     $8D                             ; B45C E5 8D                    ..
        sta     $09                             ; B45E 85 09                    ..
        bpl     LB48B                           ; B460 10 29                    .)
        sec                                     ; B462 38                       8
        lda     #$00                            ; B463 A9 00                    ..
        sbc     $08                             ; B465 E5 08                    ..
        sta     $08                             ; B467 85 08                    ..
        lda     #$00                            ; B469 A9 00                    ..
        sbc     $09                             ; B46B E5 09                    ..
        sta     $09                             ; B46D 85 09                    ..
        sec                                     ; B46F 38                       8
        lda     $0538,x                         ; B470 BD 38 05                 .8.
        sbc     $08                             ; B473 E5 08                    ..
        sta     $0538,x                         ; B475 9D 38 05                 .8.
        lda     $0550,x                         ; B478 BD 50 05                 .P.
        sbc     $09                             ; B47B E5 09                    ..
        bcs     LB4A7                           ; B47D B0 28                    .(
        cpx     #$08                            ; B47F E0 08                    ..
        bcc     LB486                           ; B481 90 03                    ..
        jmp     L9D16                           ; B483 4C 16 9D                 L..

; ----------------------------------------------------------------------------
LB486:
        inc     $B8                             ; B486 E6 B8                    ..
        jmp     LD425                           ; B488 4C 25 D4                 L%.

; ----------------------------------------------------------------------------
LB48B:
        clc                                     ; B48B 18                       .
        lda     $0538,x                         ; B48C BD 38 05                 .8.
        adc     $08                             ; B48F 65 08                    e.
        sta     $0538,x                         ; B491 9D 38 05                 .8.
        lda     $0550,x                         ; B494 BD 50 05                 .P.
        adc     $09                             ; B497 65 09                    e.
        bcc     LB4A7                           ; B499 90 0C                    ..
        cpx     #$08                            ; B49B E0 08                    ..
        bcc     LB4A2                           ; B49D 90 03                    ..
        jmp     L9D16                           ; B49F 4C 16 9D                 L..

; ----------------------------------------------------------------------------
LB4A2:
        dec     $B7                             ; B4A2 C6 B7                    ..
        jmp     LD425                           ; B4A4 4C 25 D4                 L%.

; ----------------------------------------------------------------------------
LB4A7:
        sta     $0550,x                         ; B4A7 9D 50 05                 .P.
        bit     $46                             ; B4AA 24 46                    $F
        bvc     LB4C6                           ; B4AC 50 18                    P.
        lda     $05E0,x                         ; B4AE BD E0 05                 ...
        cmp     #$06                            ; B4B1 C9 06                    ..
        beq     LB4C6                           ; B4B3 F0 11                    ..
        clc                                     ; B4B5 18                       .
        lda     $05C8,x                         ; B4B6 BD C8 05                 ...
        adc     #$37                            ; B4B9 69 37                    i7
        sta     $05C8,x                         ; B4BB 9D C8 05                 ...
        lda     $05E0,x                         ; B4BE BD E0 05                 ...
        adc     #$00                            ; B4C1 69 00                    i.
        sta     $05E0,x                         ; B4C3 9D E0 05                 ...
LB4C6:
        clc                                     ; B4C6 18                       .
        lda     $0568,x                         ; B4C7 BD 68 05                 .h.
        adc     $05C8,x                         ; B4CA 7D C8 05                 }..
        sta     $0568,x                         ; B4CD 9D 68 05                 .h.
        lda     $0580,x                         ; B4D0 BD 80 05                 ...
        adc     $05E0,x                         ; B4D3 7D E0 05                 }..
        cmp     #$18                            ; B4D6 C9 18                    ..
        bcs     LB4DD                           ; B4D8 B0 03                    ..
        jmp     L9D16                           ; B4DA 4C 16 9D                 L..

; ----------------------------------------------------------------------------
LB4DD:
        cmp     #$F8                            ; B4DD C9 F8                    ..
        bcc     LB4EF                           ; B4DF 90 0E                    ..
        cpx     #$08                            ; B4E1 E0 08                    ..
        bcc     LB4E8                           ; B4E3 90 03                    ..
        jmp     L9D16                           ; B4E5 4C 16 9D                 L..

; ----------------------------------------------------------------------------
LB4E8:
        lda     $47                             ; B4E8 A5 47                    .G
        ora     #$04                            ; B4EA 09 04                    ..
        sta     $47                             ; B4EC 85 47                    .G
        rts                                     ; B4EE 60                       `

; ----------------------------------------------------------------------------
LB4EF:
        sta     $0580,x                         ; B4EF 9D 80 05                 ...
        rts                                     ; B4F2 60                       `

; ----------------------------------------------------------------------------
        sta     $28                             ; B4F3 85 28                    .(
        stx     $29                             ; B4F5 86 29                    .)
        sty     $2A                             ; B4F7 84 2A                    .*
        lda     #$00                            ; B4F9 A9 00                    ..
        sta     $2003                           ; B4FB 8D 03 20                 .. 
        lda     #$02                            ; B4FE A9 02                    ..
        sta     $4014                           ; B500 8D 14 40                 ..@
        lda     $16                             ; B503 A5 16                    ..
        beq     LB547                           ; B505 F0 40                    .@
        ldy     #$00                            ; B507 A0 00                    ..
LB509:
        lda     $03F0,y                         ; B509 B9 F0 03                 ...
        beq     LB538                           ; B50C F0 2A                    .*
        tax                                     ; B50E AA                       .
        bpl     LB518                           ; B50F 10 07                    ..
        and     #$7F                            ; B511 29 7F                    ).
        tax                                     ; B513 AA                       .
        lda     #$0C                            ; B514 A9 0C                    ..
        bne     LB51A                           ; B516 D0 02                    ..
LB518:
        lda     #$08                            ; B518 A9 08                    ..
LB51A:
        sta     $2000                           ; B51A 8D 00 20                 .. 
        iny                                     ; B51D C8                       .
        lda     $03F0,y                         ; B51E B9 F0 03                 ...
        sta     $2006                           ; B521 8D 06 20                 .. 
        iny                                     ; B524 C8                       .
        lda     $03F0,y                         ; B525 B9 F0 03                 ...
        sta     $2006                           ; B528 8D 06 20                 .. 
        iny                                     ; B52B C8                       .
LB52C:
        lda     $03F0,y                         ; B52C B9 F0 03                 ...
        sta     $2007                           ; B52F 8D 07 20                 .. 
        iny                                     ; B532 C8                       .
        dex                                     ; B533 CA                       .
        bne     LB52C                           ; B534 D0 F6                    ..
        beq     LB509                           ; B536 F0 D1                    ..
LB538:
        sta     $16                             ; B538 85 16                    ..
        bit     $2002                           ; B53A 2C 02 20                 ,. 
        lda     #$3F                            ; B53D A9 3F                    .?
        sta     $2006                           ; B53F 8D 06 20                 .. 
        lda     #$00                            ; B542 A9 00                    ..
        sta     $2006                           ; B544 8D 06 20                 .. 
LB547:
        sta     $2006                           ; B547 8D 06 20                 .. 
        sta     $2006                           ; B54A 8D 06 20                 .. 
        lda     $11                             ; B54D A5 11                    ..
        sta     $2001                           ; B54F 8D 01 20                 .. 
        lda     $10                             ; B552 A5 10                    ..
        sta     $2000                           ; B554 8D 00 20                 .. 
        bit     $2002                           ; B557 2C 02 20                 ,. 
        lda     $21                             ; B55A A5 21                    .!
        sta     $2005                           ; B55C 8D 05 20                 .. 
        lda     $23                             ; B55F A5 23                    .#
        sta     $2005                           ; B561 8D 05 20                 .. 
        lda     $27                             ; B564 A5 27                    .'
        sta     LA000                           ; B566 8D 00 A0                 ...
        lda     $1F                             ; B569 A5 1F                    ..
        beq     LB577                           ; B56B F0 0A                    ..
        sta     LC000                           ; B56D 8D 00 C0                 ...
        sta     $C001                           ; B570 8D 01 C0                 ...
        sta     $E001                           ; B573 8D 01 E0                 ...
        cli                                     ; B576 58                       X
LB577:
        lda     $25                             ; B577 A5 25                    .%
        sta     L8000                           ; B579 8D 00 80                 ...
        lda     $17                             ; B57C A5 17                    ..
        sta     $8001                           ; B57E 8D 01 80                 ...
        lda     $25                             ; B581 A5 25                    .%
        ora     #$01                            ; B583 09 01                    ..
        sta     L8000                           ; B585 8D 00 80                 ...
        lda     $18                             ; B588 A5 18                    ..
        sta     $8001                           ; B58A 8D 01 80                 ...
        lda     $25                             ; B58D A5 25                    .%
        ora     #$02                            ; B58F 09 02                    ..
        sta     L8000                           ; B591 8D 00 80                 ...
        lda     $19                             ; B594 A5 19                    ..
        sta     $8001                           ; B596 8D 01 80                 ...
        lda     $25                             ; B599 A5 25                    .%
        ora     #$03                            ; B59B 09 03                    ..
        sta     L8000                           ; B59D 8D 00 80                 ...
        lda     $1A                             ; B5A0 A5 1A                    ..
        sta     $8001                           ; B5A2 8D 01 80                 ...
        lda     $25                             ; B5A5 A5 25                    .%
        ora     #$04                            ; B5A7 09 04                    ..
        sta     L8000                           ; B5A9 8D 00 80                 ...
        lda     $1B                             ; B5AC A5 1B                    ..
        sta     $8001                           ; B5AE 8D 01 80                 ...
        lda     $25                             ; B5B1 A5 25                    .%
        ora     #$05                            ; B5B3 09 05                    ..
        sta     L8000                           ; B5B5 8D 00 80                 ...
        lda     $1C                             ; B5B8 A5 1C                    ..
        sta     $8001                           ; B5BA 8D 01 80                 ...
        lda     $25                             ; B5BD A5 25                    .%
        ora     #$06                            ; B5BF 09 06                    ..
        tax                                     ; B5C1 AA                       .
        stx     L8000                           ; B5C2 8E 00 80                 ...
        ldy     #$0B                            ; B5C5 A0 0B                    ..
        sty     $8001                           ; B5C7 8C 01 80                 ...
        inx                                     ; B5CA E8                       .
        stx     L8000                           ; B5CB 8E 00 80                 ...
        lda     $26                             ; B5CE A5 26                    .&
        sta     $8001                           ; B5D0 8D 01 80                 ...
        jsr     L8000                           ; B5D3 20 00 80                  ..
        asl     $2D                             ; B5D6 06 2D                    .-
LB5D8:
        lda     $25                             ; B5D8 A5 25                    .%
        ora     #$06                            ; B5DA 09 06                    ..
        tax                                     ; B5DC AA                       .
        stx     L8000                           ; B5DD 8E 00 80                 ...
        lda     $1D                             ; B5E0 A5 1D                    ..
        sta     $8001                           ; B5E2 8D 01 80                 ...
        inx                                     ; B5E5 E8                       .
        stx     L8000                           ; B5E6 8E 00 80                 ...
        lda     $1E                             ; B5E9 A5 1E                    ..
        sta     $8001                           ; B5EB 8D 01 80                 ...
        asl     $2D                             ; B5EE 06 2D                    .-
        bcs     LB5D8                           ; B5F0 B0 E6                    ..
        jsr     LC941                           ; B5F2 20 41 C9                  A.
        lda     $12                             ; B5F5 A5 12                    ..
        sta     $2C                             ; B5F7 85 2C                    .,
        jsr     LC941                           ; B5F9 20 41 C9                  A.
        lda     $12                             ; B5FC A5 12                    ..
        cmp     $2C                             ; B5FE C5 2C                    .,
        beq     LB606                           ; B600 F0 04                    ..
        .byte   $A5,$14,$85,$12                 ; B602 A5 14 85 12              ....
; ----------------------------------------------------------------------------
LB606:
        tay                                     ; B606 A8                       .
        eor     $14                             ; B607 45 14                    E.
        and     $12                             ; B609 25 12                    %.
        sta     $13                             ; B60B 85 13                    ..
        sty     $14                             ; B60D 84 14                    ..
        jmp     LD618                           ; B60F 4C 18 D6                 L..

; ----------------------------------------------------------------------------
        .byte   $30,$D0,$03,$6C,$FC,$FF         ; B612 30 D0 03 6C FC FF        0..l..
; ----------------------------------------------------------------------------
        lda     #$80                            ; B618 A9 80                    ..
        sta     $15                             ; B61A 85 15                    ..
        inc     $C1                             ; B61C E6 C1                    ..
        lda     $24                             ; B61E A5 24                    .$
        ora     $25                             ; B620 05 25                    .%
        sta     L8000                           ; B622 8D 00 80                 ...
        ldy     $2A                             ; B625 A4 2A                    .*
        ldx     $29                             ; B627 A6 29                    .)
        lda     $28                             ; B629 A5 28                    .(
        rti                                     ; B62B 40                       @

; ----------------------------------------------------------------------------
        jsr     L968A                           ; B62C 20 8A 96                  ..
        lda     #$7F                            ; B62F A9 7F                    ..
        jsr     L95EA                           ; B631 20 EA 95                  ..
        jsr     L9E16                           ; B634 20 16 9E                  ..
        lda     #$10                            ; B637 A9 10                    ..
        sta     $56                             ; B639 85 56                    .V
        lda     #$01                            ; B63B A9 01                    ..
        jsr     LC011                           ; B63D 20 11 C0                  ..
        lda     #$00                            ; B640 A9 00                    ..
        jsr     L946C                           ; B642 20 6C 94                  l.
        lda     #$1A                            ; B645 A9 1A                    ..
        sta     $5B                             ; B647 85 5B                    .[
        ldx     #$3C                            ; B649 A2 3C                    .<
        jsr     LD78F                           ; B64B 20 8F D7                  ..
        lda     #$04                            ; B64E A9 04                    ..
        sta     $17                             ; B650 85 17                    ..
        lda     #$06                            ; B652 A9 06                    ..
        sta     $18                             ; B654 85 18                    ..
        ldx     #$4E                            ; B656 A2 4E                    .N
        stx     $93                             ; B658 86 93                    ..
        ldx     #$0A                            ; B65A A2 0A                    ..
        stx     $94                             ; B65C 86 94                    ..
        inx                                     ; B65E E8                       .
        stx     $95                             ; B65F 86 95                    ..
        ldx     #$10                            ; B661 A2 10                    ..
        stx     $96                             ; B663 86 96                    ..
        jsr     L9DC3                           ; B665 20 C3 9D                  ..
        ldx     #$08                            ; B668 A2 08                    ..
        jsr     L9B9A                           ; B66A 20 9A 9B                  ..
        jsr     L9743                           ; B66D 20 43 97                  C.
        ldx     #$00                            ; B670 A2 00                    ..
        jsr     LD78F                           ; B672 20 8F D7                  ..
        .byte   $20,$4A,$97,$A9,$7F,$20,$EA,$95 ; B675 20 4A 97 A9 7F 20 EA 95   J... ..
        .byte   $A2,$3C,$20,$8F,$D7,$A2,$09,$20 ; B67D A2 3C 20 8F D7 A2 09 20  .< .... 
        .byte   $9A,$9B,$20,$43,$97,$A2,$00,$20 ; B685 9A 9B 20 43 97 A2 00 20  .. C... 
        .byte   $8F,$D7,$20,$4A,$97,$A2,$3C,$20 ; B68D 8F D7 20 4A 97 A2 3C 20  .. J..< 
        .byte   $8F,$D7,$20,$20,$C8             ; B695 8F D7 20 20 C8           ..  .
; ----------------------------------------------------------------------------
        lda     #$36                            ; B69A A9 36                    .6
        sta     $0700                           ; B69C 8D 00 07                 ...
        jsr     L968A                           ; B69F 20 8A 96                  ..
        jsr     L9BD9                           ; B6A2 20 D9 9B                  ..
        lda     #$3C                            ; B6A5 A9 3C                    .<
        jsr     L95EA                           ; B6A7 20 EA 95                  ..
        ldx     #$48                            ; B6AA A2 48                    .H
        stx     $17                             ; B6AC 86 17                    ..
        ldx     #$4A                            ; B6AE A2 4A                    .J
        stx     $18                             ; B6B0 86 18                    ..
        stx     $1B                             ; B6B2 86 1B                    ..
        inx                                     ; B6B4 E8                       .
        stx     $1C                             ; B6B5 86 1C                    ..
        ldx     #$00                            ; B6B7 A2 00                    ..
        stx     $25                             ; B6B9 86 25                    .%
        stx     $CB                             ; B6BB 86 CB                    ..
        ldx     #$09                            ; B6BD A2 09                    ..
        stx     $93                             ; B6BF 86 93                    ..
        ldx     #$22                            ; B6C1 A2 22                    ."
        stx     $94                             ; B6C3 86 94                    ..
        inx                                     ; B6C5 E8                       .
        stx     $95                             ; B6C6 86 95                    ..
        ldx     #$4F                            ; B6C8 A2 4F                    .O
        stx     $96                             ; B6CA 86 96                    ..
        stx     $97                             ; B6CC 86 97                    ..
        jsr     L9DC3                           ; B6CE 20 C3 9D                  ..
        ldx     #$02                            ; B6D1 A2 02                    ..
        jsr     L9B9A                           ; B6D3 20 9A 9B                  ..
        ldx     #$03                            ; B6D6 A2 03                    ..
        jsr     L9B9A                           ; B6D8 20 9A 9B                  ..
        ldx     #$04                            ; B6DB A2 04                    ..
        jsr     L9B9A                           ; B6DD 20 9A 9B                  ..
        ldx     #$05                            ; B6E0 A2 05                    ..
        jsr     L9B9A                           ; B6E2 20 9A 9B                  ..
        ldx     #$06                            ; B6E5 A2 06                    ..
        jsr     L9B9A                           ; B6E7 20 9A 9B                  ..
        ldx     #$07                            ; B6EA A2 07                    ..
        jsr     L9B9A                           ; B6EC 20 9A 9B                  ..
        lda     #$03                            ; B6EF A9 03                    ..
        sta     $48                             ; B6F1 85 48                    .H
        lda     #$4B                            ; B6F3 A9 4B                    .K
        sta     $04A8                           ; B6F5 8D A8 04                 ...
        lda     #$40                            ; B6F8 A9 40                    .@
        sta     $04F0                           ; B6FA 8D F0 04                 ...
        lda     #$F8                            ; B6FD A9 F8                    ..
        sta     $0550                           ; B6FF 8D 50 05                 .P.
        lda     #$50                            ; B702 A9 50                    .P
        sta     $0580                           ; B704 8D 80 05                 ...
        sta     $0581                           ; B707 8D 81 05                 ...
        lda     #$4C                            ; B70A A9 4C                    .L
        sta     $04A9                           ; B70C 8D A9 04                 ...
        lda     #$10                            ; B70F A9 10                    ..
        sta     $0551                           ; B711 8D 51 05                 .Q.
        jsr     L9E24                           ; B714 20 24 9E                  $.
        jsr     L9E24                           ; B717 20 24 9E                  $.
        jsr     L9743                           ; B71A 20 43 97                  C.
        lda     #$00                            ; B71D A9 00                    ..
        sta     $E1                             ; B71F 85 E1                    ..
LB721:
        jsr     L9BD9                           ; B721 20 D9 9B                  ..
        lda     #$01                            ; B724 A9 01                    ..
        jsr     LC011                           ; B726 20 11 C0                  ..
        jsr     L94A2                           ; B729 20 A2 94                  ..
        jsr     L9E16                           ; B72C 20 16 9E                  ..
        jsr     L9E24                           ; B72F 20 24 9E                  $.
        lda     $12                             ; B732 A5 12                    ..
        cmp     #$FA                            ; B734 C9 FA                    ..
        beq     LB75D                           ; B736 F0 25                    .%
        lda     $13                             ; B738 A5 13                    ..
        and     #$10                            ; B73A 29 10                    ).
        bne     LB751                           ; B73C D0 13                    ..
        dec     $E1                             ; B73E C6 E1                    ..
        bne     LB721                           ; B740 D0 DF                    ..
        .byte   $20,$4A,$97,$E6,$E0,$A9,$00,$85 ; B742 20 4A 97 E6 E0 A9 00 85   J......
        .byte   $1F,$8D,$00,$E0,$4C,$2C,$D6     ; B74A 1F 8D 00 E0 4C 2C D6     ....L,.
; ----------------------------------------------------------------------------
LB751:
        lda     #$00                            ; B751 A9 00                    ..
        sta     $48                             ; B753 85 48                    .H
        jsr     L974A                           ; B755 20 4A 97                  J.
        inc     $CB                             ; B758 E6 CB                    ..
        jmp     LC820                           ; B75A 4C 20 C8                 L .

; ----------------------------------------------------------------------------
LB75D:
        .byte   $20,$4A,$97,$A5,$E0,$29,$03,$F0 ; B75D 20 4A 97 A5 E0 29 03 F0   J...)..
        .byte   $0A,$C9,$01,$F0,$10,$20,$B3,$DD ; B765 0A C9 01 F0 10 20 B3 DD  ..... ..
        .byte   $4C,$81,$D7,$A9,$10,$85,$CB,$20 ; B76D 4C 81 D7 A9 10 85 CB 20  L...... 
        .byte   $20,$C8,$4C,$81,$D7,$A9,$11,$85 ; B775 20 C8 4C 81 D7 A9 11 85   .L.....
        .byte   $CB,$20,$20,$C8,$A9,$01,$8D,$00 ; B77D CB 20 20 C8 A9 01 8D 00  .  .....
        .byte   $07,$20,$4A,$97,$20,$16,$9E,$4C ; B785 07 20 4A 97 20 16 9E 4C  . J. ..L
        .byte   $9A,$D6                         ; B78D 9A D6                    ..
; ----------------------------------------------------------------------------
LB78F:
        jsr     L9BD9                           ; B78F 20 D9 9B                  ..
        lda     $12                             ; B792 A5 12                    ..
        and     #$10                            ; B794 29 10                    ).
        bne     LB79C                           ; B796 D0 04                    ..
        dex                                     ; B798 CA                       .
        bne     LB78F                           ; B799 D0 F4                    ..
        rts                                     ; B79B 60                       `

; ----------------------------------------------------------------------------
LB79C:
        pla                                     ; B79C 68                       h
        pla                                     ; B79D 68                       h
        jmp     LD69A                           ; B79E 4C 9A D6                 L..

; ----------------------------------------------------------------------------
        bit     $0520                           ; B7A1 2C 20 05                 , .
        bvc     LB7BE                           ; B7A4 50 18                    P.
        lda     $05E0                           ; B7A6 AD E0 05                 ...
        cmp     #$07                            ; B7A9 C9 07                    ..
        beq     LB7BE                           ; B7AB F0 11                    ..
        clc                                     ; B7AD 18                       .
        lda     $05C8                           ; B7AE AD C8 05                 ...
        adc     #$37                            ; B7B1 69 37                    i7
        sta     $05C8                           ; B7B3 8D C8 05                 ...
        lda     $05E0                           ; B7B6 AD E0 05                 ...
        adc     #$00                            ; B7B9 69 00                    i.
        sta     $05E0                           ; B7BB 8D E0 05                 ...
LB7BE:
        clc                                     ; B7BE 18                       .
        lda     $0568                           ; B7BF AD 68 05                 .h.
        adc     $05C8                           ; B7C2 6D C8 05                 m..
        sta     $0568                           ; B7C5 8D 68 05                 .h.
        lda     $0580                           ; B7C8 AD 80 05                 ...
        adc     $05E0                           ; B7CB 6D E0 05                 m..
        bit     $BF                             ; B7CE 24 BF                    $.
        bmi     LB7DF                           ; B7D0 30 0D                    0.
        cmp     #$F8                            ; B7D2 C9 F8                    ..
        bcc     LB7DF                           ; B7D4 90 09                    ..
        .byte   $A9,$FF,$8D,$80,$05,$A2,$80,$86 ; B7D6 A9 FF 8D 80 05 A2 80 86  ........
        .byte   $BE                             ; B7DE BE                       .
; ----------------------------------------------------------------------------
LB7DF:
        sta     $0580                           ; B7DF 8D 80 05                 ...
        jsr     LC2A7                           ; B7E2 20 A7 C2                  ..
        lda     $BE                             ; B7E5 A5 BE                    ..
        beq     LB7F1                           ; B7E7 F0 08                    ..
        .byte   $AD,$C0,$04,$29,$F5,$8D,$C0,$04 ; B7E9 AD C0 04 29 F5 8D C0 04  ...)....
; ----------------------------------------------------------------------------
LB7F1:
        ldx     #$00                            ; B7F1 A2 00                    ..
        stx     $53                             ; B7F3 86 53                    .S
        jsr     L9548                           ; B7F5 20 48 95                  H.
        bit     $68                             ; B7F8 24 68                    $h
        bmi     LB816                           ; B7FA 30 1A                    0.
        lda     $04C0                           ; B7FC AD C0 04                 ...
        and     #$0A                            ; B7FF 29 0A                    ).
        bne     LB832                           ; B801 D0 2F                    ./
        lda     $12                             ; B803 A5 12                    ..
        and     #$0F                            ; B805 29 0F                    ).
        asl     a                               ; B807 0A                       .
        tay                                     ; B808 A8                       .
        lda     $DA13,y                         ; B809 B9 13 DA                 ...
        sta     L004E                           ; B80C 85 4E                    .N
        lda     $DA14,y                         ; B80E B9 14 DA                 ...
        sta     $4F                             ; B811 85 4F                    .O
        jmp     (L004E)                         ; B813 6C 4E 00                 lN.

; ----------------------------------------------------------------------------
LB816:
        rts                                     ; B816 60                       `

; ----------------------------------------------------------------------------
LB817:
        lda     $0520                           ; B817 AD 20 05                 . .
        ora     #$70                            ; B81A 09 70                    .p
        sta     $0520                           ; B81C 8D 20 05                 . .
        lda     $04F0                           ; B81F AD F0 04                 ...
        eor     #$40                            ; B822 49 40                    I@
        sta     $04F0                           ; B824 8D F0 04                 ...
        lda     #$80                            ; B827 A9 80                    ..
        sta     $04C0                           ; B829 8D C0 04                 ...
        lda     #$03                            ; B82C A9 03                    ..
        jmp     L9278                           ; B82E 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB831:
        rts                                     ; B831 60                       `

; ----------------------------------------------------------------------------
LB832:
        lda     $0520                           ; B832 AD 20 05                 . .
        and     #$01                            ; B835 29 01                    ).
        bne     LB831                           ; B837 D0 F8                    ..
        bit     $13                             ; B839 24 13                    $.
        bvc     LB85B                           ; B83B 50 1E                    P.
        .byte   $A5,$12,$4A,$B0,$0A,$4A,$90,$0C ; B83D A5 12 4A B0 0A 4A 90 0C  ..J..J..
        .byte   $2C,$F0,$04,$70,$07,$50,$0A,$2C ; B845 2C F0 04 70 07 50 0A 2C  ,..p.P.,
        .byte   $F0,$04,$70,$05,$A9,$0C,$4C,$78 ; B84D F0 04 70 05 A9 0C 4C 78  ..p...Lx
        .byte   $92,$A9,$0D,$4C,$78,$92         ; B855 92 A9 0D 4C 78 92        ...Lx.
; ----------------------------------------------------------------------------
LB85B:
        ldy     $12                             ; B85B A4 12                    ..
        bpl     LB872                           ; B85D 10 13                    ..
        lda     $04C0                           ; B85F AD C0 04                 ...
        and     #$08                            ; B862 29 08                    ).
        beq     LB86D                           ; B864 F0 07                    ..
        tya                                     ; B866 98                       .
        and     #$01                            ; B867 29 01                    ).
        bne     LB817                           ; B869 D0 AC                    ..
        .byte   $F0,$05                         ; B86B F0 05                    ..
; ----------------------------------------------------------------------------
LB86D:
        tya                                     ; B86D 98                       .
        and     #$02                            ; B86E 29 02                    ).
        bne     LB817                           ; B870 D0 A5                    ..
LB872:
        tya                                     ; B872 98                       .
        and     #$08                            ; B873 29 08                    ).
        beq     LB87C                           ; B875 F0 05                    ..
        lda     #$05                            ; B877 A9 05                    ..
        jmp     L9278                           ; B879 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB87C:
        tya                                     ; B87C 98                       .
        and     #$04                            ; B87D 29 04                    ).
        beq     LB886                           ; B87F F0 05                    ..
        lda     #$05                            ; B881 A9 05                    ..
        jmp     L9278                           ; B883 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB886:
        lda     #$04                            ; B886 A9 04                    ..
        jmp     L9278                           ; B888 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
        bit     $13                             ; B88B 24 13                    $.
        bvs     LB89D                           ; B88D 70 0E                    p.
        bmi     LB8BD                           ; B88F 30 2C                    0,
        lda     $0520                           ; B891 AD 20 05                 . .
        and     #$45                            ; B894 29 45                    )E
        bne     LB8BC                           ; B896 D0 24                    .$
        lda     #$00                            ; B898 A9 00                    ..
        jmp     L9278                           ; B89A 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB89D:
        lda     $0520                           ; B89D AD 20 05                 . .
        and     #$45                            ; B8A0 29 45                    )E
        beq     LB8B2                           ; B8A2 F0 0E                    ..
        and     #$05                            ; B8A4 29 05                    ).
        bne     LB8BC                           ; B8A6 D0 14                    ..
        lda     #$1F                            ; B8A8 A9 1F                    ..
        sta     $0700                           ; B8AA 8D 00 07                 ...
        lda     #$0B                            ; B8AD A9 0B                    ..
        jmp     L9278                           ; B8AF 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB8B2:
        lda     #$1F                            ; B8B2 A9 1F                    ..
        sta     $0700                           ; B8B4 8D 00 07                 ...
        lda     #$09                            ; B8B7 A9 09                    ..
        jmp     L9278                           ; B8B9 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB8BC:
        rts                                     ; B8BC 60                       `

; ----------------------------------------------------------------------------
LB8BD:
        bit     $0520                           ; B8BD 2C 20 05                 , .
        bvs     LB8BC                           ; B8C0 70 FA                    p.
        lda     $0520                           ; B8C2 AD 20 05                 . .
        ora     #$60                            ; B8C5 09 60                    .`
        sta     $0520                           ; B8C7 8D 20 05                 . .
        lda     #$03                            ; B8CA A9 03                    ..
        jmp     L9278                           ; B8CC 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
        bit     $13                             ; B8CF 24 13                    $.
        bvs     LB910                           ; B8D1 70 3D                    p=
        bmi     LB92F                           ; B8D3 30 5A                    0Z
        lda     $0520                           ; B8D5 AD 20 05                 . .
        and     #$45                            ; B8D8 29 45                    )E
        bne     LB8F1                           ; B8DA D0 15                    ..
        lda     $0520                           ; B8DC AD 20 05                 . .
        and     #$F7                            ; B8DF 29 F7                    ).
        sta     $0520                           ; B8E1 8D 20 05                 . .
        lda     $04F0                           ; B8E4 AD F0 04                 ...
        and     #$BF                            ; B8E7 29 BF                    ).
        sta     $04F0                           ; B8E9 8D F0 04                 ...
        lda     #$01                            ; B8EC A9 01                    ..
        jmp     L9278                           ; B8EE 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB8F1:
        and     #$05                            ; B8F1 29 05                    ).
        bne     LB902                           ; B8F3 D0 0D                    ..
        bit     $04F0                           ; B8F5 2C F0 04                 ,..
        bvs     LB903                           ; B8F8 70 09                    p.
        lda     $0520                           ; B8FA AD 20 05                 . .
        and     #$F7                            ; B8FD 29 F7                    ).
        sta     $0520                           ; B8FF 8D 20 05                 . .
LB902:
        rts                                     ; B902 60                       `

; ----------------------------------------------------------------------------
LB903:
        lda     $0520                           ; B903 AD 20 05                 . .
        ora     #$08                            ; B906 09 08                    ..
        sta     $0520                           ; B908 8D 20 05                 . .
        lda     #$06                            ; B90B A9 06                    ..
        jmp     L9278                           ; B90D 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB910:
        lda     $0520                           ; B910 AD 20 05                 . .
        and     #$45                            ; B913 29 45                    )E
        beq     LB925                           ; B915 F0 0E                    ..
        and     #$05                            ; B917 29 05                    ).
        bne     LB8BC                           ; B919 D0 A1                    ..
        lda     #$1F                            ; B91B A9 1F                    ..
        sta     $0700                           ; B91D 8D 00 07                 ...
        lda     #$0B                            ; B920 A9 0B                    ..
        jmp     L9278                           ; B922 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB925:
        lda     #$1F                            ; B925 A9 1F                    ..
        sta     $0700                           ; B927 8D 00 07                 ...
        lda     #$09                            ; B92A A9 09                    ..
        jmp     L9278                           ; B92C 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB92F:
        bit     $0520                           ; B92F 2C 20 05                 , .
        bvs     LB8BC                           ; B932 70 88                    p.
        lda     $0520                           ; B934 AD 20 05                 . .
        ora     #$60                            ; B937 09 60                    .`
        sta     $0520                           ; B939 8D 20 05                 . .
        lda     #$03                            ; B93C A9 03                    ..
        jmp     L9278                           ; B93E 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
        bit     $13                             ; B941 24 13                    $.
        bvs     LB983                           ; B943 70 3E                    p>
        bmi     LB9A2                           ; B945 30 5B                    0[
        lda     $0520                           ; B947 AD 20 05                 . .
        and     #$45                            ; B94A 29 45                    )E
        bne     LB963                           ; B94C D0 15                    ..
        lda     $0520                           ; B94E AD 20 05                 . .
        and     #$F7                            ; B951 29 F7                    ).
        sta     $0520                           ; B953 8D 20 05                 . .
        lda     $04F0                           ; B956 AD F0 04                 ...
        ora     #$40                            ; B959 09 40                    .@
        sta     $04F0                           ; B95B 8D F0 04                 ...
        lda     #$01                            ; B95E A9 01                    ..
        jmp     L9278                           ; B960 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB963:
        and     #$05                            ; B963 29 05                    ).
        bne     LB982                           ; B965 D0 1B                    ..
        bit     $04F0                           ; B967 2C F0 04                 ,..
        bvc     LB975                           ; B96A 50 09                    P.
        lda     $0520                           ; B96C AD 20 05                 . .
        and     #$F7                            ; B96F 29 F7                    ).
        sta     $0520                           ; B971 8D 20 05                 . .
        rts                                     ; B974 60                       `

; ----------------------------------------------------------------------------
LB975:
        lda     $0520                           ; B975 AD 20 05                 . .
        ora     #$08                            ; B978 09 08                    ..
        sta     $0520                           ; B97A 8D 20 05                 . .
        lda     #$06                            ; B97D A9 06                    ..
        jmp     L9278                           ; B97F 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB982:
        rts                                     ; B982 60                       `

; ----------------------------------------------------------------------------
LB983:
        lda     $0520                           ; B983 AD 20 05                 . .
        and     #$45                            ; B986 29 45                    )E
        beq     LB998                           ; B988 F0 0E                    ..
        and     #$05                            ; B98A 29 05                    ).
        bne     LB982                           ; B98C D0 F4                    ..
        lda     #$1F                            ; B98E A9 1F                    ..
        sta     $0700                           ; B990 8D 00 07                 ...
        lda     #$0B                            ; B993 A9 0B                    ..
        jmp     L9278                           ; B995 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB998:
        lda     #$1F                            ; B998 A9 1F                    ..
        sta     $0700                           ; B99A 8D 00 07                 ...
        lda     #$09                            ; B99D A9 09                    ..
        jmp     L9278                           ; B99F 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB9A2:
        bit     $0520                           ; B9A2 2C 20 05                 , .
        bvs     LB982                           ; B9A5 70 DB                    p.
        lda     $0520                           ; B9A7 AD 20 05                 . .
        ora     #$60                            ; B9AA 09 60                    .`
        sta     $0520                           ; B9AC 8D 20 05                 . .
        lda     #$03                            ; B9AF A9 03                    ..
        jmp     L9278                           ; B9B1 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
        bit     $13                             ; B9B4 24 13                    $.
        bvs     LB9C9                           ; B9B6 70 11                    p.
        bpl     LB9BD                           ; B9B8 10 03                    ..
        .byte   $4C,$BD,$D8                     ; B9BA 4C BD D8                 L..
; ----------------------------------------------------------------------------
LB9BD:
        lda     $0520                           ; B9BD AD 20 05                 . .
        and     #$45                            ; B9C0 29 45                    )E
        bne     LB982                           ; B9C2 D0 BE                    ..
        lda     #$02                            ; B9C4 A9 02                    ..
        jmp     L9278                           ; B9C6 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB9C9:
        lda     $0520                           ; B9C9 AD 20 05                 . .
        and     #$45                            ; B9CC 29 45                    )E
        beq     LB9DE                           ; B9CE F0 0E                    ..
        .byte   $29,$05,$D0,$AE,$A9,$1F,$8D,$00 ; B9D0 29 05 D0 AE A9 1F 8D 00  ).......
        .byte   $07,$A9,$0B,$4C,$78,$92         ; B9D8 07 A9 0B 4C 78 92        ...Lx.
; ----------------------------------------------------------------------------
LB9DE:
        lda     #$1F                            ; B9DE A9 1F                    ..
        sta     $0700                           ; B9E0 8D 00 07                 ...
        lda     #$0A                            ; B9E3 A9 0A                    ..
        jmp     L9278                           ; B9E5 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
        bit     $13                             ; B9E8 24 13                    $.
        bvs     LB9FD                           ; B9EA 70 11                    p.
        bpl     LB9F1                           ; B9EC 10 03                    ..
        .byte   $4C,$BD,$D8                     ; B9EE 4C BD D8                 L..
; ----------------------------------------------------------------------------
LB9F1:
        lda     $0520                           ; B9F1 AD 20 05                 . .
        and     #$45                            ; B9F4 29 45                    )E
        bne     LB982                           ; B9F6 D0 8A                    ..
        lda     #$00                            ; B9F8 A9 00                    ..
        jmp     L9278                           ; B9FA 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LB9FD:
        lda     $0520                           ; B9FD AD 20 05                 . .
        and     #$45                            ; BA00 29 45                    )E
        beq     LBA0D                           ; BA02 F0 09                    ..
        and     #$05                            ; BA04 29 05                    ).
        bne     LBA12                           ; BA06 D0 0A                    ..
        lda     #$0F                            ; BA08 A9 0F                    ..
        jmp     L9278                           ; BA0A 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LBA0D:
        lda     #$0E                            ; BA0D A9 0E                    ..
        jmp     L9278                           ; BA0F 4C 78 92                 Lx.

; ----------------------------------------------------------------------------
LBA12:
        .byte   $60,$8B,$D8,$CF,$D8,$41,$D9,$8B ; BA12 60 8B D8 CF D8 41 D9 8B  `....A..
        .byte   $D8,$B4,$D9,$CF,$D8,$41,$D9,$8B ; BA1A D8 B4 D9 CF D8 41 D9 8B  .....A..
        .byte   $D8,$E8,$D9,$CF,$D8,$41,$D9,$8B ; BA22 D8 E8 D9 CF D8 41 D9 8B  .....A..
        .byte   $D8,$8B,$D8,$8B,$D8,$8B,$D8,$8B ; BA2A D8 8B D8 8B D8 8B D8 8B  ........
        .byte   $D8,$15,$15,$35,$49,$15,$15,$25 ; BA32 D8 15 15 35 49 15 15 25  ...5I..%
        .byte   $25,$35,$35,$25,$29,$25,$39,$39 ; BA3A 25 35 35 25 29 25 39 39  %55%)%99
        .byte   $7E,$55,$15,$15,$35,$9F,$5D,$45 ; BA42 7E 55 15 15 35 9F 5D 45  ~U..5.]E
        .byte   $25,$35,$15,$15,$15,$15,$25,$25 ; BA4A 25 35 15 15 15 15 25 25  %5....%%
        .byte   $35,$35,$35,$35,$9F,$9B,$9F,$9F ; BA52 35 35 35 35 9F 9B 9F 9F  5555....
        .byte   $9F,$9B,$97,$9F,$9F,$15,$15,$15 ; BA5A 9F 9B 97 9F 9F 15 15 15  ........
        .byte   $15                             ; BA62 15                       .
; ----------------------------------------------------------------------------
        lda     $0598                           ; BA63 AD 98 05                 ...
        ora     $05B0                           ; BA66 0D B0 05                 ...
        ora     $8E                             ; BA69 05 8E                    ..
        bne     LBA72                           ; BA6B D0 05                    ..
        sta     $8C                             ; BA6D 85 8C                    ..
        sta     $8D                             ; BA6F 85 8D                    ..
        rts                                     ; BA71 60                       `

; ----------------------------------------------------------------------------
LBA72:
        lda     $3D                             ; BA72 A5 3D                    .=
        eor     $8F                             ; BA74 45 8F                    E.
        bpl     LBA94                           ; BA76 10 1C                    ..
        lda     $8F                             ; BA78 A5 8F                    ..
        and     #$80                            ; BA7A 29 80                    ).
        sta     $3D                             ; BA7C 85 3D                    .=
        bmi     LBA86                           ; BA7E 30 06                    0.
        lda     #$60                            ; BA80 A9 60                    .`
        ldx     #$00                            ; BA82 A2 00                    ..
        beq     LBA8A                           ; BA84 F0 04                    ..
LBA86:
        lda     #$A0                            ; BA86 A9 A0                    ..
        ldx     #$FF                            ; BA88 A2 FF                    ..
LBA8A:
        clc                                     ; BA8A 18                       .
        adc     $86                             ; BA8B 65 86                    e.
        sta     $86                             ; BA8D 85 86                    ..
        txa                                     ; BA8F 8A                       .
        adc     $87                             ; BA90 65 87                    e.
        sta     $87                             ; BA92 85 87                    ..
LBA94:
        bit     $3E                             ; BA94 24 3E                    $>
        bvc     LBAAC                           ; BA96 50 14                    P.
        lda     $7F                             ; BA98 A5 7F                    ..
        beq     LBAAC                           ; BA9A F0 10                    ..
        bit     $3D                             ; BA9C 24 3D                    $=
        bpl     LBAA6                           ; BA9E 10 06                    ..
        bit     $3B                             ; BAA0 24 3B                    $;
        bmi     LBAAC                           ; BAA2 30 08                    0.
        bpl     LBAE0                           ; BAA4 10 3A                    .:
LBAA6:
        lda     $3B                             ; BAA6 A5 3B                    .;
        cmp     $7F                             ; BAA8 C5 7F                    ..
        bne     LBAE0                           ; BAAA D0 34                    .4
LBAAC:
        clc                                     ; BAAC 18                       .
        lda     $0538                           ; BAAD AD 38 05                 .8.
        adc     $0598                           ; BAB0 6D 98 05                 m..
        sta     $0538                           ; BAB3 8D 38 05                 .8.
        lda     $0550                           ; BAB6 AD 50 05                 .P.
        sta     $08                             ; BAB9 85 08                    ..
        adc     $05B0                           ; BABB 6D B0 05                 m..
        cmp     #$10                            ; BABE C9 10                    ..
        bcc     LBB1F                           ; BAC0 90 5D                    .]
        cmp     #$F1                            ; BAC2 C9 F1                    ..
        bcs     LBB1F                           ; BAC4 B0 59                    .Y
        sta     $0550                           ; BAC6 8D 50 05                 .P.
        eor     $08                             ; BAC9 45 08                    E.
        bpl     LBAD7                           ; BACB 10 0A                    ..
        lda     $7F                             ; BACD A5 7F                    ..
        beq     LBB1F                           ; BACF F0 4E                    .N
        lda     $3E                             ; BAD1 A5 3E                    .>
        ora     #$40                            ; BAD3 09 40                    .@
        bne     LBADB                           ; BAD5 D0 04                    ..
LBAD7:
        lda     $3E                             ; BAD7 A5 3E                    .>
        and     #$BF                            ; BAD9 29 BF                    ).
LBADB:
        sta     $3E                             ; BADB 85 3E                    .>
        jmp     LDB1F                           ; BADD 4C 1F DB                 L..

; ----------------------------------------------------------------------------
LBAE0:
        lda     $0598                           ; BAE0 AD 98 05                 ...
        sta     $8C                             ; BAE3 85 8C                    ..
        lda     $05B0                           ; BAE5 AD B0 05                 ...
        sta     $8D                             ; BAE8 85 8D                    ..
        clc                                     ; BAEA 18                       .
        lda     $39                             ; BAEB A5 39                    .9
        sta     $08                             ; BAED 85 08                    ..
        adc     $8C                             ; BAEF 65 8C                    e.
        sta     $39                             ; BAF1 85 39                    .9
        lda     $3A                             ; BAF3 A5 3A                    .:
        sta     $09                             ; BAF5 85 09                    ..
        adc     $8D                             ; BAF7 65 8D                    e.
        sta     $3A                             ; BAF9 85 3A                    .:
        php                                     ; BAFB 08                       .
        lda     $3B                             ; BAFC A5 3B                    .;
        adc     $8E                             ; BAFE 65 8E                    e.
        bmi     LBB10                           ; BB00 30 0E                    0.
        sta     $3B                             ; BB02 85 3B                    .;
        plp                                     ; BB04 28                       (
        lda     $3F                             ; BB05 A5 3F                    .?
        adc     $8E                             ; BB07 65 8E                    e.
        and     #$01                            ; BB09 29 01                    ).
        sta     $3F                             ; BB0B 85 3F                    .?
        jmp     LC95B                           ; BB0D 4C 5B C9                 L[.

; ----------------------------------------------------------------------------
LBB10:
        lda     $08                             ; BB10 A5 08                    ..
        sta     $39                             ; BB12 85 39                    .9
        lda     $09                             ; BB14 A5 09                    ..
        sta     $3A                             ; BB16 85 3A                    .:
        lda     $3E                             ; BB18 A5 3E                    .>
        and     #$BF                            ; BB1A 29 BF                    ).
        sta     $3E                             ; BB1C 85 3E                    .>
        plp                                     ; BB1E 28                       (
LBB1F:
        lda     #$00                            ; BB1F A9 00                    ..
        sta     $8C                             ; BB21 85 8C                    ..
        sta     $8D                             ; BB23 85 8D                    ..
        rts                                     ; BB25 60                       `

; ----------------------------------------------------------------------------
        asl     $16                             ; BB26 06 16                    ..
        lda     $88                             ; BB28 A5 88                    ..
        lsr     a                               ; BB2A 4A                       J
        and     #$01                            ; BB2B 29 01                    ).
        ora     #$02                            ; BB2D 09 02                    ..
        sta     $08                             ; BB2F 85 08                    ..
        lda     #$17                            ; BB31 A9 17                    ..
        sta     $09                             ; BB33 85 09                    ..
        lda     #$00                            ; BB35 A9 00                    ..
        jsr     LC000                           ; BB37 20 00 C0                  ..
        lda     #$01                            ; BB3A A9 01                    ..
        jsr     LC011                           ; BB3C 20 11 C0                  ..
        ldy     #$05                            ; BB3F A0 05                    ..
        sty     $0A                             ; BB41 84 0A                    ..
LBB43:
        lda     ($86),y                         ; BB43 B1 86                    ..
        sta     $01E0,y                         ; BB45 99 E0 01                 ...
        dey                                     ; BB48 88                       .
        bpl     LBB43                           ; BB49 10 F8                    ..
        lda     #$02                            ; BB4B A9 02                    ..
        jsr     LC000                           ; BB4D 20 00 C0                  ..
        lda     #$03                            ; BB50 A9 03                    ..
        jsr     LC011                           ; BB52 20 11 C0                  ..
LBB55:
        ldy     $0A                             ; BB55 A4 0A                    ..
        lda     $01E0,y                         ; BB57 B9 E0 01                 ...
        jsr     LDBCF                           ; BB5A 20 CF DB                  ..
        dec     $0A                             ; BB5D C6 0A                    ..
        bpl     LBB55                           ; BB5F 10 F4                    ..
        ldx     #$00                            ; BB61 A2 00                    ..
        stx     $043E                           ; BB63 8E 3E 04                 .>.
        inx                                     ; BB66 E8                       .
        stx     $0426                           ; BB67 8E 26 04                 .&.
        stx     $042A                           ; BB6A 8E 2A 04                 .*.
        stx     $042E                           ; BB6D 8E 2E 04                 ...
        stx     $0432                           ; BB70 8E 32 04                 .2.
        stx     $0436                           ; BB73 8E 36 04                 .6.
        stx     $043A                           ; BB76 8E 3A 04                 .:.
        lda     $89                             ; BB79 A5 89                    ..
        ora     #$03                            ; BB7B 09 03                    ..
        sta     $0427                           ; BB7D 8D 27 04                 .'.
        sta     $042B                           ; BB80 8D 2B 04                 .+.
        sta     $042F                           ; BB83 8D 2F 04                 ./.
        sta     $0433                           ; BB86 8D 33 04                 .3.
        sta     $0437                           ; BB89 8D 37 04                 .7.
        sta     $043B                           ; BB8C 8D 3B 04                 .;.
        lda     $88                             ; BB8F A5 88                    ..
        lsr     a                               ; BB91 4A                       J
        lsr     a                               ; BB92 4A                       J
        ora     #$C0                            ; BB93 09 C0                    ..
        sta     $0428                           ; BB95 8D 28 04                 .(.
        ora     #$08                            ; BB98 09 08                    ..
        sta     $042C                           ; BB9A 8D 2C 04                 .,.
        eor     #$18                            ; BB9D 49 18                    I.
        sta     $0430                           ; BB9F 8D 30 04                 .0.
        ora     #$08                            ; BBA2 09 08                    ..
        sta     $0434                           ; BBA4 8D 34 04                 .4.
        eor     #$38                            ; BBA7 49 38                    I8
        sta     $0438                           ; BBA9 8D 38 04                 .8.
        ora     #$08                            ; BBAC 09 08                    ..
        sta     $043C                           ; BBAE 8D 3C 04                 .<.
        ldx     #$98                            ; BBB1 A2 98                    ..
        stx     $03F0                           ; BBB3 8E F0 03                 ...
        stx     $040B                           ; BBB6 8E 0B 04                 ...
        ldx     $88                             ; BBB9 A6 88                    ..
        stx     $03F2                           ; BBBB 8E F2 03                 ...
        inx                                     ; BBBE E8                       .
        stx     $040D                           ; BBBF 8E 0D 04                 ...
        lda     $89                             ; BBC2 A5 89                    ..
        sta     $03F1                           ; BBC4 8D F1 03                 ...
        sta     $040C                           ; BBC7 8D 0C 04                 ...
        lda     #$80                            ; BBCA A9 80                    ..
        sta     $16                             ; BBCC 85 16                    ..
        rts                                     ; BBCE 60                       `

; ----------------------------------------------------------------------------
        ldx     $DC2E,y                         ; BBCF BE 2E DC                 ...
        tay                                     ; BBD2 A8                       .
        lda     ($6D),y                         ; BBD3 B1 6D                    .m
        sta     $03F0,x                         ; BBD5 9D F0 03                 ...
        tya                                     ; BBD8 98                       .
        ldx     #$00                            ; BBD9 A2 00                    ..
        stx     $0B                             ; BBDB 86 0B                    ..
        asl     a                               ; BBDD 0A                       .
        rol     $0B                             ; BBDE 26 0B                    &.
        asl     a                               ; BBE0 0A                       .
        rol     $0B                             ; BBE1 26 0B                    &.
        adc     $69                             ; BBE3 65 69                    ei
        sta     L004E                           ; BBE5 85 4E                    .N
        lda     $0B                             ; BBE7 A5 0B                    ..
        adc     $6A                             ; BBE9 65 6A                    ej
        sta     $4F                             ; BBEB 85 4F                    .O
        ldy     $08                             ; BBED A4 08                    ..
        lda     (L004E),y                       ; BBEF B1 4E                    .N
        jsr     LDBFA                           ; BBF1 20 FA DB                  ..
        ldy     $08                             ; BBF4 A4 08                    ..
        dey                                     ; BBF6 88                       .
        dey                                     ; BBF7 88                       .
        lda     (L004E),y                       ; BBF8 B1 4E                    .N
        ldx     #$00                            ; BBFA A2 00                    ..
        stx     $0B                             ; BBFC 86 0B                    ..
        asl     a                               ; BBFE 0A                       .
        rol     $0B                             ; BBFF 26 0B                    &.
        asl     a                               ; BC01 0A                       .
        rol     $0B                             ; BC02 26 0B                    &.
        adc     $6B                             ; BC04 65 6B                    ek
        sta     $50                             ; BC06 85 50                    .P
        lda     $0B                             ; BC08 A5 0B                    ..
        adc     $6C                             ; BC0A 65 6C                    el
        sta     $51                             ; BC0C 85 51                    .Q
        ldy     #$03                            ; BC0E A0 03                    ..
        ldx     $09                             ; BC10 A6 09                    ..
        lda     ($50),y                         ; BC12 B1 50                    .P
        sta     $040E,x                         ; BC14 9D 0E 04                 ...
        dey                                     ; BC17 88                       .
        lda     ($50),y                         ; BC18 B1 50                    .P
        sta     $03F3,x                         ; BC1A 9D F3 03                 ...
        dey                                     ; BC1D 88                       .
        lda     ($50),y                         ; BC1E B1 50                    .P
        sta     $040D,x                         ; BC20 9D 0D 04                 ...
        dey                                     ; BC23 88                       .
        lda     ($50),y                         ; BC24 B1 50                    .P
        sta     $03F2,x                         ; BC26 9D F2 03                 ...
        dex                                     ; BC29 CA                       .
        dex                                     ; BC2A CA                       .
        stx     $09                             ; BC2B 86 09                    ..
        rts                                     ; BC2D 60                       `

; ----------------------------------------------------------------------------
        .byte   $39,$3D,$41,$45,$49,$4D,$20,$16 ; BC2E 39 3D 41 45 49 4D 20 16  9=AEIM .
        .byte   $9E,$A9,$3F,$20,$EA,$95,$A9,$00 ; BC36 9E A9 3F 20 EA 95 A9 00  ..? ....
        .byte   $85,$17,$85,$3D,$A2,$0C,$20,$9A ; BC3E 85 17 85 3D A2 0C 20 9A  ...=.. .
        .byte   $9B,$20,$73,$DC,$A5,$12,$C9,$81 ; BC46 9B 20 73 DC A5 12 C9 81  . s.....
        .byte   $F0,$13,$C9,$82,$F0,$17,$A5,$13 ; BC4E F0 13 C9 82 F0 17 A5 13  ........
        .byte   $C9,$10,$D0,$ED,$A5,$12,$D0,$FC ; BC56 C9 10 D0 ED A5 12 D0 FC  ........
        .byte   $A5,$3D,$85,$7E,$60,$20,$7F,$DD ; BC5E A5 3D 85 7E 60 20 7F DD  .=.~` ..
        .byte   $E6,$3D,$4C,$47,$DC,$20,$7F,$DD ; BC66 E6 3D 4C 47 DC 20 7F DD  .=LG. ..
        .byte   $C6,$3D,$4C,$47,$DC,$A9,$02,$8D ; BC6E C6 3D 4C 47 DC A9 02 8D  .=LG....
        .byte   $F0,$03,$A9,$21,$8D,$F1,$03,$A9 ; BC76 F0 03 A9 21 8D F1 03 A9  ...!....
        .byte   $95,$8D,$F2,$03,$A9,$00,$8D,$F5 ; BC7E 95 8D F2 03 A9 00 8D F5  ........
        .byte   $03,$A5,$3D,$4A,$4A,$4A,$4A,$AA ; BC86 03 A5 3D 4A 4A 4A 4A AA  ..=JJJJ.
        .byte   $BD,$A3,$DD,$8D,$F3,$03,$A5,$3D ; BC8E BD A3 DD 8D F3 03 A5 3D  .......=
        .byte   $29,$0F,$AA,$BD,$A3,$DD,$8D,$F4 ; BC96 29 0F AA BD A3 DD 8D F4  ).......
        .byte   $03,$A9,$80,$85,$16,$60,$20,$73 ; BC9E 03 A9 80 85 16 60 20 73  .....` s
        .byte   $DC,$A2,$12,$BC,$31,$DD,$BD,$44 ; BCA6 DC A2 12 BC 31 DD BD 44  ....1..D
        .byte   $DD,$99,$F0,$03,$CA,$10,$F4,$A6 ; BCAE DD 99 F0 03 CA 10 F4 A6  ........
        .byte   $3D,$BD,$57,$DD,$E0,$28,$90,$02 ; BCB6 3D BD 57 DD E0 28 90 02  =.W..(..
        .byte   $A9,$29,$0A,$AA,$BD,$FB,$DF,$85 ; BCBE A9 29 0A AA BD FB DF 85  .)......
        .byte   $4E,$BD,$FC,$DF,$85,$4F,$A0,$0F ; BCC6 4E BD FC DF 85 4F A0 0F  N....O..
        .byte   $B1,$4E,$99,$F8,$03,$88,$10,$F8 ; BCCE B1 4E 99 F8 03 88 10 F8  .N......
        .byte   $AD,$2D,$07,$0D,$6D,$07,$A0,$1B ; BCD6 AD 2D 07 0D 6D 07 A0 1B  .-..m...
        .byte   $20,$11,$DD,$AD,$3D,$07,$0D,$7D ; BCDE 20 11 DD AD 3D 07 0D 7D   ...=..}
        .byte   $07,$A0,$26,$20,$11,$DD,$AD,$4D ; BCE6 07 A0 26 20 11 DD AD 4D  ..& ...M
        .byte   $07,$0D,$8D,$07,$A0,$31,$20,$11 ; BCEE 07 0D 8D 07 A0 31 20 11  .....1 .
        .byte   $DD,$AD,$5D,$07,$0D,$9D,$07,$A0 ; BCF6 DD AD 5D 07 0D 9D 07 A0  ..].....
        .byte   $3C,$20,$11,$DD,$A0,$47,$A2,$10 ; BCFE 3C 20 11 DD A0 47 A2 10  < ...G..
        .byte   $AD,$15,$40,$29,$10,$D0,$07,$A2 ; BD06 AD 15 40 29 10 D0 07 A2  ..@)....
        .byte   $00,$F0,$03,$29,$0F,$AA,$A9,$08 ; BD0E 00 F0 03 29 0F AA A9 08  ...)....
        .byte   $85,$08,$CA,$F0,$07,$30,$09,$CA ; BD16 85 08 CA F0 07 30 09 CA  .....0..
        .byte   $A9,$19,$D0,$06,$A9,$1A,$D0,$02 ; BD1E A9 19 D0 06 A9 1A D0 02  ........
        .byte   $A9,$1B,$99,$F0,$03,$C8,$C6,$08 ; BD26 A9 1B 99 F0 03 C8 C6 08  ........
        .byte   $D0,$E8,$60,$05,$06,$07,$18,$19 ; BD2E D0 E8 60 05 06 07 18 19  ..`.....
        .byte   $1A,$23,$24,$25,$2E,$2F,$30,$39 ; BD36 1A 23 24 25 2E 2F 30 39  .#$%./09
        .byte   $3A,$3B,$44,$45,$46,$4F,$10,$22 ; BD3E 3A 3B 44 45 46 4F 10 22  :;DEFO."
        .byte   $0E,$08,$21,$C5,$08,$21,$E5,$08 ; BD46 0E 08 21 C5 08 21 E5 08  ..!..!..
        .byte   $22,$05,$08,$22,$25,$08,$22,$45 ; BD4E 22 05 08 22 25 08 22 45  ".."%."E
        .byte   $00,$00,$01,$02,$03,$04,$05,$06 ; BD56 00 00 01 02 03 04 05 06  ........
        .byte   $07,$08,$09,$0A,$0B,$0C,$0D,$0E ; BD5E 07 08 09 0A 0B 0C 0D 0E  ........
        .byte   $0F,$28,$28,$28,$13,$14,$15,$16 ; BD66 0F 28 28 28 13 14 15 16  .(((....
        .byte   $17,$18,$19,$1A,$1B,$1C,$1D,$1E ; BD6E 17 18 19 1A 1B 1C 1D 1E  ........
        .byte   $1F,$28,$28,$28,$28,$28,$28,$28 ; BD76 1F 28 28 28 28 28 28 28  .(((((((
        .byte   $28,$A9,$05,$85,$88,$20,$D9,$9B ; BD7E 28 A9 05 85 88 20 D9 9B  (.... ..
        .byte   $C6,$88,$D0,$F9,$60,$A9,$01,$A6 ; BD86 C6 88 D0 F9 60 A9 01 A6  ....`...
        .byte   $88,$F0,$09,$C6,$88,$A2,$01,$20 ; BD8E 88 F0 09 C6 88 A2 01 20  ....... 
        .byte   $95,$92,$A9,$03,$85,$48,$20,$16 ; BD96 95 92 A9 03 85 48 20 16  .....H .
        .byte   $9E,$4C,$24,$9E,$60,$00,$01,$02 ; BD9E 9E 4C 24 9E 60 00 01 02  .L$.`...
        .byte   $03,$04,$05,$06,$07,$08,$09,$0A ; BDA6 03 04 05 06 07 08 09 0A  ........
        .byte   $22,$0B,$23,$0C,$24,$20,$16,$9E ; BDAE 22 0B 23 0C 24 20 16 9E  ".#.$ ..
        .byte   $A9,$F8,$20,$EA,$95,$A9,$01,$20 ; BDB6 A9 F8 20 EA 95 A9 01 20  .. .... 
        .byte   $11,$C0,$A9,$00,$20,$6C,$94,$A9 ; BDBE 11 C0 A9 00 20 6C 94 A9  .... l..
        .byte   $1A,$85,$5B,$A9,$80,$85,$25,$A9 ; BDC6 1A 85 5B A9 80 85 25 A9  ..[...%.
        .byte   $0D,$85,$26,$A9,$2E,$8D,$00,$07 ; BDCE 0D 85 26 A9 2E 8D 00 07  ..&.....
        .byte   $A2,$05,$BD,$F5,$DF,$95,$17,$CA ; BDD6 A2 05 BD F5 DF 95 17 CA  ........
        .byte   $10,$F8,$A5,$10,$09,$01,$85,$10 ; BDDE 10 F8 A5 10 09 01 85 10  ........
        .byte   $A2,$0C,$20,$9A,$9B,$A2,$1F,$BD ; BDE6 A2 0C 20 9A 9B A2 1F BD  .. .....
        .byte   $F3,$03,$9D,$C0,$01,$CA,$10,$F7 ; BDEE F3 03 9D C0 01 CA 10 F7  ........
        .byte   $A2,$0D,$20,$9A,$9B,$A2,$0E,$20 ; BDF6 A2 0D 20 9A 9B A2 0E 20  .. .... 
        .byte   $9A,$9B,$A2,$0F,$20,$9A,$9B,$A2 ; BDFE 9A 9B A2 0F 20 9A 9B A2  .... ...
        .byte   $01,$20,$9A,$9B,$A9,$07,$85,$2E ; BE06 01 20 9A 9B A9 07 85 2E  . ......
        .byte   $A9,$9F,$85,$1F,$A9,$01,$85,$48 ; BE0E A9 9F 85 1F A9 01 85 48  .......H
        .byte   $A9,$00,$8D,$F0,$04,$A2,$00,$A9 ; BE16 A9 00 8D F0 04 A2 00 A9  ........
        .byte   $24,$20,$7D,$92,$A9,$44,$8D,$80 ; BE1E 24 20 7D 92 A9 44 8D 80  $ }..D..
        .byte   $05,$A9,$00,$8D,$50,$05,$A9,$3F ; BE26 05 A9 00 8D 50 05 A9 3F  ....P..?
        .byte   $85,$3B,$20,$D9,$9B,$18,$A5,$21 ; BE2E 85 3B 20 D9 9B 18 A5 21  .; ....!
        .byte   $69,$04,$85,$21,$18,$AD,$38,$05 ; BE36 69 04 85 21 18 AD 38 05  i..!..8.
        .byte   $69,$58,$8D,$38,$05,$AD,$50,$05 ; BE3E 69 58 8D 38 05 AD 50 05  iX.8..P.
        .byte   $69,$01,$8D,$50,$05,$20,$16,$9E ; BE46 69 01 8D 50 05 20 16 9E  i..P. ..
        .byte   $20,$24,$9E,$C6,$3B,$10,$DB,$A5 ; BE4E 20 24 9E C6 3B 10 DB A5   $..;...
        .byte   $10,$29,$FE,$85,$10,$A2,$3F,$20 ; BE56 10 29 FE 85 10 A2 3F 20  .)....? 
        .byte   $D9,$9B,$38,$A5,$3A,$E9,$04,$85 ; BE5E D9 9B 38 A5 3A E9 04 85  ..8.:...
        .byte   $3A,$CA,$10,$F3,$A9,$03,$85,$48 ; BE66 3A CA 10 F3 A9 03 85 48  :......H
        .byte   $A2,$01,$A9,$25,$20,$7D,$92,$A9 ; BE6E A2 01 A9 25 20 7D 92 A9  ...% }..
        .byte   $5F,$8D,$51,$05,$A9,$45,$8D,$81 ; BE76 5F 8D 51 05 A9 45 8D 81  _.Q..E..
        .byte   $05,$A9,$37,$8D,$00,$07,$A9,$08 ; BE7E 05 A9 37 8D 00 07 A9 08  ..7.....
        .byte   $85,$88,$20,$8B,$DD,$20,$D9,$9B ; BE86 85 88 20 8B DD 20 D9 9B  .. .. ..
        .byte   $A5,$88,$D0,$F6,$20,$16,$9E,$A9 ; BE8E A5 88 D0 F6 20 16 9E A9  .... ...
        .byte   $01,$85,$48,$20,$24,$9E,$A9,$00 ; BE96 01 85 48 20 24 9E A9 00  ..H $...
        .byte   $85,$A8,$85,$3D,$20,$D9,$9B,$C6 ; BE9E 85 A8 85 3D 20 D9 9B C6  ...= ...
        .byte   $A8,$10,$10,$A9,$14,$85,$A8,$A9 ; BEA6 A8 10 10 A9 14 85 A8 A9  ........
        .byte   $01,$20,$11,$C0,$20,$A2,$94,$24 ; BEAE 01 20 11 C0 20 A2 94 24  . .. ..$
        .byte   $16,$30,$03,$20,$A4,$DC,$20,$8B ; BEB6 16 30 03 20 A4 DC 20 8B  .0. .. .
        .byte   $DD,$A5,$12,$C9,$10,$F0,$16,$29 ; BEBE DD A5 12 C9 10 F0 16 29  .......)
        .byte   $09,$D0,$1A,$A5,$12,$29,$06,$D0 ; BEC6 09 D0 1A A5 12 29 06 D0  .....)..
        .byte   $2A,$A5,$13,$C9,$80,$F0,$07,$C9 ; BECE 2A A5 13 C9 80 F0 07 C9  *.......
        .byte   $40,$F0,$34,$D0,$C7,$60,$A9,$03 ; BED6 40 F0 34 D0 C7 60 A9 03  @.4..`..
        .byte   $8D,$00,$07,$D0,$BF,$C6,$47,$10 ; BEDE 8D 00 07 D0 BF C6 47 10  ......G.
        .byte   $BB,$A9,$06,$85,$47,$A6,$3D,$E8 ; BEE6 BB A9 06 85 47 A6 3D E8  ....G.=.
        .byte   $E0,$59,$90,$02,$A2,$00,$86,$3D ; BEEE E0 59 90 02 A2 00 86 3D  .Y.....=
        .byte   $4C,$A2,$DE,$C6,$46,$10,$A5,$A9 ; BEF6 4C A2 DE C6 46 10 A5 A9  L...F...
        .byte   $06,$85,$46,$A6,$3D,$CA,$10,$02 ; BEFE 06 85 46 A6 3D CA 10 02  ..F.=...
        .byte   $A2,$58,$86,$3D,$4C,$A2,$DE,$A9 ; BF06 A2 58 86 3D 4C A2 DE A9  .X.=L...
        .byte   $08,$85,$88,$A9,$01,$8D,$00,$07 ; BF0E 08 85 88 A9 01 8D 00 07  ........
        .byte   $20,$D9,$9B,$A2,$00,$8E,$2D,$07 ; BF16 20 D9 9B A2 00 8E 2D 07   .....-.
        .byte   $8E,$6D,$07,$8E,$3D,$07,$8E,$7D ; BF1E 8E 6D 07 8E 3D 07 8E 7D  .m..=..}
        .byte   $07,$8E,$4D,$07,$8E,$8D,$07,$8E ; BF26 07 8E 4D 07 8E 8D 07 8E  ..M.....
        .byte   $5D,$07,$8E,$9D,$07,$A6,$3D,$BD ; BF2E 5D 07 8E 9D 07 A6 3D BD  ].....=.
        .byte   $43,$DF,$85,$26,$BD,$9C,$DF,$8D ; BF36 43 DF 85 26 BD 9C DF 8D  C..&....
        .byte   $00,$07,$4C,$A2,$DE,$0D,$0D,$0D ; BF3E 00 07 4C A2 DE 0D 0D 0D  ..L.....
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; BF46 0D 0D 0D 0D 0D 0D 0D 0D  ........
        .byte   $0D,$0D,$0D,$0D,$0D,$0C,$0C,$0C ; BF4E 0D 0D 0D 0D 0D 0C 0C 0C  ........
        .byte   $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C ; BF56 0C 0C 0C 0C 0C 0C 0C 0C  ........
        .byte   $0C,$0C,$0C,$0D,$0C,$0C,$0C,$0C ; BF5E 0C 0C 0C 0D 0C 0C 0C 0C  ........
        .byte   $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C ; BF66 0C 0C 0C 0C 0C 0C 0C 0C  ........
        .byte   $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C ; BF6E 0C 0C 0C 0C 0C 0C 0C 0C  ........
        .byte   $0C,$0D,$0C,$0C,$0C,$0C,$0D,$0D ; BF76 0C 0D 0C 0C 0C 0C 0D 0D  ........
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; BF7E 0D 0D 0D 0D 0D 0D 0D 0D  ........
        .byte   $0D,$0D,$0D,$0D,$0C,$0C,$0C,$0C ; BF86 0D 0D 0D 0D 0C 0C 0C 0C  ........
        .byte   $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C ; BF8E 0C 0C 0C 0C 0C 0C 0C 0C  ........
        .byte   $0C,$0C,$0C,$0C,$0D,$0C,$0E,$0F ; BF96 0C 0C 0C 0C 0D 0C 0E 0F  ........
        .byte   $10,$11,$12,$13,$15,$16,$17,$18 ; BF9E 10 11 12 13 15 16 17 18  ........
        .byte   $1A,$1B,$1C,$35,$38,$2E,$01,$01 ; BFA6 1A 1B 1C 35 38 2E 01 01  ...58...
        .byte   $01,$04,$05,$06,$07,$08,$09,$0A ; BFAE 01 04 05 06 07 08 09 0A  ........
        .byte   $0B,$46,$33,$19,$1D,$1E,$01,$01 ; BFB6 0B 46 33 19 1D 1E 01 01  .F3.....
        .byte   $01,$01,$01,$01,$01,$01,$1F,$20 ; BFBE 01 01 01 01 01 01 1F 20  ....... 
        .byte   $21,$22,$23,$24,$25,$26,$27,$28 ; BFC6 21 22 23 24 25 26 27 28  !"#$%&'(
        .byte   $29,$2A,$2D,$2F,$30,$31,$32,$34 ; BFCE 29 2A 2D 2F 30 31 32 34  )*-/0124
        .byte   $36,$37,$3A,$3B,$3C,$3D,$3E,$3F ; BFD6 36 37 3A 3B 3C 3D 3E 3F  67:;<=>?
        .byte   $40,$41,$42,$43,$44,$45,$48,$49 ; BFDE 40 41 42 43 44 45 48 49  @ABCDEHI
        .byte   $4A,$4B,$4C,$4D,$4E,$4F,$50,$51 ; BFE6 4A 4B 4C 4D 4E 4F 50 51  JKLMNOPQ
        .byte   $52,$53,$54,$55,$56,$57,$58,$42 ; BFEE 52 53 54 55 56 57 58 42  RSTUVWXB
        .byte   $7E,$00,$01,$06,$07,$4F,$E0,$5F ; BFF6 7E 00 01 06 07 4F E0 5F  ~....O._
        .byte   $E0,$6F                         ; BFFE E0 6F                    .o
