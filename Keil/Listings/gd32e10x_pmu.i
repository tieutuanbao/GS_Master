# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/gd32e10x_pmu.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 386 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/gd32e10x_pmu.c" 2
# 39 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/gd32e10x_pmu.c"
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_pmu.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_pmu.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 113 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h"
typedef enum IRQn
{

    NonMaskableInt_IRQn = -14,
    MemoryManagement_IRQn = -12,
    BusFault_IRQn = -11,
    UsageFault_IRQn = -10,
    SVCall_IRQn = -5,
    DebugMonitor_IRQn = -4,
    PendSV_IRQn = -2,
    SysTick_IRQn = -1,

    WWDGT_IRQn = 0,
    LVD_IRQn = 1,
    TAMPER_IRQn = 2,
    RTC_IRQn = 3,
    FMC_IRQn = 4,
    RCU_CTC_IRQn = 5,
    EXTI0_IRQn = 6,
    EXTI1_IRQn = 7,
    EXTI2_IRQn = 8,
    EXTI3_IRQn = 9,
    EXTI4_IRQn = 10,
    DMA0_Channel0_IRQn = 11,
    DMA0_Channel1_IRQn = 12,
    DMA0_Channel2_IRQn = 13,
    DMA0_Channel3_IRQn = 14,
    DMA0_Channel4_IRQn = 15,
    DMA0_Channel5_IRQn = 16,
    DMA0_Channel6_IRQn = 17,
    ADC0_1_IRQn = 18,
    EXTI5_9_IRQn = 23,
    TIMER0_BRK_TIMER8_IRQn = 24,
    TIMER0_UP_TIMER9_IRQn = 25,
    TIMER0_TRG_CMT_TIMER10_IRQn = 26,
    TIMER0_Channel_IRQn = 27,
    TIMER1_IRQn = 28,
    TIMER2_IRQn = 29,
    TIMER3_IRQn = 30,
    I2C0_EV_IRQn = 31,
    I2C0_ER_IRQn = 32,
    I2C1_EV_IRQn = 33,
    I2C1_ER_IRQn = 34,
    SPI0_IRQn = 35,
    SPI1_IRQn = 36,
    USART0_IRQn = 37,
    USART1_IRQn = 38,
    USART2_IRQn = 39,
    EXTI10_15_IRQn = 40,
    RTC_ALARM_IRQn = 41,
    USBFS_WKUP_IRQn = 42,
    TIMER7_BRK_TIMER11_IRQn = 43,
    TIMER7_UP_TIMER12_IRQn = 44,
    TIMER7_TRG_CMT_TIMER13_IRQn = 45,
    TIMER7_Channel_IRQn = 46,
    EXMC_IRQn = 48,
    TIMER4_IRQn = 50,
    SPI2_IRQn = 51,
    UART3_IRQn = 52,
    UART4_IRQn = 53,
    TIMER5_IRQn = 54,
    TIMER6_IRQn = 55,
    DMA1_Channel0_IRQn = 56,
    DMA1_Channel1_IRQn = 57,
    DMA1_Channel2_IRQn = 58,
    DMA1_Channel3_IRQn = 59,
    DMA1_Channel4_IRQn = 60,
    USBFS_IRQn = 67,

} IRQn_Type;


# 1 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h" 1
# 186 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdint.h" 1 3
# 56 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdint.h" 3
typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;
typedef signed long long int int64_t;


typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long int uint64_t;





typedef signed char int_least8_t;
typedef signed short int int_least16_t;
typedef signed int int_least32_t;
typedef signed long long int int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long int uint_least64_t;




typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed int int_fast32_t;
typedef signed long long int int_fast64_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long int uint_fast64_t;






typedef signed int intptr_t;
typedef unsigned int uintptr_t;



typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
# 187 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h" 2
# 1 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h" 1
# 286 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline void __NOP(void)
{
  __asm volatile ("nop");
}







__attribute__( ( always_inline ) ) static inline void __WFI(void)
{
  __asm volatile ("wfi");
}







__attribute__( ( always_inline ) ) static inline void __WFE(void)
{
  __asm volatile ("wfe");
}






__attribute__( ( always_inline ) ) static inline void __SEV(void)
{
  __asm volatile ("sev");
}
# 330 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline void __ISB(void)
{
  __asm volatile ("isb");
}







__attribute__( ( always_inline ) ) static inline void __DSB(void)
{
  __asm volatile ("dsb");
}







__attribute__( ( always_inline ) ) static inline void __DMB(void)
{
  __asm volatile ("dmb");
}
# 365 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint32_t __REV(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rev %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 381 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint32_t __REV16(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rev16 %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 397 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline int32_t __REVSH(int32_t value)
{
  uint32_t result;

  __asm volatile ("revsh %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 414 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{

  __asm volatile ("ror %0, %0, %1" : "+r" (op1) : "r" (op2) );
  return(op1);
}
# 431 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint32_t __RBIT(uint32_t value)
{
  uint32_t result;

   __asm volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
   return(result);
}
# 447 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint8_t __LDREXB(volatile uint8_t *addr)
{
    uint8_t result;

   __asm volatile ("ldrexb %0, [%1]" : "=r" (result) : "r" (addr) );
   return(result);
}
# 463 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint16_t __LDREXH(volatile uint16_t *addr)
{
    uint16_t result;

   __asm volatile ("ldrexh %0, [%1]" : "=r" (result) : "r" (addr) );
   return(result);
}
# 479 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint32_t __LDREXW(volatile uint32_t *addr)
{
    uint32_t result;

   __asm volatile ("ldrex %0, [%1]" : "=r" (result) : "r" (addr) );
   return(result);
}
# 497 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint32_t __STREXB(uint8_t value, volatile uint8_t *addr)
{
   uint32_t result;

   __asm volatile ("strexb %0, %2, [%1]" : "=&r" (result) : "r" (addr), "r" (value) );
   return(result);
}
# 515 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint32_t __STREXH(uint16_t value, volatile uint16_t *addr)
{
   uint32_t result;

   __asm volatile ("strexh %0, %2, [%1]" : "=&r" (result) : "r" (addr), "r" (value) );
   return(result);
}
# 533 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint32_t __STREXW(uint32_t value, volatile uint32_t *addr)
{
   uint32_t result;

   __asm volatile ("strex %0, %2, [%1]" : "=&r" (result) : "r" (addr), "r" (value) );
   return(result);
}







__attribute__( ( always_inline ) ) static inline void __CLREX(void)
{
  __asm volatile ("clrex");
}
# 592 "../GD32E10x_Firmware_Library/CMSIS\\core_cmInstr.h"
__attribute__( ( always_inline ) ) static inline uint8_t __CLZ(uint32_t value)
{
  uint8_t result;

  __asm volatile ("clz %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 188 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h" 2
# 1 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h" 1
# 315 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline void __enable_irq(void)
{
  __asm volatile ("cpsie i");
}







__attribute__( ( always_inline ) ) static inline void __disable_irq(void)
{
  __asm volatile ("cpsid i");
}
# 338 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}
# 353 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) );
}
# 365 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return(result);
}
# 380 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return(result);
}
# 395 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return(result);
}
# 410 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_PSP(void)
{
  register uint32_t result;

  __asm volatile ("MRS %0, psp\n" : "=r" (result) );
  return(result);
}
# 425 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0\n" : : "r" (topOfProcStack) );
}
# 437 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_MSP(void)
{
  register uint32_t result;

  __asm volatile ("MRS %0, msp\n" : "=r" (result) );
  return(result);
}
# 452 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0\n" : : "r" (topOfMainStack) );
}
# 464 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) );
  return(result);
}
# 479 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) );
}
# 492 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline void __enable_fault_irq(void)
{
  __asm volatile ("cpsie f");
}







