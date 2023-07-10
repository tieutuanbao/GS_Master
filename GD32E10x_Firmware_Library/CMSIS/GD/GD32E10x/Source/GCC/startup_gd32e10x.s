.syntax unified
.cpu cortex-m4
.fpu softvfp
.thumb

.global g_pfnVectors
.global Default_Handler

/* start address for the initialization values of the .data section.
defined in linker script */
.word _sidata
/* start address for the .data section. defined in linker script */
.word _sdata
/* end address for the .data section. defined in linker script */
.word _edata
/* start address for the .bss section. defined in linker script */
.word _sbss
/* end address for the .bss section. defined in linker script */
.word _ebss

/**
 * @brief  This is the code that gets called when the processor first
 *          starts execution following a reset event. Only the absolutely
 *          necessary set is performed, after which the application
 *          supplied main() routine is called.
 * @param  None
 * @retval : None
*/

  .section .text.Reset_Handler
  .weak Reset_Handler
  .type Reset_Handler, %function
Reset_Handler:
  ldr   r0, =_estack
  mov   sp, r0          /* set stack pointer */
/* Call the clock system intitialization function.*/
  bl  SystemInit

/* Copy the data segment initializers from flash to SRAM */
  ldr r0, =_sdata
  ldr r1, =_edata
  ldr r2, =_sidata
  movs r3, #0
  b LoopCopyDataInit

CopyDataInit:
  ldr r4, [r2, r3]
  str r4, [r0, r3]
  adds r3, r3, #4

LoopCopyDataInit:
  adds r4, r0, r3
  cmp r4, r1
  bcc CopyDataInit

/* Zero fill the bss segment. */
  ldr r2, =_sbss
  ldr r4, =_ebss
  movs r3, #0
  b LoopFillZerobss

FillZerobss:
  str  r3, [r2]
  adds r2, r2, #4

LoopFillZerobss:
  cmp r2, r4
  bcc FillZerobss

/* Call static constructors */
  bl __libc_init_array
/* Call the application's entry point.*/
  bl main

LoopForever:
    b LoopForever

  .size Reset_Handler, .-Reset_Handler

/**
 * @brief  This is the code that gets called when the processor receives an
 *         unexpected interrupt.  This simply enters an infinite loop, preserving
 *         the system state for examination by a debugger.
 *
 * @param  None
 * @retval : None
*/
  .section .text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
  b Infinite_Loop
  .size Default_Handler, .-Default_Handler

/******************************************************************************
*
* The STM32F407VGTx vector table.  Note that the proper constructs
* must be placed on this to ensure that it ends up at physical address
* 0x0000.0000.
*
******************************************************************************/
  .section .isr_vector,"a",%progbits
  .type g_pfnVectors, %object
  .size g_pfnVectors, .-g_pfnVectors

