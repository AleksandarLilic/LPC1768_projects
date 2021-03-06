; generated by Component: ARM Compiler 5.06 update 5 (build 528) Tool: ArmCC [4d3621]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -o.\objects\lpc1768_spi.o --depend=.\objects\lpc1768_spi.d --cpu=Cortex-M3 --apcs=interwork -O0 --diag_suppress=9931 -I.\Drivers -I.\RTE\Device\LPC1768 -I.\RTE\_Target_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.4.0\CMSIS\Core\Include -IC:\Keil_v5\ARM\PACK\Keil\LPC1700_DFP\2.5.0\Device\Include -D__UVISION_VERSION=524 -D_RTE_ -DLPC175x_6x --omf_browse=.\objects\lpc1768_spi.crf Drivers\lpc1768_spi.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.SPI_ControlRegister_Init||, CODE, READONLY, ALIGN=2

SPI_ControlRegister_Init PROC
        LDR      r2,[r0,#0]
        LSLS     r2,r2,#3
        LDR      r3,[r0,#4]
        ORR      r2,r2,r3,LSL #4
        LDR      r3,[r0,#0xc]
        ORR      r2,r2,r3,LSL #6
        LDR      r3,[r0,#8]
        ORR      r2,r2,r3,LSL #5
        MOV      r3,#0xffc
        AND      r1,r2,r3
        LDR      r2,|L1.36|
        STR      r1,[r2,#0]
        BX       lr
        ENDP

|L1.36|
        DCD      0x40020000

        AREA ||i.SPI_Disable||, CODE, READONLY, ALIGN=2

SPI_Disable PROC
        LDR      r0,|L2.20|
        LDR      r0,[r0,#0]
        BIC      r0,r0,#0x100
        LDR      r1,|L2.20|
        SUBS     r1,r1,#0xc4
        STR      r0,[r1,#0xc4]
        BX       lr
        ENDP

        DCW      0x0000
|L2.20|
        DCD      0x400fc0c4

        AREA ||i.SPI_DisableInterrupt||, CODE, READONLY, ALIGN=2

SPI_DisableInterrupt PROC
        LDR      r0,|L3.16|
        LDR      r0,[r0,#0]
        MOV      r1,#0xf7c
        ANDS     r0,r0,r1
        LDR      r1,|L3.16|
        STR      r0,[r1,#0]
        BX       lr
        ENDP

|L3.16|
        DCD      0x40020000

        AREA ||i.SPI_Enable||, CODE, READONLY, ALIGN=2

SPI_Enable PROC
        LDR      r0,|L4.20|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#0x100
        LDR      r1,|L4.20|
        SUBS     r1,r1,#0xc4
        STR      r0,[r1,#0xc4]
        BX       lr
        ENDP

        DCW      0x0000
|L4.20|
        DCD      0x400fc0c4

        AREA ||i.SPI_EnableInterrupt||, CODE, READONLY, ALIGN=2

SPI_EnableInterrupt PROC
        LDR      r0,|L5.16|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#0x80
        LDR      r1,|L5.16|
        STR      r0,[r1,#0]
        BX       lr
        ENDP

        DCW      0x0000
|L5.16|
        DCD      0x40020000

        AREA ||i.SPI_IRQHandler_func||, CODE, READONLY, ALIGN=2

SPI_IRQHandler_func PROC
        PUSH     {lr}
        MOVS     r0,#1
        LDR      r1,|L6.192|
        STR      r0,[r1,#0x1c]
        MOV      r0,r1
        LDR      r3,[r0,#4]
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0]
        LDR      r1,|L6.196|
        LDR      r1,[r1,#0]  ; transfer_cfg
        LDR      r1,[r1,#0x14]
        CMP      r0,r1
        BCC      |L6.90|
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0x14]
        LDR      r1,|L6.196|
        LDR      r1,[r1,#0]  ; transfer_cfg
        LDR      r1,[r1,#0]
        CMP      r0,r1
        BNE      |L6.50|
        BL       SPI_DisableInterrupt
        B        |L6.90|
|L6.50|
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#8]
        LDRB     r2,[r0,#0]
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#8]
        ADDS     r0,r0,#1
        LDR      r1,|L6.196|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#8]
        LDR      r0,|L6.192|
        STR      r2,[r0,#8]
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0x14]
        ADDS     r0,r0,#1
        LDR      r1,|L6.196|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x14]
|L6.90|
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#4]
        LDR      r1,|L6.196|
        LDR      r1,[r1,#0]  ; transfer_cfg
        LDR      r1,[r1,#0x10]
        CMP      r0,r1
        BLS      |L6.188|
        LDR      r0,|L6.192|
        LDR      r0,[r0,#8]
        UXTB     r2,r0
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0xc]
        STRB     r2,[r0,#0]
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0xc]
        ADDS     r0,r0,#1
        LDR      r1,|L6.196|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0xc]
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0x10]
        ADDS     r0,r0,#1
        LDR      r1,|L6.196|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x10]
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0x10]
        LDR      r1,|L6.196|
        LDR      r1,[r1,#0]  ; transfer_cfg
        LDR      r1,[r1,#4]
        CMP      r0,r1
        BNE      |L6.168|
        BL       SPI_DisableInterrupt
|L6.168|
        MOVS     r0,#0xaa
        LDR      r1,|L6.192|
        STR      r0,[r1,#8]
        LDR      r0,|L6.196|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0x14]
        ADDS     r0,r0,#1
        LDR      r1,|L6.196|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x14]
|L6.188|
        POP      {pc}
        ENDP

        DCW      0x0000
|L6.192|
        DCD      0x40020000
|L6.196|
        DCD      transfer_cfg

        AREA ||i.SPI_Init||, CODE, READONLY, ALIGN=2

SPI_Init PROC
        PUSH     {r4-r6,lr}
        MOV      r4,r0
        BL       SPI_Enable
        MOV      r0,r4
        BL       SPI_SetClock
        MOV      r0,r4
        BL       SPI_PinInit
        MOV      r0,r4
        BL       SPI_ControlRegister_Init
        LDR      r0,|L7.56|
        LDR      r5,[r0,#4]
        LDR      r0,[r0,#0x1c]
        AND      r0,r0,#1
        CBZ      r0,|L7.44|
        MOVS     r0,#1
        LDR      r1,|L7.56|
        STR      r0,[r1,#0x1c]
|L7.44|
        LDR      r0,[r4,#8]
        CBNZ     r0,|L7.52|
        BL       SPI_EnableInterrupt
|L7.52|
        POP      {r4-r6,pc}
        ENDP

        DCW      0x0000
|L7.56|
        DCD      0x40020000

        AREA ||i.SPI_MasterReceiveData||, CODE, READONLY, ALIGN=2

SPI_MasterReceiveData PROC
        PUSH     {r4,lr}
        MOV      r2,r0
        MOV      r3,r1
        MOVS     r0,#0
        LDR      r1,|L8.76|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0]
        LDR      r1,|L8.76|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#8]
        LDR      r0,|L8.76|
        LDR      r0,[r0,#0]  ; transfer_cfg
        STR      r2,[r0,#0xc]
        LDR      r0,|L8.76|
        LDR      r0,[r0,#0]  ; transfer_cfg
        STR      r3,[r0,#4]
        MOVS     r0,#0
        LDR      r1,|L8.76|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x10]
        LDR      r1,|L8.76|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x14]
        LDR      r0,|L8.80|
        LDR      r4,[r0,#8]
        MOVS     r0,#0xaa
        LDR      r1,|L8.80|
        STR      r0,[r1,#8]
        LDR      r0,|L8.76|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0x14]
        ADDS     r0,r0,#1
        LDR      r1,|L8.76|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x14]
        BL       SPI_EnableInterrupt
        POP      {r4,pc}
        ENDP

|L8.76|
        DCD      transfer_cfg
|L8.80|
        DCD      0x40020000

        AREA ||i.SPI_MasterSendData||, CODE, READONLY, ALIGN=2

SPI_MasterSendData PROC
        PUSH     {r4-r6,lr}
        MOV      r4,r0
        MOV      r5,r1
        MOVS     r0,#0
        LDR      r1,|L9.104|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#4]
        LDR      r1,|L9.104|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0xc]
        LDR      r0,|L9.104|
        LDR      r0,[r0,#0]  ; transfer_cfg
        STR      r4,[r0,#8]
        LDR      r0,|L9.104|
        LDR      r0,[r0,#0]  ; transfer_cfg
        STR      r5,[r0,#0]
        MOVS     r0,#0
        LDR      r1,|L9.104|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x14]
        LDR      r1,|L9.104|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x10]
        LDR      r0,|L9.104|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#8]
        LDRB     r6,[r0,#0]
        LDR      r0,|L9.104|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#8]
        ADDS     r0,r0,#1
        LDR      r1,|L9.104|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#8]
        MOVS     r2,#0
        MOVS     r1,#0x10
        MOV      r0,r2
        BL       GPIO_PinWrite
        LDR      r0,|L9.108|
        STR      r6,[r0,#8]
        LDR      r0,|L9.104|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0x14]
        ADDS     r0,r0,#1
        LDR      r1,|L9.104|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x14]
        BL       SPI_EnableInterrupt
        POP      {r4-r6,pc}
        ENDP

        DCW      0x0000
|L9.104|
        DCD      transfer_cfg
|L9.108|
        DCD      0x40020000

        AREA ||i.SPI_PinInit||, CODE, READONLY, ALIGN=1

SPI_PinInit PROC
        PUSH     {r4,lr}
        MOV      r4,r0
        LDR      r0,[r4,#8]
        CBNZ     r0,|L10.90|
        MOVS     r2,#3
        MOVS     r1,#0x12
        MOVS     r0,#0
        BL       GPIO_PinFunction
        MOVS     r2,#0
        MOVS     r1,#0x12
        MOV      r0,r2
        BL       GPIO_PinDirection
        MOVS     r2,#3
        MOVS     r1,#0x11
        MOVS     r0,#0
        BL       GPIO_PinFunction
        MOVS     r2,#1
        MOVS     r1,#0x11
        MOVS     r0,#0
        BL       GPIO_PinDirection
        MOVS     r2,#3
        MOVS     r1,#0xf
        MOVS     r0,#0
        BL       GPIO_PinFunction
        MOVS     r2,#0
        MOVS     r1,#0xf
        MOV      r0,r2
        BL       GPIO_PinDirection
        MOVS     r2,#3
        MOVS     r1,#0x10
        MOVS     r0,#0
        BL       GPIO_PinFunction
        MOVS     r2,#0
        MOVS     r1,#0x10
        MOV      r0,r2
        BL       GPIO_PinDirection
        B        |L10.170|
|L10.90|
        MOVS     r2,#3
        MOVS     r1,#0x12
        MOVS     r0,#0
        BL       GPIO_PinFunction
        MOVS     r2,#1
        MOVS     r1,#0x12
        MOVS     r0,#0
        BL       GPIO_PinDirection
        MOVS     r2,#3
        MOVS     r1,#0x11
        MOVS     r0,#0
        BL       GPIO_PinFunction
        MOVS     r2,#0
        MOVS     r1,#0x11
        MOV      r0,r2
        BL       GPIO_PinDirection
        MOVS     r2,#3
        MOVS     r1,#0xf
        MOVS     r0,#0
        BL       GPIO_PinFunction
        MOVS     r2,#1
        MOVS     r1,#0xf
        MOVS     r0,#0
        BL       GPIO_PinDirection
        MOVS     r2,#0
        MOVS     r1,#0x10
        MOV      r0,r2
        BL       GPIO_PinFunction
        MOVS     r2,#1
        MOVS     r1,#0x10
        MOVS     r0,#0
        BL       GPIO_PinDirection
|L10.170|
        POP      {r4,pc}
        ENDP


        AREA ||i.SPI_SetClock||, CODE, READONLY, ALIGN=2

SPI_SetClock PROC
        PUSH     {r4-r7,lr}
        MOV      r2,r0
        MOVS     r4,#0
        LDR      r5,[r2,#0x10]
        LDR      r6,|L11.100|
        LDR      r6,[r6,#0]
        UBFX     r4,r6,#16,#2
        CBZ      r4,|L11.32|
        CMP      r4,#1
        BEQ      |L11.40|
        CMP      r4,#2
        BEQ      |L11.46|
        CMP      r4,#3
        BNE      |L11.62|
        B        |L11.54|
|L11.32|
        LDR      r6,|L11.104|
        LDR      r6,[r6,#0]  ; SystemCoreClock
        LSRS     r0,r6,#2
        B        |L11.62|
|L11.40|
        LDR      r6,|L11.104|
        LDR      r0,[r6,#0]  ; SystemCoreClock
        B        |L11.62|
|L11.46|
        LDR      r6,|L11.104|
        LDR      r6,[r6,#0]  ; SystemCoreClock
        LSRS     r0,r6,#1
        B        |L11.62|
|L11.54|
        LDR      r6,|L11.104|
        LDR      r6,[r6,#0]  ; SystemCoreClock
        LSRS     r0,r6,#3
        NOP      
|L11.62|
        NOP      
        MOVS     r1,#8
        B        |L11.86|
|L11.68|
        MUL      r3,r5,r1
        CMP      r3,r0
        BCC      |L11.78|
        B        |L11.88|
|L11.78|
        ADDS     r1,r1,#2
        CMP      r1,#0xfe
        BCC      |L11.86|
        B        |L11.88|
|L11.86|
        B        |L11.68|
|L11.88|
        NOP      
        UXTB     r6,r1
        LDR      r7,|L11.108|
        STR      r6,[r7,#0xc]
        POP      {r4-r7,pc}
        ENDP

        DCW      0x0000
|L11.100|
        DCD      0x400fc1a8
|L11.104|
        DCD      SystemCoreClock
|L11.108|
        DCD      0x40020000

        AREA ||i.SPI_SlaveReadData||, CODE, READONLY, ALIGN=2

SPI_SlaveReadData PROC
        PUSH     {r4,lr}
        MOVS     r3,#0
        LDR      r4,|L12.56|
        LDR      r4,[r4,#0]  ; transfer_cfg
        STR      r3,[r4,#0]
        LDR      r4,|L12.56|
        LDR      r4,[r4,#0]  ; transfer_cfg
        STR      r3,[r4,#8]
        LDR      r3,|L12.56|
        LDR      r3,[r3,#0]  ; transfer_cfg
        STR      r0,[r3,#0xc]
        LDR      r3,|L12.56|
        LDR      r3,[r3,#0]  ; transfer_cfg
        STR      r1,[r3,#4]
        MOVS     r3,#0
        LDR      r4,|L12.56|
        LDR      r4,[r4,#0]  ; transfer_cfg
        STR      r3,[r4,#0x10]
        LDR      r4,|L12.56|
        LDR      r4,[r4,#0]  ; transfer_cfg
        STR      r3,[r4,#0x14]
        LDR      r3,|L12.60|
        LDR      r2,[r3,#8]
        LDR      r4,|L12.56|
        LDR      r4,[r4,#0]  ; transfer_cfg
        LDR      r4,[r4,#0xc]
        STRB     r2,[r4,#0]
        POP      {r4,pc}
        ENDP

|L12.56|
        DCD      transfer_cfg
|L12.60|
        DCD      0x40020000

        AREA ||i.SPI_SlaveSendData||, CODE, READONLY, ALIGN=2

SPI_SlaveSendData PROC
        PUSH     {r4,lr}
        MOV      r2,r0
        MOV      r3,r1
        MOVS     r0,#0
        LDR      r1,|L13.92|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#4]
        LDR      r1,|L13.92|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0xc]
        LDR      r0,|L13.92|
        LDR      r0,[r0,#0]  ; transfer_cfg
        STR      r2,[r0,#8]
        LDR      r0,|L13.92|
        LDR      r0,[r0,#0]  ; transfer_cfg
        STR      r3,[r0,#0]
        MOVS     r0,#0
        LDR      r1,|L13.92|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x14]
        LDR      r1,|L13.92|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x10]
        LDR      r0,|L13.92|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#8]
        LDRB     r4,[r0,#0]
        LDR      r0,|L13.92|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#8]
        ADDS     r0,r0,#1
        LDR      r1,|L13.92|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#8]
        LDR      r0,|L13.96|
        STR      r4,[r0,#8]
        LDR      r0,|L13.92|
        LDR      r0,[r0,#0]  ; transfer_cfg
        LDR      r0,[r0,#0x14]
        ADDS     r0,r0,#1
        LDR      r1,|L13.92|
        LDR      r1,[r1,#0]  ; transfer_cfg
        STR      r0,[r1,#0x14]
        BL       SPI_EnableInterrupt
        POP      {r4,pc}
        ENDP

|L13.92|
        DCD      transfer_cfg
|L13.96|
        DCD      0x40020000

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.bss||, DATA, NOINIT, ALIGN=2

tran_cfg
        %        28

        AREA ||.data||, DATA, ALIGN=2

transfer_cfg
        DCD      tran_cfg

;*** Start embedded assembler ***

#line 1 "Drivers\\lpc1768_spi.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___13_lpc1768_spi_c_784f3213____REV16|
#line 463 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.4.0\\CMSIS\\Core\\Include\\cmsis_armcc.h"
|__asm___13_lpc1768_spi_c_784f3213____REV16| PROC
#line 464

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___13_lpc1768_spi_c_784f3213____REVSH|
#line 478
|__asm___13_lpc1768_spi_c_784f3213____REVSH| PROC
#line 479

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___13_lpc1768_spi_c_784f3213____RRX|
#line 665
|__asm___13_lpc1768_spi_c_784f3213____RRX| PROC
#line 666

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT SPI_DisableInterrupt [CODE]
        EXPORT SPI_EnableInterrupt [CODE]
        EXPORT SPI_IRQHandler_func [CODE]
        EXPORT SPI_Init [CODE]
        EXPORT SPI_MasterReceiveData [CODE]
        EXPORT SPI_MasterSendData [CODE]
        EXPORT SPI_SlaveReadData [CODE]
        EXPORT SPI_SlaveSendData [CODE]
        EXPORT tran_cfg [DATA,SIZE=28]
        EXPORT transfer_cfg [DATA,SIZE=4]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT SystemCoreClock [DATA]
        IMPORT GPIO_PinFunction [CODE]
        IMPORT GPIO_PinDirection [CODE]
        IMPORT GPIO_PinWrite [CODE]

        KEEP SPI_ControlRegister_Init
        KEEP SPI_Disable
        KEEP SPI_Enable
        KEEP SPI_PinInit
        KEEP SPI_SetClock

        ATTR FILESCOPE
        ATTR SETVALUE Tag_ABI_PCS_wchar_t,2
        ATTR SETVALUE Tag_ABI_enum_size,1
        ATTR SETVALUE Tag_ABI_optimization_goals,6
        ATTR SETSTRING Tag_conformance,"2.09"
        ATTR SETVALUE AV,18,1

        ASSERT {ENDIAN} = "little"
        ASSERT {INTER} = {TRUE}
        ASSERT {ROPI} = {FALSE}
        ASSERT {RWPI} = {FALSE}
        ASSERT {IEEE_FULL} = {FALSE}
        ASSERT {IEEE_PART} = {FALSE}
        ASSERT {IEEE_JAVA} = {FALSE}
        END