__attribute__( ( always_inline ) ) static inline void __disable_fault_irq(void)
{
  __asm volatile ("cpsid f");
}
# 515 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_BASEPRI(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, basepri_max" : "=r" (result) );
  return(result);
}
# 530 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline void __set_BASEPRI(uint32_t value)
{
  __asm volatile ("MSR basepri, %0" : : "r" (value) );
}
# 542 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_FAULTMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, faultmask" : "=r" (result) );
  return(result);
}
# 557 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline void __set_FAULTMASK(uint32_t faultMask)
{
  __asm volatile ("MSR faultmask, %0" : : "r" (faultMask) );
}
# 573 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_FPSCR(void)
{

  uint32_t result;

  __asm volatile ("VMRS %0, fpscr" : "=r" (result) );
  return(result);



}
# 592 "../GD32E10x_Firmware_Library/CMSIS\\core_cmFunc.h"
__attribute__( ( always_inline ) ) static inline void __set_FPSCR(uint32_t fpscr)
{

  __asm volatile ("VMSR fpscr, %0" : : "r" (fpscr) );

}
# 189 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h" 2
# 1 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4_simd.h" 1
# 135 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4_simd.h"
__attribute__( ( always_inline ) ) static inline uint32_t __SADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__( ( always_inline ) ) static inline uint32_t __SSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__( ( always_inline ) ) static inline uint32_t __SADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USAD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usad8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USADA8(uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("usada8 %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}
# 455 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4_simd.h"
__attribute__( ( always_inline ) ) static inline uint32_t __UXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("uxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("sxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUAD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuad %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUADX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuadx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLAD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlad %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLADX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smladx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLALD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlald %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLALDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlaldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUSD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUSDX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusdx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLSD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsd %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLSDX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsdx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLSLD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsld %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLSLDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SEL (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sel %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QADD(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QSUB(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}
# 660 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4_simd.h"
__attribute__( ( always_inline ) ) static inline uint32_t __SMMLA (int32_t op1, int32_t op2, int32_t op3)
{
 int32_t result;

 __asm volatile ("smmla %0, %1, %2, %3" : "=r" (result): "r" (op1), "r" (op2), "r" (op3) );
 return(result);
}
# 190 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h" 2
# 269 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
typedef union
{
  struct
  {



    uint32_t _reserved0:16;
    uint32_t GE:4;
    uint32_t _reserved1:7;

    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} APSR_Type;




typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:23;
  } b;
  uint32_t w;
} IPSR_Type;




typedef union
{
  struct
  {
    uint32_t ISR:9;



    uint32_t _reserved0:7;
    uint32_t GE:4;
    uint32_t _reserved1:4;

    uint32_t T:1;
    uint32_t IT:2;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} xPSR_Type;




typedef union
{
  struct
  {
    uint32_t nPRIV:1;
    uint32_t SPSEL:1;
    uint32_t FPCA:1;
    uint32_t _reserved0:29;
  } b;
  uint32_t w;
} CONTROL_Type;
# 354 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
typedef struct
{
  volatile uint32_t ISER[8];
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];
       uint32_t RESERVED4[56];
  volatile uint8_t IP[240];
       uint32_t RESERVED5[644];
  volatile uint32_t STIR;
} NVIC_Type;
# 386 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;
  volatile uint32_t VTOR;
  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
  volatile uint8_t SHP[12];
  volatile uint32_t SHCSR;
  volatile uint32_t CFSR;
  volatile uint32_t HFSR;
  volatile uint32_t DFSR;
  volatile uint32_t MMFAR;
  volatile uint32_t BFAR;
  volatile uint32_t AFSR;
  volatile const uint32_t PFR[2];
  volatile const uint32_t DFR;
  volatile const uint32_t ADR;
  volatile const uint32_t MMFR[4];
  volatile const uint32_t ISAR[5];
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;
} SCB_Type;
# 603 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const uint32_t ICTR;
  volatile uint32_t ACTLR;
} SCnSCB_Type;
# 641 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 691 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
typedef struct
{
  volatile union
  {
    volatile uint8_t u8;
    volatile uint16_t u16;
    volatile uint32_t u32;
  } PORT [32];
       uint32_t RESERVED0[864];
  volatile uint32_t TER;
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;
       uint32_t RESERVED3[29];
  volatile uint32_t IWR;
  volatile const uint32_t IRR;
  volatile uint32_t IMCR;
       uint32_t RESERVED4[43];
  volatile uint32_t LAR;
  volatile const uint32_t LSR;
       uint32_t RESERVED5[6];
  volatile const uint32_t PID4;
  volatile const uint32_t PID5;
  volatile const uint32_t PID6;
  volatile const uint32_t PID7;
  volatile const uint32_t PID0;
  volatile const uint32_t PID1;
  volatile const uint32_t PID2;
  volatile const uint32_t PID3;
  volatile const uint32_t CID0;
  volatile const uint32_t CID1;
  volatile const uint32_t CID2;
  volatile const uint32_t CID3;
} ITM_Type;
# 792 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t CYCCNT;
  volatile uint32_t CPICNT;
  volatile uint32_t EXCCNT;
  volatile uint32_t SLEEPCNT;
  volatile uint32_t LSUCNT;
  volatile uint32_t FOLDCNT;
  volatile const uint32_t PCSR;
  volatile uint32_t COMP0;
  volatile uint32_t MASK0;
  volatile uint32_t FUNCTION0;
       uint32_t RESERVED0[1];
  volatile uint32_t COMP1;
  volatile uint32_t MASK1;
  volatile uint32_t FUNCTION1;
       uint32_t RESERVED1[1];
  volatile uint32_t COMP2;
  volatile uint32_t MASK2;
  volatile uint32_t FUNCTION2;
       uint32_t RESERVED2[1];
  volatile uint32_t COMP3;
  volatile uint32_t MASK3;
  volatile uint32_t FUNCTION3;
} DWT_Type;
# 937 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
typedef struct
{
  volatile uint32_t SSPSR;
  volatile uint32_t CSPSR;
       uint32_t RESERVED0[2];
  volatile uint32_t ACPR;
       uint32_t RESERVED1[55];
  volatile uint32_t SPPR;
       uint32_t RESERVED2[131];
  volatile const uint32_t FFSR;
  volatile uint32_t FFCR;
  volatile const uint32_t FSCR;
       uint32_t RESERVED3[759];
  volatile const uint32_t TRIGGER;
  volatile const uint32_t FIFO0;
  volatile const uint32_t ITATBCTR2;
       uint32_t RESERVED4[1];
  volatile const uint32_t ITATBCTR0;
  volatile const uint32_t FIFO1;
  volatile uint32_t ITCTRL;
       uint32_t RESERVED5[39];
  volatile uint32_t CLAIMSET;
  volatile uint32_t CLAIMCLR;
       uint32_t RESERVED7[8];
  volatile const uint32_t DEVID;
  volatile const uint32_t DEVTYPE;
} TPI_Type;
# 1184 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
typedef struct
{
       uint32_t RESERVED0[1];
  volatile uint32_t FPCCR;
  volatile uint32_t FPCAR;
  volatile uint32_t FPDSCR;
  volatile const uint32_t MVFR0;
  volatile const uint32_t MVFR1;
} FPU_Type;
# 1289 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
typedef struct
{
  volatile uint32_t DHCSR;
  volatile uint32_t DCRSR;
  volatile uint32_t DCRDR;
  volatile uint32_t DEMCR;
} CoreDebug_Type;
# 1453 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);

  reg_value = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));
  reg_value = (reg_value |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = reg_value;
}
# 1473 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);
}
# 1485 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{

  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F));
}
# 1498 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));
}
# 1514 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}
# 1526 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));
}
# 1538 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));
}
# 1553 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}
# 1568 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff); }
}
# 1588 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4))); }
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] >> (8 - 4))); }
}
# 1610 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority & ((1 << (SubPriorityBits )) - 1)))
         );
}
# 1638 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority = (Priority ) & ((1 << (SubPriorityBits )) - 1);
}






static inline void NVIC_SystemReset(void)
{
  __DSB();

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = ((0x5FA << 16) |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));
  __DSB();
  while(1);
}
# 1695 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0)) return (1);

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = ticks - 1;
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2) |
                   (1UL << 1) |
                   (1UL << 0);
  return (0);
}
# 1721 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
extern volatile int32_t ITM_RxBuffer;
# 1735 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0)) &&
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0) ) )
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}
# 1754 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;
  }

  return (ch);
}
# 1773 "../GD32E10x_Firmware_Library/CMSIS\\core_cm4.h"
static inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);
  } else {
    return (1);
  }
}
# 186 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 2
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include/system_gd32e10x.h" 1
# 46 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include/system_gd32e10x.h"
extern uint32_t SystemCoreClock;



extern void SystemInit (void);

extern void SystemCoreClockUpdate (void);
# 187 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 2



typedef enum {DISABLE = 0, ENABLE = !DISABLE} EventStatus, ControlStatus;
typedef enum {RESET = 0, SET = !RESET} FlagStatus;
typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrStatus;
# 247 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h"
# 1 "../source\\gd32e10x_libopt.h" 1
# 41 "../source\\gd32e10x_libopt.h"
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_rcu.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_rcu.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_rcu.h" 2
# 302 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_rcu.h"
typedef enum
{

    RCU_DMA0 = (((uint32_t)(0x14U) << 6) | (uint32_t)(0U)),
    RCU_DMA1 = (((uint32_t)(0x14U) << 6) | (uint32_t)(1U)),
    RCU_CRC = (((uint32_t)(0x14U) << 6) | (uint32_t)(6U)),
    RCU_EXMC = (((uint32_t)(0x14U) << 6) | (uint32_t)(8U)),
    RCU_USBFS = (((uint32_t)(0x14U) << 6) | (uint32_t)(12U)),


    RCU_TIMER1 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(0U)),
    RCU_TIMER2 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(1U)),
    RCU_TIMER3 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(2U)),
    RCU_TIMER4 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(3U)),
    RCU_TIMER5 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(4U)),
    RCU_TIMER6 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(5U)),

    RCU_TIMER11 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(6U)),
    RCU_TIMER12 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(7U)),
    RCU_TIMER13 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(8U)),

    RCU_WWDGT = (((uint32_t)(0x1CU) << 6) | (uint32_t)(11U)),
    RCU_SPI1 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(14U)),
    RCU_SPI2 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(15U)),
    RCU_USART1 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(17U)),
    RCU_USART2 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(18U)),
    RCU_UART3 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(19U)),
    RCU_UART4 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(20U)),
    RCU_I2C0 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(21U)),
    RCU_I2C1 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(22U)),

    RCU_BKPI = (((uint32_t)(0x1CU) << 6) | (uint32_t)(27U)),
    RCU_PMU = (((uint32_t)(0x1CU) << 6) | (uint32_t)(28U)),
    RCU_DAC = (((uint32_t)(0x1CU) << 6) | (uint32_t)(29U)),
    RCU_RTC = (((uint32_t)(0x20U) << 6) | (uint32_t)(15U)),
    RCU_CTC = (((uint32_t)(0xE4U) << 6) | (uint32_t)(27U)),


    RCU_AF = (((uint32_t)(0x18U) << 6) | (uint32_t)(0U)),
    RCU_GPIOA = (((uint32_t)(0x18U) << 6) | (uint32_t)(2U)),
    RCU_GPIOB = (((uint32_t)(0x18U) << 6) | (uint32_t)(3U)),
    RCU_GPIOC = (((uint32_t)(0x18U) << 6) | (uint32_t)(4U)),
    RCU_GPIOD = (((uint32_t)(0x18U) << 6) | (uint32_t)(5U)),
    RCU_GPIOE = (((uint32_t)(0x18U) << 6) | (uint32_t)(6U)),
    RCU_ADC0 = (((uint32_t)(0x18U) << 6) | (uint32_t)(9U)),
    RCU_ADC1 = (((uint32_t)(0x18U) << 6) | (uint32_t)(10U)),
    RCU_TIMER0 = (((uint32_t)(0x18U) << 6) | (uint32_t)(11U)),
    RCU_SPI0 = (((uint32_t)(0x18U) << 6) | (uint32_t)(12U)),
    RCU_TIMER7 = (((uint32_t)(0x18U) << 6) | (uint32_t)(13U)),
    RCU_USART0 = (((uint32_t)(0x18U) << 6) | (uint32_t)(14U)),

    RCU_TIMER8 = (((uint32_t)(0x18U) << 6) | (uint32_t)(19U)),
    RCU_TIMER9 = (((uint32_t)(0x18U) << 6) | (uint32_t)(20U)),
    RCU_TIMER10 = (((uint32_t)(0x18U) << 6) | (uint32_t)(21U)),

}rcu_periph_enum;


typedef enum
{

    RCU_SRAM_SLP = (((uint32_t)(0x14U) << 6) | (uint32_t)(2U)),
    RCU_FMC_SLP = (((uint32_t)(0x14U) << 6) | (uint32_t)(4U)),
}rcu_periph_sleep_enum;