g_pfnVectors:
  .word _estack
  .word Reset_Handler                           /* Reset Handler                                                    */
  .word NMI_Handler                             /* NMI Handler                                                      */
  .word HardFault_Handler                       /* Hard Fault Handler                                               */
  .word	MemManage_Handler                       /* MPU Fault Handler                                                */
  .word	BusFault_Handler                        /* Bus Fault Handler                                                */
  .word	UsageFault_Handler                      /* Usage Fault Handler                                              */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	SVC_Handler                             /* SVCall Handler                                                   */
  .word	DebugMon_Handler                        /* Debug Monitor Handler                                            */
  .word	0                                       /* Reserved                                                         */
  .word	PendSV_Handler                          /* PendSV Handler                                                   */
  .word	SysTick_Handler                         /* SysTick Handler                                                  */
  /* external interrupts handler */
  .word	WWDG_IRQHandler              			/* Window Watchdog Timer                                            */
  .word	LVD_IRQHandler               			/* LVD through EXTI line detection interrupt                        */
  .word	TAMPER_IRQHandler        			    /* Tamper and TimeStamp interrupts through the EXTI line            */
  .word	RTC_IRQHandler          			    /* RTC Wakeup interrupt through the EXTI line                       */
  .word	FMC_IRQHandler                    		/* FMC                                                              */
  .word	RCU_CTC_IRQHandler               	    /* RCC global interrupt                                             */
  .word	EXTI0_IRQHandler             			/* EXTI Line0 interrupt                                             */
  .word	EXTI1_IRQHandler             			/* EXTI Line1 interrupt                                             */
  .word	EXTI2_IRQHandler             			/* EXTI Line2 interrupt                                             */
  .word	EXTI3_IRQHandler             			/* EXTI Line3 interrupt                                             */
  .word	EXTI4_IRQHandler             			/* EXTI Line4 interrupt                                             */
  .word	DMA0_Channel0_IRQHandler      			/* DMA1 Stream0 global interrupt                                    */
  .word	DMA0_Channel1_IRQHandler      			/* DMA1 Stream1 global interrupt                                    */
  .word	DMA0_Channel2_IRQHandler      			/* DMA1 Stream2 global interrupt                                    */
  .word	DMA0_Channel3_IRQHandler      			/* DMA1 Stream3 global interrupt                                    */
  .word	DMA0_Channel4_IRQHandler      			/* DMA1 Stream4 global interrupt                                    */
  .word	DMA0_Channel5_IRQHandler      			/* DMA1 Stream5 global interrupt                                    */
  .word	DMA0_Channel6_IRQHandler      			/* DMA1 Stream6 global interrupt                                    */
  .word	ADC0_1_IRQHandler               	    /* ADC0 and ADC1 global interrupts                                  */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	EXTI5_9_IRQHandler           			/* EXTI Line[9:5] interrupts                                        */
  .word	TIMER0_BRK_TIMER8_IRQHandler            /* TIM0 Break and TIM9 global interrupt                             */
  .word	TIMER0_UP_TIMER9_IRQHandler             /* TIM0 Update and TIM10 global interrupt                           */
  .word	TIMER0_TRG_CMT_TIMER10_IRQHandler       /* TIM0 Trigger and Commutation and TIM11 global interrupt          */
  .word	TIMER0_Channel_IRQHandler               /* TIM0 Capture Compare interrupt                                   */
  .word	TIMER1_IRQHandler              			/* TIM1 global interrupt                                            */
  .word	TIMER2_IRQHandler              			/* TIM2 global interrupt                                              */
  .word	TIMER3_IRQHandler              			/* TIM3 global interrupt                                              */
  .word	I2C0_EV_IRQHandler           			/* I2C0 event interrupt                                               */
  .word	I2C0_ER_IRQHandler           			/* I2C0 error interrupt                                               */
  .word	I2C1_EV_IRQHandler           			/* I2C1 event interrupt                                               */
  .word	I2C1_ER_IRQHandler           			/* I2C1 error interrupt                                               */
  .word	SPI0_IRQHandler              			/* SPI0 global interrupt                                              */
  .word	SPI1_IRQHandler              			/* SPI1 global interrupt                                              */
  .word	USART0_IRQHandler            			/* USART0 global interrupt                                            */
  .word	USART1_IRQHandler            			/* USART1 global interrupt                                            */
  .word	USART2_IRQHandler            			/* USART2 global interrupt                                            */
  .word	EXTI10_15_IRQHandler         			/* EXTI Line[15:10] interrupts                                        */
  .word	RTC_Alarm_IRQHandler         			/* RTC Alarms (A and B) through EXTI line interrupt                   */
  .word	USBFS_WKUP_IRQHandler       			/* USB On-The-Go FS Wakeup through EXTI line interrupt                */
  .word	TIMER7_BRK_TIMER11_IRQHandler    		/* TIM8 Break interrupt and TIM12 global interrupt                    */
  .word	TIMER7_UP_TIMER12_IRQHandler     		/* TIM8 Update interrupt and TIM13 global interrupt                   */
  .word	TIMER7_TRG_CMT_TIMER13_IRQHandler		/* TIM8 Trigger and Commutation interrupts and TIM14 global interrupt */
  .word	TIMER7_Channel_IRQHandler          		/* TIM8 Capture Compare interrupt                                     */
  .word	0      									/* DMA1 Stream7 global interrupt                                      */
  .word	EXMC_IRQHandler              			/* FSMC global interrupt                                              */
  .word	0              							/* SDIO global interrupt                                              */
  .word	TIMER4_IRQHandler              			/* TIM4 global interrupt                                              */
  .word	SPI2_IRQHandler              			/* SPI2 global interrupt                                              */
  .word	UART3_IRQHandler             			/* UART3 global interrupt                                             */
  .word	UART4_IRQHandler             			/* UART4 global interrupt                                             */
  .word	TIMER5_IRQHandler          			    /* TIM5 global interrupt, DAC1 and DAC2 underrun error interrupt      */
  .word	TIMER6_IRQHandler              			/* TIM6 global interrupt                                              */
  .word	DMA1_Channel0_IRQHandler      			/* DMA1 Stream0 global interrupt                                      */
  .word	DMA1_Channel1_IRQHandler      			/* DMA1 Stream1 global interrupt                                      */
  .word	DMA1_Channel2_IRQHandler      			/* DMA1 Stream2 global interrupt                                      */
  .word	DMA1_Channel3_IRQHandler      			/* DMA1 Stream3 global interrupt                                      */
  .word	DMA1_Channel4_IRQHandler      			/* DMA1 Stream4 global interrupt                                      */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	0                                       /* Reserved                                                         */
  .word	USBFS_IRQHandler            			/* USB On The Go FS global interrupt                                  */

/*******************************************************************************
*
* Provide weak aliases for each Exception handler to the Default_Handler.
* As they are weak aliases, any function with the same name will override
* this definition.
*
*******************************************************************************/

	.weak	NMI_Handler
	.thumb_set NMI_Handler,Default_Handler

	.weak	HardFault_Handler
	.thumb_set HardFault_Handler,Default_Handler

	.weak	MemManage_Handler
	.thumb_set MemManage_Handler,Default_Handler

	.weak	BusFault_Handler
	.thumb_set BusFault_Handler,Default_Handler

	.weak	UsageFault_Handler
	.thumb_set UsageFault_Handler,Default_Handler

	.weak	SVC_Handler
	.thumb_set SVC_Handler,Default_Handler

	.weak	DebugMon_Handler
	.thumb_set DebugMon_Handler,Default_Handler

	.weak	PendSV_Handler
	.thumb_set PendSV_Handler,Default_Handler

	.weak	SysTick_Handler
	.thumb_set SysTick_Handler,Default_Handler

	.weak	WWDG_IRQHandler
	.thumb_set WWDG_IRQHandler,Default_Handler

	.weak	LVD_IRQHandler
	.thumb_set LVD_IRQHandler,Default_Handler

	.weak	TAMPER_IRQHandler
	.thumb_set TAMPER_IRQHandler,Default_Handler

	.weak	RTC_IRQHandler
	.thumb_set RTC_IRQHandler,Default_Handler

	.weak	FMC_IRQHandler
	.thumb_set FMC_IRQHandler,Default_Handler

	.weak	RCU_CTC_IRQHandler
	.thumb_set RCU_CTC_IRQHandler,Default_Handler

	.weak	EXTI0_IRQHandler
	.thumb_set EXTI0_IRQHandler,Default_Handler

	.weak	EXTI1_IRQHandler
	.thumb_set EXTI1_IRQHandler,Default_Handler

	.weak	EXTI2_IRQHandler
	.thumb_set EXTI2_IRQHandler,Default_Handler

	.weak	EXTI3_IRQHandler
	.thumb_set EXTI3_IRQHandler,Default_Handler

	.weak	EXTI4_IRQHandler
	.thumb_set EXTI4_IRQHandler,Default_Handler

	.weak	DMA0_Channel0_IRQHandler
	.thumb_set DMA0_Channel0_IRQHandler,Default_Handler

	.weak	DMA0_Channel1_IRQHandler
	.thumb_set DMA0_Channel1_IRQHandler,Default_Handler

	.weak	DMA0_Channel2_IRQHandler
	.thumb_set DMA0_Channel2_IRQHandler,Default_Handler

	.weak	DMA0_Channel3_IRQHandler
	.thumb_set DMA0_Channel3_IRQHandler,Default_Handler

	.weak	DMA0_Channel4_IRQHandler
	.thumb_set DMA0_Channel4_IRQHandler,Default_Handler

	.weak	DMA0_Channel5_IRQHandler
	.thumb_set DMA0_Channel5_IRQHandler,Default_Handler

	.weak	DMA0_Channel6_IRQHandler
	.thumb_set DMA0_Channel6_IRQHandler,Default_Handler

	.weak	ADC0_1_IRQHandler
	.thumb_set ADC0_1_IRQHandler,Default_Handler

	.weak	CAN1_TX_IRQHandler
	.thumb_set CAN1_TX_IRQHandler,Default_Handler

	.weak	CAN1_RX0_IRQHandler
	.thumb_set CAN1_RX0_IRQHandler,Default_Handler

	.weak	CAN1_RX1_IRQHandler
	.thumb_set CAN1_RX1_IRQHandler,Default_Handler

	.weak	CAN1_SCE_IRQHandler
	.thumb_set CAN1_SCE_IRQHandler,Default_Handler

	.weak	EXTI5_9_IRQHandler
	.thumb_set EXTI5_9_IRQHandler,Default_Handler

	.weak	TIMER0_BRK_TIMER8_IRQHandler
	.thumb_set TIMER0_BRK_TIMER8_IRQHandler,Default_Handler

	.weak	TIMER0_UP_TIMER9_IRQHandler
	.thumb_set TIMER0_UP_TIMER9_IRQHandler,Default_Handler

	.weak	TIMER0_TRG_CMT_TIMER10_IRQHandler
	.thumb_set TIMER0_TRG_CMT_TIMER10_IRQHandler,Default_Handler

	.weak	TIMER0_Channel_IRQHandler
	.thumb_set TIMER0_Channel_IRQHandler,Default_Handler

	.weak	TIMER1_IRQHandler
	.thumb_set TIMER1_IRQHandler,Default_Handler

	.weak	TIMER2_IRQHandler
	.thumb_set TIMER2_IRQHandler,Default_Handler

	.weak	TIMER3_IRQHandler
	.thumb_set TIMER3_IRQHandler,Default_Handler

	.weak	I2C0_EV_IRQHandler
	.thumb_set I2C0_EV_IRQHandler,Default_Handler

	.weak	I2C0_ER_IRQHandler
	.thumb_set I2C0_ER_IRQHandler,Default_Handler

	.weak	I2C1_EV_IRQHandler
	.thumb_set I2C1_EV_IRQHandler,Default_Handler

	.weak	I2C1_ER_IRQHandler
	.thumb_set I2C1_ER_IRQHandler,Default_Handler

	.weak	SPI0_IRQHandler
	.thumb_set SPI0_IRQHandler,Default_Handler

	.weak	SPI1_IRQHandler
	.thumb_set SPI1_IRQHandler,Default_Handler

	.weak	USART0_IRQHandler
	.thumb_set USART0_IRQHandler,Default_Handler

	.weak	USART1_IRQHandler
	.thumb_set USART1_IRQHandler,Default_Handler

	.weak	USART2_IRQHandler
	.thumb_set USART2_IRQHandler,Default_Handler

	.weak	EXTI10_15_IRQHandler
	.thumb_set EXTI10_15_IRQHandler,Default_Handler

	.weak	RTC_Alarm_IRQHandler
	.thumb_set RTC_Alarm_IRQHandler,Default_Handler

	.weak	USBFS_WKUP_IRQHandler
	.thumb_set USBFS_WKUP_IRQHandler,Default_Handler

	.weak	TIMER7_BRK_TIMER11_IRQHandler
	.thumb_set TIMER7_BRK_TIMER11_IRQHandler,Default_Handler

	.weak	TIMER7_UP_TIMER12_IRQHandler
	.thumb_set TIMER7_UP_TIMER12_IRQHandler,Default_Handler

	.weak	TIMER7_TRG_CMT_TIMER13_IRQHandler
	.thumb_set TIMER7_TRG_CMT_TIMER13_IRQHandler,Default_Handler

	.weak	TIMER7_Channel_IRQHandler
	.thumb_set TIMER7_Channel_IRQHandler,Default_Handler

	.weak	DMA0_Channel7_IRQHandler
	.thumb_set DMA0_Channel7_IRQHandler,Default_Handler

	.weak	EXMC_IRQHandler
	.thumb_set EXMC_IRQHandler,Default_Handler

	.weak	SDIO_IRQHandler
	.thumb_set SDIO_IRQHandler,Default_Handler

	.weak	TIMER4_IRQHandler
	.thumb_set TIMER4_IRQHandler,Default_Handler

	.weak	SPI2_IRQHandler
	.thumb_set SPI2_IRQHandler,Default_Handler

	.weak	UART3_IRQHandler
	.thumb_set UART3_IRQHandler,Default_Handler

	.weak	UART4_IRQHandler
	.thumb_set UART4_IRQHandler,Default_Handler

	.weak	TIMER5_IRQHandler
	.thumb_set TIMER5_IRQHandler,Default_Handler

	.weak	TIMER6_IRQHandler
	.thumb_set TIMER6_IRQHandler,Default_Handler

	.weak	DMA1_Channel0_IRQHandler
	.thumb_set DMA1_Channel0_IRQHandler,Default_Handler

	.weak	DMA1_Channel1_IRQHandler
	.thumb_set DMA1_Channel1_IRQHandler,Default_Handler

	.weak	DMA1_Channel2_IRQHandler
	.thumb_set DMA1_Channel2_IRQHandler,Default_Handler

	.weak	DMA1_Channel3_IRQHandler
	.thumb_set DMA1_Channel3_IRQHandler,Default_Handler

	.weak	DMA1_Channel4_IRQHandler
	.thumb_set DMA1_Channel4_IRQHandler,Default_Handler

	.weak	USBFS_IRQHandler
	.thumb_set USBFS_IRQHandler,Default_Handler

	.weak	SystemInit