typedef enum
{

    RCU_USBFSRST = (((uint32_t)(0x28U) << 6) | (uint32_t)(12U)),


    RCU_TIMER1RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(0U)),
    RCU_TIMER2RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(1U)),
    RCU_TIMER3RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(2U)),
    RCU_TIMER4RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(3U)),
    RCU_TIMER5RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(4U)),
    RCU_TIMER6RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(5U)),
    RCU_TIMER11RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(6U)),
    RCU_TIMER12RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(7U)),
    RCU_TIMER13RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(8U)),
    RCU_WWDGTRST = (((uint32_t)(0x10U) << 6) | (uint32_t)(11U)),
    RCU_SPI1RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(14U)),
    RCU_SPI2RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(15U)),
    RCU_USART1RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(17U)),
    RCU_USART2RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(18U)),
    RCU_UART3RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(19U)),
    RCU_UART4RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(20U)),
    RCU_I2C0RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(21U)),
    RCU_I2C1RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(22U)),

    RCU_BKPIRST = (((uint32_t)(0x10U) << 6) | (uint32_t)(27U)),
    RCU_PMURST = (((uint32_t)(0x10U) << 6) | (uint32_t)(28U)),
    RCU_DACRST = (((uint32_t)(0x10U) << 6) | (uint32_t)(29U)),
    RCU_CTCRST = (((uint32_t)(0xE0U) << 6) | (uint32_t)(27U)),


    RCU_AFRST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(0U)),
    RCU_GPIOARST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(2U)),
    RCU_GPIOBRST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(3U)),
    RCU_GPIOCRST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(4U)),
    RCU_GPIODRST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(5U)),
    RCU_GPIOERST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(6U)),
    RCU_ADC0RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(9U)),
    RCU_ADC1RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(10U)),
    RCU_TIMER0RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(11U)),
    RCU_SPI0RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(12U)),
    RCU_TIMER7RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(13U)),
    RCU_USART0RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(14U)),
    RCU_TIMER8RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(19U)),
    RCU_TIMER9RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(20U)),
    RCU_TIMER10RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(21U)),

}rcu_periph_reset_enum;


typedef enum
{

    RCU_FLAG_IRC8MSTB = (((uint32_t)(0x00U) << 6) | (uint32_t)(1U)),
    RCU_FLAG_HXTALSTB = (((uint32_t)(0x00U) << 6) | (uint32_t)(17U)),
    RCU_FLAG_PLLSTB = (((uint32_t)(0x00U) << 6) | (uint32_t)(25U)),
    RCU_FLAG_PLL1STB = (((uint32_t)(0x00U) << 6) | (uint32_t)(27U)),
    RCU_FLAG_PLL2STB = (((uint32_t)(0x00U) << 6) | (uint32_t)(29U)),
    RCU_FLAG_LXTALSTB = (((uint32_t)(0x20U) << 6) | (uint32_t)(1U)),
    RCU_FLAG_IRC40KSTB = (((uint32_t)(0x24U) << 6) | (uint32_t)(1U)),
    RCU_FLAG_IRC48MSTB = (((uint32_t)(0xC0U) << 6) | (uint32_t)(17U)),

    RCU_FLAG_EPRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(26U)),
    RCU_FLAG_PORRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(27U)),
    RCU_FLAG_SWRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(28U)),
    RCU_FLAG_FWDGTRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(29U)),
    RCU_FLAG_WWDGTRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(30U)),
    RCU_FLAG_LPRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(31U)),
}rcu_flag_enum;


typedef enum
{
    RCU_INT_FLAG_IRC40KSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(0U)),
    RCU_INT_FLAG_LXTALSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(1U)),
    RCU_INT_FLAG_IRC8MSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(2U)),
    RCU_INT_FLAG_HXTALSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(3U)),
    RCU_INT_FLAG_PLLSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(4U)),
    RCU_INT_FLAG_PLL1STB = (((uint32_t)(0x08U) << 6) | (uint32_t)(5U)),
    RCU_INT_FLAG_PLL2STB = (((uint32_t)(0x08U) << 6) | (uint32_t)(6U)),
    RCU_INT_FLAG_CKM = (((uint32_t)(0x08U) << 6) | (uint32_t)(7U)),
    RCU_INT_FLAG_IRC48MSTB = (((uint32_t)(0xCCU) << 6) | (uint32_t)(6U)),
}rcu_int_flag_enum;


typedef enum
{
    RCU_INT_FLAG_IRC40KSTB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(16U)),
    RCU_INT_FLAG_LXTALSTB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(17U)),
    RCU_INT_FLAG_IRC8MSTB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(18U)),
    RCU_INT_FLAG_HXTALSTB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(19U)),
    RCU_INT_FLAG_PLLSTB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(20U)),
    RCU_INT_FLAG_PLL1STB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(21U)),
    RCU_INT_FLAG_PLL2STB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(22U)),
    RCU_INT_FLAG_CKM_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(23U)),
    RCU_INT_FLAG_IRC48MSTB_CLR = (((uint32_t)(0xCCU) << 6) | (uint32_t)(22U)),
}rcu_int_flag_clear_enum;


typedef enum
{
    RCU_INT_IRC40KSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(8U)),
    RCU_INT_LXTALSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(9U)),
    RCU_INT_IRC8MSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(10U)),
    RCU_INT_HXTALSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(11U)),
    RCU_INT_PLLSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(12U)),
    RCU_INT_PLL1STB = (((uint32_t)(0x08U) << 6) | (uint32_t)(13U)),
    RCU_INT_PLL2STB = (((uint32_t)(0x08U) << 6) | (uint32_t)(14U)),
    RCU_INT_IRC48MSTB = (((uint32_t)(0xCCU) << 6) | (uint32_t)(14U)),
}rcu_int_enum;


typedef enum
{
    RCU_HXTAL = (((uint32_t)(0x00U) << 6) | (uint32_t)(16U)),
    RCU_LXTAL = (((uint32_t)(0x20U) << 6) | (uint32_t)(0U)),
    RCU_IRC8M = (((uint32_t)(0x00U) << 6) | (uint32_t)(0U)),
    RCU_IRC48M = (((uint32_t)(0xC0U) << 6) | (uint32_t)(16U)),
    RCU_IRC40K = (((uint32_t)(0x24U) << 6) | (uint32_t)(0U)),
    RCU_PLL_CK = (((uint32_t)(0x00U) << 6) | (uint32_t)(24U)),
    RCU_PLL1_CK = (((uint32_t)(0x00U) << 6) | (uint32_t)(26U)),
    RCU_PLL2_CK = (((uint32_t)(0x00U) << 6) | (uint32_t)(28U)),
}rcu_osci_type_enum;


typedef enum
{
    CK_SYS = 0,
    CK_AHB,
    CK_APB1,
    CK_APB2,
}rcu_clock_freq_enum;
# 724 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_rcu.h"
void rcu_deinit(void);

void rcu_periph_clock_enable(rcu_periph_enum periph);

void rcu_periph_clock_disable(rcu_periph_enum periph);

void rcu_periph_clock_sleep_enable(rcu_periph_sleep_enum periph);

void rcu_periph_clock_sleep_disable(rcu_periph_sleep_enum periph);

void rcu_periph_reset_enable(rcu_periph_reset_enum periph_reset);

void rcu_periph_reset_disable(rcu_periph_reset_enum periph_reset);

void rcu_bkp_reset_enable(void);

void rcu_bkp_reset_disable(void);



void rcu_system_clock_source_config(uint32_t ck_sys);

uint32_t rcu_system_clock_source_get(void);

void rcu_ahb_clock_config(uint32_t ck_ahb);

void rcu_apb1_clock_config(uint32_t ck_apb1);

void rcu_apb2_clock_config(uint32_t ck_apb2);

void rcu_ckout0_config(uint32_t ckout0_src);

void rcu_pll_config(uint32_t pll_src, uint32_t pll_mul);

void rcu_pllpresel_config(uint32_t pll_presel);

void rcu_predv0_config(uint32_t predv0_source, uint32_t predv0_div);

void rcu_predv1_config(uint32_t predv1_div);

void rcu_pll1_config(uint32_t pll_mul);

void rcu_pll2_config(uint32_t pll_mul);


void rcu_adc_clock_config(uint32_t adc_psc);

void rcu_usb_clock_config(uint32_t usb_psc);

void rcu_rtc_clock_config(uint32_t rtc_clock_source);

void rcu_i2s1_clock_config(uint32_t i2s_clock_source);

void rcu_i2s2_clock_config(uint32_t i2s_clock_source);

void rcu_ck48m_clock_config(uint32_t ck48m_clock_source);



void rcu_lxtal_drive_capability_config(uint32_t lxtal_dricap);

ErrStatus rcu_osci_stab_wait(rcu_osci_type_enum osci);

void rcu_osci_on(rcu_osci_type_enum osci);

void rcu_osci_off(rcu_osci_type_enum osci);

void rcu_osci_bypass_mode_enable(rcu_osci_type_enum osci);

void rcu_osci_bypass_mode_disable(rcu_osci_type_enum osci);

void rcu_irc8m_adjust_value_set(uint32_t irc8m_adjval);



void rcu_hxtal_clock_monitor_enable(void);

void rcu_hxtal_clock_monitor_disable(void);



void rcu_deepsleep_voltage_set(uint32_t dsvol);

uint32_t rcu_clock_freq_get(rcu_clock_freq_enum clock);



FlagStatus rcu_flag_get(rcu_flag_enum flag);

void rcu_all_reset_flag_clear(void);

FlagStatus rcu_interrupt_flag_get(rcu_int_flag_enum int_flag);

void rcu_interrupt_flag_clear(rcu_int_flag_clear_enum int_flag_clear);

void rcu_interrupt_enable(rcu_int_enum stab_int);

void rcu_interrupt_disable(rcu_int_enum stab_int);
# 42 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_adc.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_adc.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_adc.h" 2
# 310 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_adc.h"
void adc_deinit(uint32_t adc_periph);

void adc_mode_config(uint32_t mode);

void adc_special_function_config(uint32_t adc_periph , uint32_t function , ControlStatus newvalue);

void adc_data_alignment_config(uint32_t adc_periph , uint32_t data_alignment);

void adc_enable(uint32_t adc_periph);

void adc_disable(uint32_t adc_periph);

void adc_calibration_enable(uint32_t adc_periph);

void adc_tempsensor_vrefint_enable(void);

void adc_tempsensor_vrefint_disable(void);

void adc_resolution_config(uint32_t adc_periph, uint32_t resolution);

void adc_oversample_mode_config(uint32_t adc_periph, uint32_t mode, uint16_t shift, uint8_t ratio);

void adc_oversample_mode_enable(uint32_t adc_periph);

void adc_oversample_mode_disable(uint32_t adc_periph);



void adc_dma_mode_enable(uint32_t adc_periph);

void adc_dma_mode_disable(uint32_t adc_periph);



void adc_discontinuous_mode_config(uint32_t adc_periph, uint8_t adc_channel_group, uint8_t length);

void adc_channel_length_config(uint32_t adc_periph, uint8_t adc_channel_group, uint32_t length);

void adc_regular_channel_config(uint32_t adc_periph, uint8_t rank, uint8_t adc_channel, uint32_t sample_time);

void adc_inserted_channel_config(uint32_t adc_periph, uint8_t rank, uint8_t adc_channel, uint32_t sample_time);

void adc_inserted_channel_offset_config(uint32_t adc_periph, uint8_t inserted_channel, uint16_t offset);

void adc_external_trigger_source_config(uint32_t adc_periph, uint8_t adc_channel_group, uint32_t external_trigger_source);

void adc_external_trigger_config(uint32_t adc_periph, uint8_t adc_channel_group, ControlStatus newvalue);

void adc_software_trigger_enable(uint32_t adc_periph, uint8_t adc_channel_group);



uint16_t adc_regular_data_read(uint32_t adc_periph);

uint16_t adc_inserted_data_read(uint32_t adc_periph, uint8_t inserted_channel);

uint32_t adc_sync_mode_convert_value_read(void);



void adc_watchdog_single_channel_enable(uint32_t adc_periph, uint8_t adc_channel);

void adc_watchdog_group_channel_enable(uint32_t adc_periph, uint8_t adc_channel_group);

void adc_watchdog_disable(uint32_t adc_periph);

void adc_watchdog_threshold_config(uint32_t adc_periph, uint16_t low_threshold, uint16_t high_threshold);



FlagStatus adc_flag_get(uint32_t adc_periph, uint32_t adc_flag);

void adc_flag_clear(uint32_t adc_periph, uint32_t adc_flag);

FlagStatus adc_regular_software_startconv_flag_get(uint32_t adc_periph);

FlagStatus adc_inserted_software_startconv_flag_get(uint32_t adc_periph);

FlagStatus adc_interrupt_flag_get(uint32_t adc_periph, uint32_t adc_interrupt);

void adc_interrupt_flag_clear(uint32_t adc_periph, uint32_t adc_interrupt);

void adc_interrupt_enable(uint32_t adc_periph, uint32_t adc_interrupt);

void adc_interrupt_disable(uint32_t adc_periph, uint32_t adc_interrupt);
# 43 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_crc.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_crc.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_crc.h" 2
# 64 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_crc.h"
void crc_deinit(void);


void crc_data_register_reset(void);

uint32_t crc_data_register_read(void);


uint8_t crc_free_data_register_read(void);

void crc_free_data_register_write(uint8_t free_data);


uint32_t crc_single_data_calculate(uint32_t sdata);

uint32_t crc_block_data_calculate(const uint32_t *array, uint32_t size);
# 44 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_ctc.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_ctc.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_ctc.h" 2
# 138 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_ctc.h"
void ctc_deinit(void);

void ctc_counter_enable(void);

void ctc_counter_disable(void);


void ctc_irc48m_trim_value_config(uint8_t trim_value);

void ctc_software_refsource_pulse_generate(void);

void ctc_hardware_trim_mode_config(uint32_t hardmode);


void ctc_refsource_polarity_config(uint32_t polarity);

void ctc_refsource_signal_select(uint32_t refs);

void ctc_refsource_prescaler_config(uint32_t prescaler);

void ctc_clock_limit_value_config(uint8_t limit_value);

void ctc_counter_reload_value_config(uint16_t reload_value);


uint16_t ctc_counter_capture_value_read(void);

FlagStatus ctc_counter_direction_read(void);

uint16_t ctc_counter_reload_value_read(void);

uint8_t ctc_irc48m_trim_value_read(void);



void ctc_interrupt_enable(uint32_t interrupt);

void ctc_interrupt_disable(uint32_t interrupt);

FlagStatus ctc_interrupt_flag_get(uint32_t interrupt);

void ctc_interrupt_flag_clear(uint32_t interrupt);

FlagStatus ctc_flag_get(uint32_t flag);

void ctc_flag_clear(uint32_t flag);
# 45 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dac.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dac.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dac.h" 2
# 190 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dac.h"
void dac_deinit(void);

void dac_enable(uint32_t dac_periph);

void dac_disable(uint32_t dac_periph);

void dac_dma_enable(uint32_t dac_periph);

void dac_dma_disable(uint32_t dac_periph);

void dac_output_buffer_enable(uint32_t dac_periph);

void dac_output_buffer_disable(uint32_t dac_periph);

uint16_t dac_output_value_get(uint32_t dac_periph);

void dac_data_set(uint32_t dac_periph, uint32_t dac_align, uint16_t data);



void dac_trigger_enable(uint32_t dac_periph);

void dac_trigger_disable(uint32_t dac_periph);

void dac_trigger_source_config(uint32_t dac_periph, uint32_t triggersource);

void dac_software_trigger_enable(uint32_t dac_periph);

void dac_software_trigger_disable(uint32_t dac_periph);



void dac_wave_mode_config(uint32_t dac_periph, uint32_t wave_mode);

void dac_wave_bit_width_config(uint32_t dac_periph, uint32_t bit_width);

void dac_lfsr_noise_config(uint32_t dac_periph, uint32_t unmask_bits);

void dac_triangle_noise_config(uint32_t dac_periph, uint32_t amplitude);



void dac_concurrent_enable(void);

void dac_concurrent_disable(void);

void dac_concurrent_software_trigger_enable(void);

void dac_concurrent_software_trigger_disable(void);

void dac_concurrent_output_buffer_enable(void);

void dac_concurrent_output_buffer_disable(void);

void dac_concurrent_data_set(uint32_t dac_align, uint16_t data0, uint16_t data1);
# 46 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dbg.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dbg.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dbg.h" 2
# 84 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dbg.h"
typedef enum
{
    DBG_FWDGT_HOLD = ((uint32_t)((uint32_t)0x01U<<(8))),
    DBG_WWDGT_HOLD = ((uint32_t)((uint32_t)0x01U<<(9))),
    DBG_TIMER0_HOLD = ((uint32_t)((uint32_t)0x01U<<(10))),
    DBG_TIMER1_HOLD = ((uint32_t)((uint32_t)0x01U<<(11))),
    DBG_TIMER2_HOLD = ((uint32_t)((uint32_t)0x01U<<(12))),
    DBG_TIMER3_HOLD = ((uint32_t)((uint32_t)0x01U<<(13))),
    DBG_I2C0_HOLD = ((uint32_t)((uint32_t)0x01U<<(15))),
    DBG_I2C1_HOLD = ((uint32_t)((uint32_t)0x01U<<(16))),
    DBG_TIMER4_HOLD = ((uint32_t)((uint32_t)0x01U<<(17))),
    DBG_TIMER5_HOLD = ((uint32_t)((uint32_t)0x01U<<(18))),
    DBG_TIMER6_HOLD = ((uint32_t)((uint32_t)0x01U<<(19))),
    DBG_TIMER7_HOLD = ((uint32_t)((uint32_t)0x01U<<(20))),
    DBG_TIMER11_HOLD = ((uint32_t)((uint32_t)0x01U<<(25))),
    DBG_TIMER12_HOLD = ((uint32_t)((uint32_t)0x01U<<(26))),
    DBG_TIMER13_HOLD = ((uint32_t)((uint32_t)0x01U<<(27))),
    DBG_TIMER8_HOLD = ((uint32_t)((uint32_t)0x01U<<(28))),
    DBG_TIMER9_HOLD = ((uint32_t)((uint32_t)0x01U<<(29))),
    DBG_TIMER10_HOLD = ((uint32_t)((uint32_t)0x01U<<(30))),
}dbg_periph_enum;



uint32_t dbg_id_get(void);


void dbg_low_power_enable(uint32_t dbg_low_power);

void dbg_low_power_disable(uint32_t dbg_low_power);


void dbg_periph_enable(dbg_periph_enum dbg_periph);

void dbg_periph_disable(dbg_periph_enum dbg_periph);


void dbg_trace_pin_enable(void);

void dbg_trace_pin_disable(void);
# 47 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dma.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dma.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dma.h" 2
# 117 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dma.h"
typedef enum
{
    DMA_CH0 = 0,
    DMA_CH1,
    DMA_CH2,
    DMA_CH3,
    DMA_CH4,
    DMA_CH5,
    DMA_CH6
} dma_channel_enum;


typedef struct
{
    uint32_t periph_addr;
    uint32_t periph_width;
    uint32_t memory_addr;
    uint32_t memory_width;
    uint32_t number;
    uint32_t priority;
    uint8_t periph_inc;
    uint8_t memory_inc;
    uint8_t direction;
}dma_parameter_struct;
# 215 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_dma.h"
void dma_deinit(uint32_t dma_periph, dma_channel_enum channelx);

void dma_struct_para_init(dma_parameter_struct* init_struct);

void dma_init(uint32_t dma_periph, dma_channel_enum channelx, dma_parameter_struct* init_struct);

void dma_circulation_enable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_circulation_disable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_memory_to_memory_enable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_memory_to_memory_disable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_channel_enable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_channel_disable(uint32_t dma_periph, dma_channel_enum channelx);



void dma_periph_address_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t address);

void dma_memory_address_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t address);

void dma_transfer_number_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t number);

uint32_t dma_transfer_number_get(uint32_t dma_periph, dma_channel_enum channelx);

void dma_priority_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t priority);

void dma_memory_width_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t mwidth);

void dma_periph_width_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t pwidth);

void dma_memory_increase_enable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_memory_increase_disable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_periph_increase_enable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_periph_increase_disable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_transfer_direction_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t direction);



FlagStatus dma_flag_get(uint32_t dma_periph, dma_channel_enum channelx, uint32_t flag);

void dma_flag_clear(uint32_t dma_periph, dma_channel_enum channelx, uint32_t flag);

FlagStatus dma_interrupt_flag_get(uint32_t dma_periph, dma_channel_enum channelx, uint32_t flag);

void dma_interrupt_flag_clear(uint32_t dma_periph, dma_channel_enum channelx, uint32_t flag);

void dma_interrupt_enable(uint32_t dma_periph, dma_channel_enum channelx, uint32_t source);

void dma_interrupt_disable(uint32_t dma_periph, dma_channel_enum channelx, uint32_t source);
# 48 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_exti.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_exti.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_exti.h" 2
# 183 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_exti.h"
typedef enum {
    EXTI_0 = ((uint32_t)((uint32_t)0x01U<<(0))),
    EXTI_1 = ((uint32_t)((uint32_t)0x01U<<(1))),
    EXTI_2 = ((uint32_t)((uint32_t)0x01U<<(2))),
    EXTI_3 = ((uint32_t)((uint32_t)0x01U<<(3))),
    EXTI_4 = ((uint32_t)((uint32_t)0x01U<<(4))),
    EXTI_5 = ((uint32_t)((uint32_t)0x01U<<(5))),
    EXTI_6 = ((uint32_t)((uint32_t)0x01U<<(6))),
    EXTI_7 = ((uint32_t)((uint32_t)0x01U<<(7))),
    EXTI_8 = ((uint32_t)((uint32_t)0x01U<<(8))),
    EXTI_9 = ((uint32_t)((uint32_t)0x01U<<(9))),
    EXTI_10 = ((uint32_t)((uint32_t)0x01U<<(10))),
    EXTI_11 = ((uint32_t)((uint32_t)0x01U<<(11))),
    EXTI_12 = ((uint32_t)((uint32_t)0x01U<<(12))),
    EXTI_13 = ((uint32_t)((uint32_t)0x01U<<(13))),
    EXTI_14 = ((uint32_t)((uint32_t)0x01U<<(14))),
    EXTI_15 = ((uint32_t)((uint32_t)0x01U<<(15))),
    EXTI_16 = ((uint32_t)((uint32_t)0x01U<<(16))),
    EXTI_17 = ((uint32_t)((uint32_t)0x01U<<(17))),
    EXTI_18 = ((uint32_t)((uint32_t)0x01U<<(18)))
} exti_line_enum;


typedef enum {
    EXTI_INTERRUPT = 0,
    EXTI_EVENT
} exti_mode_enum;


typedef enum {
    EXTI_TRIG_RISING = 0,
    EXTI_TRIG_FALLING,
    EXTI_TRIG_BOTH
} exti_trig_type_enum;



void exti_deinit(void);

void exti_init(exti_line_enum linex, exti_mode_enum mode, exti_trig_type_enum trig_type);

void exti_interrupt_enable(exti_line_enum linex);

void exti_interrupt_disable(exti_line_enum linex);

void exti_event_enable(exti_line_enum linex);

void exti_event_disable(exti_line_enum linex);

void exti_software_interrupt_enable(exti_line_enum linex);

void exti_software_interrupt_disable(exti_line_enum linex);



FlagStatus exti_flag_get(exti_line_enum linex);

void exti_flag_clear(exti_line_enum linex);

FlagStatus exti_interrupt_flag_get(exti_line_enum linex);

void exti_interrupt_flag_clear(exti_line_enum linex);
# 49 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_fmc.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_fmc.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 43 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_fmc.h" 2
# 117 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_fmc.h"
typedef enum
{
    FMC_READY,
    FMC_BUSY,
    FMC_PGERR,
    FMC_PGAERR,
    FMC_WPERR,
    FMC_TOERR,
}fmc_state_enum;
# 223 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_fmc.h"
void fmc_prefetch_enable(void);

void fmc_prefetch_disable(void);

void fmc_ibus_enable(void);

void fmc_ibus_disable(void);

void fmc_dbus_enable(void);

void fmc_dbus_disable(void);

void fmc_ibus_reset(void);

void fmc_dbus_reset(void);

void fmc_program_width_set(uint32_t pgw);

void fmc_unlock(void);

void fmc_lock(void);

void fmc_wscnt_set(uint32_t wscnt);

fmc_state_enum fmc_page_erase(uint32_t page_address);

fmc_state_enum fmc_mass_erase(void);

fmc_state_enum fmc_doubleword_program(uint32_t address, uint64_t data);

fmc_state_enum fmc_word_program(uint32_t address, uint32_t data);



void ob_unlock(void);

void ob_lock(void);

fmc_state_enum ob_erase(void);

fmc_state_enum ob_write_protection_enable(uint32_t ob_wp);

fmc_state_enum ob_security_protection_config(uint8_t ob_spc);

fmc_state_enum ob_user_write(uint8_t ob_fwdgt, uint8_t ob_deepsleep, uint8_t ob_stdby);

fmc_state_enum ob_data_program(uint16_t ob_data);

uint8_t ob_user_get(void);

uint16_t ob_data_get(void);

uint32_t ob_write_protection_get(void);

FlagStatus ob_security_protection_flag_get(void);



FlagStatus fmc_flag_get(uint32_t flag);

void fmc_flag_clear(uint32_t flag);

void fmc_interrupt_enable(uint32_t interrupt);

void fmc_interrupt_disable(uint32_t interrupt);

FlagStatus fmc_interrupt_flag_get(uint32_t flag);

void fmc_interrupt_flag_clear(uint32_t flag);
# 50 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_fwdgt.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_fwdgt.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_fwdgt.h" 2
# 96 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_fwdgt.h"
void fwdgt_write_enable(void);

void fwdgt_write_disable(void);

void fwdgt_enable(void);


ErrStatus fwdgt_prescaler_value_config(uint16_t prescaler_value);

ErrStatus fwdgt_reload_value_config(uint16_t reload_value);

void fwdgt_counter_reload(void);

ErrStatus fwdgt_config(uint16_t reload_value, uint8_t prescaler_div);


FlagStatus fwdgt_flag_get(uint16_t flag);
# 51 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_gpio.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_gpio.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_gpio.h" 2
# 294 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_gpio.h"
typedef FlagStatus bit_status;
# 427 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_gpio.h"
void gpio_deinit(uint32_t gpio_periph);

void gpio_afio_deinit(void);

void gpio_init(uint32_t gpio_periph, uint32_t mode, uint32_t speed, uint32_t pin);


void gpio_bit_set(uint32_t gpio_periph, uint32_t pin);

void gpio_bit_reset(uint32_t gpio_periph, uint32_t pin);

void gpio_bit_write(uint32_t gpio_periph, uint32_t pin, bit_status bit_value);

void gpio_port_write(uint32_t gpio_periph, uint16_t data);


FlagStatus gpio_input_bit_get(uint32_t gpio_periph, uint32_t pin);

uint16_t gpio_input_port_get(uint32_t gpio_periph);

FlagStatus gpio_output_bit_get(uint32_t gpio_periph, uint32_t pin);

uint16_t gpio_output_port_get(uint32_t gpio_periph);


void gpio_pin_remap_config(uint32_t remap, ControlStatus newvalue);


void gpio_exti_source_select(uint8_t output_port, uint8_t output_pin);

void gpio_event_output_config(uint8_t output_port, uint8_t output_pin);

void gpio_event_output_enable(void);

void gpio_event_output_disable(void);


void gpio_pin_lock(uint32_t gpio_periph, uint32_t pin);


void gpio_compensation_config(uint32_t compensation);

FlagStatus gpio_compensation_flag_get(void);
# 52 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_i2c.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_i2c.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 43 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_i2c.h" 2
# 167 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_i2c.h"
typedef enum{

    I2C_FLAG_SBSEND = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(0U)),
    I2C_FLAG_ADDSEND = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(1U)),
    I2C_FLAG_BTC = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(2U)),
    I2C_FLAG_ADD10SEND = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(3U)),
    I2C_FLAG_STPDET = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(4U)),
    I2C_FLAG_RBNE = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(6U)),
    I2C_FLAG_TBE = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(7U)),
    I2C_FLAG_BERR = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(8U)),
    I2C_FLAG_LOSTARB = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(9U)),
    I2C_FLAG_AERR = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(10U)),
    I2C_FLAG_OUERR = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(11U)),
    I2C_FLAG_PECERR = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(12U)),
    I2C_FLAG_SMBTO = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(14U)),
    I2C_FLAG_SMBALT = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(15U)),

    I2C_FLAG_MASTER = (((uint32_t)(((uint32_t)0x00000018U)) << 6) | (uint32_t)(0U)),
    I2C_FLAG_I2CBSY = (((uint32_t)(((uint32_t)0x00000018U)) << 6) | (uint32_t)(1U)),
    I2C_FLAG_TR = (((uint32_t)(((uint32_t)0x00000018U)) << 6) | (uint32_t)(2U)),
    I2C_FLAG_RXGC = (((uint32_t)(((uint32_t)0x00000018U)) << 6) | (uint32_t)(4U)),
    I2C_FLAG_DEFSMB = (((uint32_t)(((uint32_t)0x00000018U)) << 6) | (uint32_t)(5U)),
    I2C_FLAG_HSTSMB = (((uint32_t)(((uint32_t)0x00000018U)) << 6) | (uint32_t)(6U)),
    I2C_FLAG_DUMOD = (((uint32_t)(((uint32_t)0x00000018U)) << 6) | (uint32_t)(7U)),

    I2C_FLAG_TFF = (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(12U)),
    I2C_FLAG_TFR = (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(13U)),
    I2C_FLAG_RFF = (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(14U)),
    I2C_FLAG_RFR = (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(15U))
} i2c_flag_enum;


typedef enum {

    I2C_INT_FLAG_SBSEND = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((0U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_ADDSEND = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((1U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_BTC = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((2U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_ADD10SEND = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((3U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_STPDET = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((4U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_RBNE = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((6U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_TBE = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((7U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_BERR = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((8U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_LOSTARB = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((9U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_AERR = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((10U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_OUERR = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((11U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_PECERR = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((12U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_SMBTO = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((14U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_SMBALT = (((uint32_t)(((uint32_t)0x00000014U)) << 22) | (uint32_t)((15U) << 16) | (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(8U))),

    I2C_INT_FLAG_TFF = (((uint32_t)(((uint32_t)0x00000080U)) << 22) | (uint32_t)((12U) << 16) | (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(4U))),
    I2C_INT_FLAG_TFR = (((uint32_t)(((uint32_t)0x00000080U)) << 22) | (uint32_t)((13U) << 16) | (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(5U))),
    I2C_INT_FLAG_RFF = (((uint32_t)(((uint32_t)0x00000080U)) << 22) | (uint32_t)((14U) << 16) | (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(6U))),
    I2C_INT_FLAG_RFR = (((uint32_t)(((uint32_t)0x00000080U)) << 22) | (uint32_t)((15U) << 16) | (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(7U)))
}i2c_interrupt_flag_enum;


typedef enum {

    I2C_INT_ERR = (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(8U)),
    I2C_INT_EV = (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(9U)),
    I2C_INT_BUF = (((uint32_t)(((uint32_t)0x00000004U)) << 6) | (uint32_t)(10U)),

    I2C_INT_TFF = (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(4U)),
    I2C_INT_TFR = (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(5U)),
    I2C_INT_RFF = (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(6U)),
    I2C_INT_RFR = (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(7U)),
} i2c_interrupt_enum;
# 314 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_i2c.h"
void i2c_deinit(uint32_t i2c_periph);

void i2c_clock_config(uint32_t i2c_periph, uint32_t clkspeed, uint32_t dutycyc);

void i2c_mode_addr_config(uint32_t i2c_periph, uint32_t mode, uint32_t addformat, uint32_t addr);

void i2c_smbus_type_config(uint32_t i2c_periph, uint32_t type);

void i2c_ack_config(uint32_t i2c_periph, uint32_t ack);

void i2c_ackpos_config(uint32_t i2c_periph, uint32_t pos);

void i2c_master_addressing(uint32_t i2c_periph, uint32_t addr, uint32_t trandirection);

void i2c_dualaddr_enable(uint32_t i2c_periph, uint32_t addr);

void i2c_dualaddr_disable(uint32_t i2c_periph);

void i2c_enable(uint32_t i2c_periph);

void i2c_disable(uint32_t i2c_periph);


void i2c_start_on_bus(uint32_t i2c_periph);

void i2c_stop_on_bus(uint32_t i2c_periph);

void i2c_data_transmit(uint32_t i2c_periph, uint8_t data);

uint8_t i2c_data_receive(uint32_t i2c_periph);

void i2c_dma_config(uint32_t i2c_periph, uint32_t dmastate);

void i2c_dma_last_transfer_config(uint32_t i2c_periph, uint32_t dmalast);

void i2c_stretch_scl_low_config(uint32_t i2c_periph, uint32_t stretchpara);

void i2c_slave_response_to_gcall_config(uint32_t i2c_periph, uint32_t gcallpara);

void i2c_software_reset_config(uint32_t i2c_periph, uint32_t sreset);


void i2c_pec_config(uint32_t i2c_periph, uint32_t pecstate);

void i2c_pec_transfer_config(uint32_t i2c_periph, uint32_t pecpara);

uint8_t i2c_pec_value_get(uint32_t i2c_periph);

void i2c_smbus_alert_config(uint32_t i2c_periph, uint32_t smbuspara);

void i2c_smbus_arp_config(uint32_t i2c_periph, uint32_t arpstate);


void i2c_sam_enable(uint32_t i2c_periph);

void i2c_sam_disable(uint32_t i2c_periph);

void i2c_sam_timeout_enable(uint32_t i2c_periph);

void i2c_sam_timeout_disable(uint32_t i2c_periph);


FlagStatus i2c_flag_get(uint32_t i2c_periph, i2c_flag_enum flag);

void i2c_flag_clear(uint32_t i2c_periph, i2c_flag_enum flag);

void i2c_interrupt_enable(uint32_t i2c_periph, i2c_interrupt_enum interrupt);

void i2c_interrupt_disable(uint32_t i2c_periph, i2c_interrupt_enum interrupt);

FlagStatus i2c_interrupt_flag_get(uint32_t i2c_periph, i2c_interrupt_flag_enum int_flag);

void i2c_interrupt_flag_clear(uint32_t i2c_periph, i2c_interrupt_flag_enum int_flag);
# 53 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_pmu.h" 1
# 54 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_bkp.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_bkp.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_bkp.h" 2
# 118 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_bkp.h"
typedef enum
{
    BKP_DATA_0 = 1,
    BKP_DATA_1,
    BKP_DATA_2,
    BKP_DATA_3,
    BKP_DATA_4,
    BKP_DATA_5,
    BKP_DATA_6,
    BKP_DATA_7,
    BKP_DATA_8,
    BKP_DATA_9,
    BKP_DATA_10,
    BKP_DATA_11,
    BKP_DATA_12,
    BKP_DATA_13,
    BKP_DATA_14,
    BKP_DATA_15,
    BKP_DATA_16,
    BKP_DATA_17,
    BKP_DATA_18,
    BKP_DATA_19,
    BKP_DATA_20,
    BKP_DATA_21,
    BKP_DATA_22,
    BKP_DATA_23,
    BKP_DATA_24,
    BKP_DATA_25,
    BKP_DATA_26,
    BKP_DATA_27,
    BKP_DATA_28,
    BKP_DATA_29,
    BKP_DATA_30,
    BKP_DATA_31,
    BKP_DATA_32,
    BKP_DATA_33,
    BKP_DATA_34,
    BKP_DATA_35,
    BKP_DATA_36,
    BKP_DATA_37,
    BKP_DATA_38,
    BKP_DATA_39,
    BKP_DATA_40,
    BKP_DATA_41,
}bkp_data_register_enum;
# 199 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_bkp.h"
void bkp_deinit(void);

void bkp_data_write(bkp_data_register_enum register_number, uint16_t data);

uint16_t bkp_data_read(bkp_data_register_enum register_number);



void bkp_rtc_calibration_output_enable(void);

void bkp_rtc_calibration_output_disable(void);

void bkp_rtc_signal_output_enable(void);

void bkp_rtc_signal_output_disable(void);

void bkp_rtc_output_select(uint16_t outputsel);

void bkp_rtc_clock_output_select(uint16_t clocksel);

void bkp_rtc_clock_calibration_direction_select(uint16_t direction);

void bkp_rtc_calibration_value_set(uint8_t value);



void bkp_tamper_detection_enable(void);

void bkp_tamper_detection_disable(void);

void bkp_tamper_active_level_set(uint16_t level);



void bkp_interrupt_enable(void);

void bkp_interrupt_disable(void);

FlagStatus bkp_flag_get(void);

void bkp_flag_clear(void);

FlagStatus bkp_interrupt_flag_get(void);

void bkp_interrupt_flag_clear(void);
# 55 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_rtc.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_rtc.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_rtc.h" 2
# 117 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_rtc.h"
void rtc_configuration_mode_enter(void);

void rtc_configuration_mode_exit(void);

void rtc_counter_set(uint32_t cnt);

void rtc_prescaler_set(uint32_t psc);



void rtc_lwoff_wait(void);

void rtc_register_sync_wait(void);

void rtc_alarm_config(uint32_t alarm);

uint32_t rtc_counter_get(void);

uint32_t rtc_divider_get(void);



FlagStatus rtc_flag_get(uint32_t flag);

void rtc_flag_clear(uint32_t flag);

FlagStatus rtc_interrupt_flag_get(uint32_t flag);

void rtc_interrupt_flag_clear(uint32_t flag);

void rtc_interrupt_enable(uint32_t interrupt);

void rtc_interrupt_disable(uint32_t interrupt);
# 56 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_spi.h" 1
# 43 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_spi.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 44 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_spi.h" 2
# 134 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_spi.h"
typedef struct
{
    uint32_t device_mode;
    uint32_t trans_mode;
    uint32_t frame_size;
    uint32_t nss;
    uint32_t endian;
    uint32_t clock_polarity_phase;
    uint32_t prescale;
}spi_parameter_struct;
# 270 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_spi.h"
void spi_i2s_deinit(uint32_t spi_periph);

void spi_struct_para_init(spi_parameter_struct* spi_struct);

void spi_init(uint32_t spi_periph, spi_parameter_struct* spi_struct);

void spi_enable(uint32_t spi_periph);

void spi_disable(uint32_t spi_periph);


void i2s_init(uint32_t spi_periph, uint32_t mode, uint32_t standard, uint32_t ckpl);

void i2s_psc_config(uint32_t spi_periph, uint32_t audiosample, uint32_t frameformat, uint32_t mckout);

void i2s_enable(uint32_t spi_periph);

void i2s_disable(uint32_t spi_periph);



void spi_nss_output_enable(uint32_t spi_periph);

void spi_nss_output_disable(uint32_t spi_periph);

void spi_nss_internal_high(uint32_t spi_periph);

void spi_nss_internal_low(uint32_t spi_periph);



void spi_dma_enable(uint32_t spi_periph, uint8_t dma);

void spi_dma_disable(uint32_t spi_periph, uint8_t dma);



void spi_i2s_data_frame_format_config(uint32_t spi_periph, uint16_t frame_format);

void spi_i2s_data_transmit(uint32_t spi_periph, uint16_t data);

uint16_t spi_i2s_data_receive(uint32_t spi_periph);

void spi_bidirectional_transfer_config(uint32_t spi_periph, uint32_t transfer_direction);

void spi_i2s_format_error_clear(uint32_t spi_periph, uint32_t flag);



void spi_crc_polynomial_set(uint32_t spi_periph, uint16_t crc_poly);

uint16_t spi_crc_polynomial_get(uint32_t spi_periph);

void spi_crc_on(uint32_t spi_periph);

void spi_crc_off(uint32_t spi_periph);

void spi_crc_next(uint32_t spi_periph);

uint16_t spi_crc_get(uint32_t spi_periph, uint8_t crc);

void spi_crc_error_clear(uint32_t spi_periph);



void spi_ti_mode_enable(uint32_t spi_periph);

void spi_ti_mode_disable(uint32_t spi_periph);



void spi_nssp_mode_enable(uint32_t spi_periph);

void spi_nssp_mode_disable(uint32_t spi_periph);



void spi_quad_enable(uint32_t spi_periph);

void spi_quad_disable(uint32_t spi_periph);

void spi_quad_write_enable(uint32_t spi_periph);

void spi_quad_read_enable(uint32_t spi_periph);

void spi_quad_io23_output_enable(uint32_t spi_periph);

void spi_quad_io23_output_disable(uint32_t spi_periph);



void spi_i2s_interrupt_enable(uint32_t spi_periph, uint8_t interrupt);

void spi_i2s_interrupt_disable(uint32_t spi_periph, uint8_t interrupt);

FlagStatus spi_i2s_interrupt_flag_get(uint32_t spi_periph, uint8_t interrupt);

FlagStatus spi_i2s_flag_get(uint32_t spi_periph, uint32_t flag);
# 57 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_timer.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_timer.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_timer.h" 2
# 256 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_timer.h"
typedef struct
{
    uint16_t prescaler;
    uint16_t alignedmode;
    uint16_t counterdirection;
    uint32_t period;
    uint16_t clockdivision;
    uint8_t repetitioncounter;
}timer_parameter_struct;


typedef struct
{
    uint16_t runoffstate;
    uint16_t ideloffstate;
    uint16_t deadtime;
    uint16_t breakpolarity;
    uint16_t outputautostate;
    uint16_t protectmode;
    uint16_t breakstate;
}timer_break_parameter_struct;


typedef struct
{
    uint16_t outputstate;
    uint16_t outputnstate;
    uint16_t ocpolarity;
    uint16_t ocnpolarity;
    uint16_t ocidlestate;
    uint16_t ocnidlestate;
}timer_oc_parameter_struct;


typedef struct
{
    uint16_t icpolarity;
    uint16_t icselection;
    uint16_t icprescaler;
    uint16_t icfilter;
}timer_ic_parameter_struct;
# 590 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_timer.h"
void timer_deinit(uint32_t timer_periph);

void timer_struct_para_init(timer_parameter_struct* initpara);

void timer_init(uint32_t timer_periph, timer_parameter_struct* initpara);

void timer_enable(uint32_t timer_periph);

void timer_disable(uint32_t timer_periph);

void timer_auto_reload_shadow_enable(uint32_t timer_periph);

void timer_auto_reload_shadow_disable(uint32_t timer_periph);

void timer_update_event_enable(uint32_t timer_periph);

void timer_update_event_disable(uint32_t timer_periph);

void timer_counter_alignment(uint32_t timer_periph, uint16_t aligned);

void timer_counter_up_direction(uint32_t timer_periph);

void timer_counter_down_direction(uint32_t timer_periph);


void timer_prescaler_config(uint32_t timer_periph, uint16_t prescaler, uint32_t pscreload);

void timer_repetition_value_config(uint32_t timer_periph, uint16_t repetition);

void timer_autoreload_value_config(uint32_t timer_periph, uint16_t autoreload);

void timer_counter_value_config(uint32_t timer_periph, uint16_t counter);

uint32_t timer_counter_read(uint32_t timer_periph);

uint16_t timer_prescaler_read(uint32_t timer_periph);

void timer_single_pulse_mode_config(uint32_t timer_periph, uint32_t spmode);

void timer_update_source_config(uint32_t timer_periph, uint32_t update);



void timer_dma_enable(uint32_t timer_periph, uint16_t dma);

void timer_dma_disable(uint32_t timer_periph, uint16_t dma);

void timer_channel_dma_request_source_select(uint32_t timer_periph, uint32_t dma_request);

void timer_dma_transfer_config(uint32_t timer_periph, uint32_t dma_baseaddr, uint32_t dma_lenth);

void timer_event_software_generate(uint32_t timer_periph, uint16_t event);



void timer_break_struct_para_init(timer_break_parameter_struct* breakpara);

void timer_break_config(uint32_t timer_periph, timer_break_parameter_struct* breakpara);

void timer_break_enable(uint32_t timer_periph);

void timer_break_disable(uint32_t timer_periph);

void timer_automatic_output_enable(uint32_t timer_periph);

void timer_automatic_output_disable(uint32_t timer_periph);

void timer_primary_output_config(uint32_t timer_periph, ControlStatus newvalue);

void timer_channel_control_shadow_config(uint32_t timer_periph, ControlStatus newvalue);

void timer_channel_control_shadow_update_config(uint32_t timer_periph, uint32_t ccuctl);



void timer_channel_output_struct_para_init(timer_oc_parameter_struct* ocpara);

void timer_channel_output_config(uint32_t timer_periph, uint16_t channel, timer_oc_parameter_struct* ocpara);

void timer_channel_output_mode_config(uint32_t timer_periph, uint16_t channel, uint16_t ocmode);

void timer_channel_output_pulse_value_config(uint32_t timer_periph, uint16_t channel, uint32_t pulse);

void timer_channel_output_shadow_config(uint32_t timer_periph, uint16_t channel, uint16_t ocshadow);

void timer_channel_output_fast_config(uint32_t timer_periph, uint16_t channel, uint16_t ocfast);

void timer_channel_output_clear_config(uint32_t timer_periph, uint16_t channel, uint16_t occlear);

void timer_channel_output_polarity_config(uint32_t timer_periph, uint16_t channel, uint16_t ocpolarity);

void timer_channel_complementary_output_polarity_config(uint32_t timer_periph, uint16_t channel, uint16_t ocnpolarity);

void timer_channel_output_state_config(uint32_t timer_periph, uint16_t channel, uint32_t state);

void timer_channel_complementary_output_state_config(uint32_t timer_periph, uint16_t channel, uint16_t ocnstate);



void timer_channel_input_struct_para_init(timer_ic_parameter_struct* icpara);

void timer_input_capture_config(uint32_t timer_periph, uint16_t channel, timer_ic_parameter_struct* icpara);

void timer_channel_input_capture_prescaler_config(uint32_t timer_periph, uint16_t channel, uint16_t prescaler);

uint32_t timer_channel_capture_value_register_read(uint32_t timer_periph, uint16_t channel);

void timer_input_pwm_capture_config(uint32_t timer_periph, uint16_t channel, timer_ic_parameter_struct* icpwm);

void timer_hall_mode_config(uint32_t timer_periph, uint32_t hallmode);



void timer_input_trigger_source_select(uint32_t timer_periph, uint32_t intrigger);

void timer_master_output_trigger_source_select(uint32_t timer_periph, uint32_t outrigger);

void timer_slave_mode_select(uint32_t timer_periph, uint32_t slavemode);

void timer_master_slave_mode_config(uint32_t timer_periph, uint32_t masterslave);

void timer_external_trigger_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter);

void timer_quadrature_decoder_mode_config(uint32_t timer_periph, uint32_t decomode, uint16_t ic0polarity, uint16_t ic1polarity);

void timer_internal_clock_config(uint32_t timer_periph);

void timer_internal_trigger_as_external_clock_config(uint32_t timer_periph, uint32_t intrigger);

void timer_external_trigger_as_external_clock_config(uint32_t timer_periph, uint32_t extrigger, uint16_t extpolarity, uint32_t extfilter);

void timer_external_clock_mode0_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter);

void timer_external_clock_mode1_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter);

void timer_external_clock_mode1_disable(uint32_t timer_periph);



void timer_write_chxval_register_config(uint32_t timer_periph, uint16_t ccsel);

void timer_output_value_selection_config(uint32_t timer_periph, uint16_t outsel);



void timer_interrupt_enable(uint32_t timer_periph, uint32_t interrupt);

void timer_interrupt_disable(uint32_t timer_periph, uint32_t interrupt);

FlagStatus timer_interrupt_flag_get(uint32_t timer_periph, uint32_t interrupt);

void timer_interrupt_flag_clear(uint32_t timer_periph, uint32_t interrupt);

FlagStatus timer_flag_get(uint32_t timer_periph, uint32_t flag);

void timer_flag_clear(uint32_t timer_periph, uint32_t flag);
# 58 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_usart.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_usart.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_usart.h" 2
# 170 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_usart.h"
typedef enum {

    USART_FLAG_CTS = (((uint32_t)(((uint32_t)0x00000000U)) << 6) | (uint32_t)(9U)),
    USART_FLAG_LBD = (((uint32_t)(((uint32_t)0x00000000U)) << 6) | (uint32_t)(8U)),
    USART_FLAG_TBE = (((uint32_t)(((uint32_t)0x00000000U)) << 6) | (uint32_t)(7U)),
    USART_FLAG_TC = (((uint32_t)(((uint32_t)0x00000000U)) << 6) | (uint32_t)(6U)),
    USART_FLAG_RBNE = (((uint32_t)(((uint32_t)0x00000000U)) << 6) | (uint32_t)(5U)),
    USART_FLAG_IDLE = (((uint32_t)(((uint32_t)0x00000000U)) << 6) | (uint32_t)(4U)),
    USART_FLAG_ORERR = (((uint32_t)(((uint32_t)0x00000000U)) << 6) | (uint32_t)(3U)),
    USART_FLAG_NERR = (((uint32_t)(((uint32_t)0x00000000U)) << 6) | (uint32_t)(2U)),
    USART_FLAG_FERR = (((uint32_t)(((uint32_t)0x00000000U)) << 6) | (uint32_t)(1U)),
    USART_FLAG_PERR = (((uint32_t)(((uint32_t)0x00000000U)) << 6) | (uint32_t)(0U)),

    USART_FLAG_BSY = (((uint32_t)(((uint32_t)0x00000088U)) << 6) | (uint32_t)(16U)),
    USART_FLAG_EB = (((uint32_t)(((uint32_t)0x00000088U)) << 6) | (uint32_t)(12U)),
    USART_FLAG_RT = (((uint32_t)(((uint32_t)0x00000088U)) << 6) | (uint32_t)(11U)),

    USART_FLAG_EPERR = (((uint32_t)(((uint32_t)0x000000C0U)) << 6) | (uint32_t)(8U))
} usart_flag_enum;


typedef enum {

    USART_INT_FLAG_PERR = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((0U) << 16) | (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(8U))),
    USART_INT_FLAG_TBE = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((7U) << 16) | (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(7U))),
    USART_INT_FLAG_TC = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((6U) << 16) | (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(6U))),
    USART_INT_FLAG_RBNE = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((5U) << 16) | (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(5U))),
    USART_INT_FLAG_RBNE_ORERR = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((3U) << 16) | (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(5U))),
    USART_INT_FLAG_IDLE = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((4U) << 16) | (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(4U))),

    USART_INT_FLAG_LBD = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((8U) << 16) | (((uint32_t)(((uint32_t)0x00000010U)) << 6) | (uint32_t)(6U))),

    USART_INT_FLAG_CTS = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((9U) << 16) | (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(10U))),
    USART_INT_FLAG_ERR_ORERR = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((3U) << 16) | (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(0U))),
    USART_INT_FLAG_ERR_NERR = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((2U) << 16) | (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(0U))),
    USART_INT_FLAG_ERR_FERR = (((uint32_t)(((uint32_t)0x00000000U)) << 22) | (uint32_t)((1U) << 16) | (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(0U))),

    USART_INT_FLAG_EB = (((uint32_t)(((uint32_t)0x00000088U)) << 22) | (uint32_t)((12U) << 16) | (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(5U))),
    USART_INT_FLAG_RT = (((uint32_t)(((uint32_t)0x00000088U)) << 22) | (uint32_t)((11U) << 16) | (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(4U)))
} usart_interrupt_flag_enum;


typedef enum {

    USART_INT_PERR = (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(8U)),
    USART_INT_TBE = (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(7U)),
    USART_INT_TC = (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(6U)),
    USART_INT_RBNE = (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(5U)),
    USART_INT_IDLE = (((uint32_t)(((uint32_t)0x0000000CU)) << 6) | (uint32_t)(4U)),

    USART_INT_LBD = (((uint32_t)(((uint32_t)0x00000010U)) << 6) | (uint32_t)(6U)),

    USART_INT_CTS = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(10U)),
    USART_INT_ERR = (((uint32_t)(((uint32_t)0x00000014U)) << 6) | (uint32_t)(0U)),

    USART_INT_EB = (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(5U)),
    USART_INT_RT = (((uint32_t)(((uint32_t)0x00000080U)) << 6) | (uint32_t)(4U))
} usart_interrupt_enum;


typedef enum {

    USART_DINV_ENABLE,
    USART_DINV_DISABLE,

    USART_TXPIN_ENABLE,
    USART_TXPIN_DISABLE,

    USART_RXPIN_ENABLE,
    USART_RXPIN_DISABLE
} usart_invert_enum;
# 330 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_usart.h"
void usart_deinit(uint32_t usart_periph);

void usart_baudrate_set(uint32_t usart_periph, uint32_t baudval);

void usart_parity_config(uint32_t usart_periph, uint32_t paritycfg);

void usart_word_length_set(uint32_t usart_periph, uint32_t wlen);

void usart_stop_bit_set(uint32_t usart_periph, uint32_t stblen);

void usart_enable(uint32_t usart_periph);

void usart_disable(uint32_t usart_periph);

void usart_transmit_config(uint32_t usart_periph, uint32_t txconfig);

void usart_receive_config(uint32_t usart_periph, uint32_t rxconfig);



void usart_data_first_config(uint32_t usart_periph, uint32_t msbf);

void usart_invert_config(uint32_t usart_periph, usart_invert_enum invertpara);

void usart_receiver_timeout_enable(uint32_t usart_periph);

void usart_receiver_timeout_disable(uint32_t usart_periph);

void usart_receiver_timeout_threshold_config(uint32_t usart_periph, uint32_t rtimeout);

void usart_data_transmit(uint32_t usart_periph, uint16_t data);

uint16_t usart_data_receive(uint32_t usart_periph);



void usart_address_config(uint32_t usart_periph, uint8_t addr);

void usart_mute_mode_enable(uint32_t usart_periph);

void usart_mute_mode_disable(uint32_t usart_periph);

void usart_mute_mode_wakeup_config(uint32_t usart_periph, uint32_t wmethod);



void usart_lin_mode_enable(uint32_t usart_periph);

void usart_lin_mode_disable(uint32_t usart_periph);

void usart_lin_break_detection_length_config(uint32_t usart_periph, uint32_t lblen);

void usart_send_break(uint32_t usart_periph);



void usart_halfduplex_enable(uint32_t usart_periph);

void usart_halfduplex_disable(uint32_t usart_periph);



void usart_synchronous_clock_enable(uint32_t usart_periph);

void usart_synchronous_clock_disable(uint32_t usart_periph);

void usart_synchronous_clock_config(uint32_t usart_periph, uint32_t clen, uint32_t cph, uint32_t cpl);



void usart_guard_time_config(uint32_t usart_periph, uint8_t guat);

void usart_smartcard_mode_enable(uint32_t usart_periph);

void usart_smartcard_mode_disable(uint32_t usart_periph);

void usart_smartcard_mode_nack_enable(uint32_t usart_periph);

void usart_smartcard_mode_nack_disable(uint32_t usart_periph);

void usart_smartcard_autoretry_config(uint32_t usart_periph, uint8_t scrtnum);

void usart_block_length_config(uint32_t usart_periph, uint8_t bl);



void usart_irda_mode_enable(uint32_t usart_periph);

void usart_irda_mode_disable(uint32_t usart_periph);

void usart_prescaler_config(uint32_t usart_periph, uint8_t psc);

void usart_irda_lowpower_config(uint32_t usart_periph, uint32_t irlp);



void usart_hardware_flow_rts_config(uint32_t usart_periph, uint32_t rtsconfig);

void usart_hardware_flow_cts_config(uint32_t usart_periph, uint32_t ctsconfig);



void usart_dma_receive_config(uint32_t usart_periph, uint8_t dmaconfig);

void usart_dma_transmit_config(uint32_t usart_periph, uint8_t dmaconfig);



void usart_hardware_flow_coherence_config(uint32_t usart_periph, uint32_t hcm);



FlagStatus usart_flag_get(uint32_t usart_periph, usart_flag_enum flag);

void usart_flag_clear(uint32_t usart_periph, usart_flag_enum flag);

void usart_interrupt_enable(uint32_t usart_periph, usart_interrupt_enum interrupt);

void usart_interrupt_disable(uint32_t usart_periph, usart_interrupt_enum interrupt);

FlagStatus usart_interrupt_flag_get(uint32_t usart_periph, usart_interrupt_flag_enum int_flag);

void usart_interrupt_flag_clear(uint32_t usart_periph, usart_interrupt_flag_enum int_flag);
# 59 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_wwdgt.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_wwdgt.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_wwdgt.h" 2
# 78 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_wwdgt.h"
void wwdgt_deinit(void);

void wwdgt_enable(void);


void wwdgt_counter_update(uint16_t counter_value);

void wwdgt_config(uint16_t counter, uint16_t window, uint32_t prescaler);


FlagStatus wwdgt_flag_get(void);

void wwdgt_flag_clear(void);

void wwdgt_interrupt_enable(void);
# 60 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_misc.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_misc.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_misc.h" 2
# 76 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_misc.h"
void nvic_priority_group_set(uint32_t nvic_prigroup);


void nvic_irq_enable(uint8_t nvic_irq, uint8_t nvic_irq_pre_priority, uint8_t nvic_irq_sub_priority);

void nvic_irq_disable(uint8_t nvic_irq);


void nvic_vector_table_set(uint32_t nvic_vict_tab, uint32_t offset);


void system_lowpower_set(uint8_t lowpower_mode);

void system_lowpower_reset(uint8_t lowpower_mode);


void systick_clksource_set(uint32_t systick_clksource);
# 61 "../source\\gd32e10x_libopt.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_exmc.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_exmc.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_exmc.h" 2
# 88 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_exmc.h"
typedef struct
{
    uint32_t asyn_access_mode;
    uint32_t syn_data_latency;
    uint32_t syn_clk_division;
    uint32_t bus_latency;
    uint32_t asyn_data_setuptime;
    uint32_t asyn_address_holdtime;
    uint32_t asyn_address_setuptime;
}exmc_norsram_timing_parameter_struct;


typedef struct
{
    uint32_t write_mode;
    uint32_t extended_mode;
    uint32_t asyn_wait;
    uint32_t nwait_signal;
    uint32_t memory_write;
    uint32_t nwait_config;
    uint32_t wrap_burst_mode;
    uint32_t nwait_polarity;
    uint32_t burst_mode;
    uint32_t databus_width;
    uint32_t memory_type;
    uint32_t address_data_mux;
    exmc_norsram_timing_parameter_struct* read_write_timing;

    exmc_norsram_timing_parameter_struct* write_timing;
}exmc_norsram_parameter_struct;
# 198 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_exmc.h"
void exmc_norsram_deinit(void);

void exmc_norsram_struct_para_init(exmc_norsram_parameter_struct* exmc_norsram_init_struct);

void exmc_norsram_init(exmc_norsram_parameter_struct* exmc_norsram_init_struct);



void exmc_norsram_enable(void);

void exmc_norsram_disable(void);



void exmc_norsram_page_size_config(uint32_t page_size);
# 62 "../source\\gd32e10x_libopt.h" 2
# 248 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 2
# 42 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_pmu.h" 2
# 103 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_pmu.h"
void pmu_deinit(void);


void pmu_lvd_select(uint32_t lvdt_n);

void pmu_ldo_output_select(uint32_t ldo_output);

void pmu_lvd_disable(void);



void pmu_to_sleepmode(uint8_t sleepmodecmd);

void pmu_to_deepsleepmode(uint32_t ldo, uint8_t deepsleepmodecmd);

void pmu_to_standbymode(void);



void pmu_wakeup_pin_enable(void);

void pmu_wakeup_pin_disable(void);



void pmu_backup_write_enable(void);

void pmu_backup_write_disable(void);



FlagStatus pmu_flag_get(uint32_t flag);

void pmu_flag_clear(uint32_t flag);
# 40 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/gd32e10x_pmu.c" 2







void pmu_deinit(void)
{

    rcu_periph_reset_enable(RCU_PMURST);
    rcu_periph_reset_disable(RCU_PMURST);
}
# 69 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/gd32e10x_pmu.c"
void pmu_lvd_select(uint32_t lvdt_n)
{

    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) &= ~((uint32_t)((uint32_t)0x01U<<(4)));

    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) &= ~((0xFFFFFFFFUL << (5)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(7))));

    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) |= lvdt_n;

    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) |= ((uint32_t)((uint32_t)0x01U<<(4)));
}
# 91 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/gd32e10x_pmu.c"
void pmu_ldo_output_select(uint32_t ldo_output)
{
    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) &= ~((0xFFFFFFFFUL << (14)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(15))));
    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) |= ldo_output;
}







void pmu_lvd_disable(void)
{

    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) &= ~((uint32_t)((uint32_t)0x01U<<(4)));
}
# 118 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/gd32e10x_pmu.c"
void pmu_to_sleepmode(uint8_t sleepmodecmd)
{

    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SCR &= ~((uint32_t)(1UL << 2));


    if(((uint8_t)0x00U) == sleepmodecmd){
        __WFI();
    }else{
        __SEV();
        __WFE();
        __WFE();
    }
}
# 146 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/gd32e10x_pmu.c"
void pmu_to_deepsleepmode(uint32_t ldo,uint8_t deepsleepmodecmd)
{
    static uint32_t reg_snap[ 4 ];

    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) &= ~((uint32_t)(((uint32_t)((uint32_t)0x01U<<(1))) | ((uint32_t)((uint32_t)0x01U<<(0)))));


    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) |= ldo;


    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SCR |= (1UL << 2);

    reg_snap[ 0 ] = (*(volatile uint32_t *)(uint32_t)(0xE000E010U));
    reg_snap[ 1 ] = (*(volatile uint32_t *)(uint32_t)(0xE000E100U));
    reg_snap[ 2 ] = (*(volatile uint32_t *)(uint32_t)(0xE000E104U));
    reg_snap[ 3 ] = (*(volatile uint32_t *)(uint32_t)(0xE000E108U));

    (*(volatile uint32_t *)(uint32_t)(0xE000E010U)) &= 0x00010004U;
    (*(volatile uint32_t *)(uint32_t)(0xE000E180U)) = 0XFF7FF83DU;
    (*(volatile uint32_t *)(uint32_t)(0xE000E184U)) = 0XFFFFF8FFU;
    (*(volatile uint32_t *)(uint32_t)(0xE000E188U)) = 0xFFFFFFFFU;


    if(((uint8_t)0x00U) == deepsleepmodecmd){
        __WFI();
    }else{
        __SEV();
        __WFE();
        __WFE();
    }

    (*(volatile uint32_t *)(uint32_t)(0xE000E010U)) = reg_snap[ 0 ] ;
    (*(volatile uint32_t *)(uint32_t)(0xE000E100U)) = reg_snap[ 1 ] ;
    (*(volatile uint32_t *)(uint32_t)(0xE000E104U)) = reg_snap[ 2 ] ;
    (*(volatile uint32_t *)(uint32_t)(0xE000E108U)) = reg_snap[ 3 ] ;


    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SCR &= ~((uint32_t)(1UL << 2));
}







void pmu_to_standbymode(void)
{

    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) |= ((uint32_t)((uint32_t)0x01U<<(1)));


    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) |= ((uint32_t)((uint32_t)0x01U<<(2)));


    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SCR |= (1UL << 2);

    (*(volatile uint32_t *)(uint32_t)(0xE000E010U)) &= 0x00010004U;
    (*(volatile uint32_t *)(uint32_t)(0xE000E180U)) = 0XFFFFFFF7U;
    (*(volatile uint32_t *)(uint32_t)(0xE000E184U)) = 0XFFFFFDFFU;
    (*(volatile uint32_t *)(uint32_t)(0xE000E188U)) = 0xFFFFFFFFU;


    __WFI();
}







void pmu_wakeup_pin_enable(void)
{
    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x04U)) |= ((uint32_t)((uint32_t)0x01U<<(8)));
}







void pmu_wakeup_pin_disable(void)
{
    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x04U)) &= ~((uint32_t)((uint32_t)0x01U<<(8)));
}







void pmu_backup_write_enable(void)
{
    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) |= ((uint32_t)((uint32_t)0x01U<<(8)));
}







void pmu_backup_write_disable(void)
{
    (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) &= ~((uint32_t)((uint32_t)0x01U<<(8)));
}
# 266 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/gd32e10x_pmu.c"
FlagStatus pmu_flag_get(uint32_t flag)
{
    if(RESET != ((*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x04U)) & flag)){
        return SET;
    }else{
        return RESET;
    }
}
# 284 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Source/gd32e10x_pmu.c"
void pmu_flag_clear(uint32_t flag)
{
    switch(flag){
    case ((uint8_t)0x00U):

        (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) |= ((uint32_t)((uint32_t)0x01U<<(2)));
        break;
    case ((uint8_t)0x01U):

        (*(volatile uint32_t *)(uint32_t)(((((uint32_t)0x40000000U) + 0x00007000U)) + 0x00U)) |= ((uint32_t)((uint32_t)0x01U<<(3)));
        break;
    default:
        break;
    }
}
