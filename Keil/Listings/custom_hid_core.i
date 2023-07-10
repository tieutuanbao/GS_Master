# 1 "../source/custom_hid_core.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 386 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../source/custom_hid_core.c" 2
# 1 "../source/custom_hid_core.h" 1



# 1 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include\\usbd_enum.h" 1
# 40 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include\\usbd_enum.h"
# 1 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include/usbd_core.h" 1
# 40 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include/usbd_core.h"
# 1 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_core.h" 1
# 40 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_core.h"
# 1 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include/drv_usb_regs.h" 1
# 40 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include/drv_usb_regs.h"
# 1 "../source\\usb_conf.h" 1
# 41 "../source\\usb_conf.h"
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 1 3
# 64 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
    typedef unsigned int size_t;
# 82 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
    typedef unsigned int wchar_t;
# 96 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
typedef struct div_t { int quot, rem; } div_t;

typedef struct ldiv_t { long int quot, rem; } ldiv_t;


typedef struct lldiv_t { long long quot, rem; } lldiv_t;
# 139 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int __aeabi_MB_CUR_MAX(void);
# 158 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) double atof(const char * ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) int atoi(const char * ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) long int atol(const char * ) __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) long long atoll(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) double strtod(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));
# 206 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) float strtof(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) long double strtold(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) long int strtol(const char * __restrict ,
                        char ** __restrict , int ) __attribute__((__nonnull__(1)));
# 243 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) unsigned long int strtoul(const char * __restrict ,
                                       char ** __restrict , int ) __attribute__((__nonnull__(1)));
# 275 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) long long strtoll(const char * __restrict ,
                                  char ** __restrict , int )
                          __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) unsigned long long strtoull(const char * __restrict ,
                                            char ** __restrict , int )
                                   __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) int rand(void);
# 303 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) void srand(unsigned int );
# 313 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
struct _rand_state { int __x[57]; };
extern __attribute__((__nothrow__)) int _rand_r(struct _rand_state *);
extern __attribute__((__nothrow__)) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __attribute__((__nothrow__)) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __attribute__((__nothrow__)) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);





extern __attribute__((__nothrow__)) void *calloc(size_t , size_t );





extern __attribute__((__nothrow__)) void free(void * );







extern __attribute__((__nothrow__)) void *malloc(size_t );





extern __attribute__((__nothrow__)) void *realloc(void * , size_t );
# 361 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int posix_memalign(void ** , size_t , size_t );
# 374 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
typedef int (*__heapprt)(void *, char const *, ...);
extern __attribute__((__nothrow__)) void __heapstats(int (* )(void * ,
                                           char const * , ...),
                        void * ) __attribute__((__nonnull__(1)));
# 390 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int __heapvalid(int (* )(void * ,
                                           char const * , ...),
                       void * , int ) __attribute__((__nonnull__(1)));
# 411 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__noreturn__)) void abort(void);
# 422 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int atexit(void (* )(void)) __attribute__((__nonnull__(1)));
# 444 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__noreturn__)) void exit(int );
# 460 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__noreturn__)) void _Exit(int );
# 471 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) char *getenv(const char * ) __attribute__((__nonnull__(1)));
# 484 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int system(const char * );
# 497 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern void *bsearch(const void * , const void * ,
              size_t , size_t ,
              int (* )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
# 532 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern void qsort(void * , size_t , size_t ,
           int (* )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
# 560 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) int abs(int );






extern __attribute__((__nothrow__)) __attribute__((__const__)) div_t div(int , int );
# 579 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) long int labs(long int );
# 589 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) ldiv_t ldiv(long int , long int );
# 610 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) long long llabs(long long );
# 620 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) lldiv_t lldiv(long long , long long );
# 644 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
typedef struct __sdiv32by16 { long quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned long quot, rem; } __udiv32by16;

typedef struct __sdiv64by32 { long rem, quot; } __sdiv64by32;

__attribute__((__value_in_regs__)) extern __attribute__((__nothrow__)) __attribute__((__const__)) __sdiv32by16 __rt_sdiv32by16(
     int ,
     short int );



__attribute__((__value_in_regs__)) extern __attribute__((__nothrow__)) __attribute__((__const__)) __udiv32by16 __rt_udiv32by16(
     unsigned int ,
     unsigned short );



__attribute__((__value_in_regs__)) extern __attribute__((__nothrow__)) __attribute__((__const__)) __sdiv64by32 __rt_sdiv64by32(
     int , unsigned int ,
     int );







extern __attribute__((__nothrow__)) unsigned int __fp_status(unsigned int , unsigned int );
# 705 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int mblen(const char * , size_t );
# 720 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int mbtowc(wchar_t * __restrict ,
                   const char * __restrict , size_t );
# 739 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int wctomb(char * , wchar_t );
# 761 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) size_t mbstowcs(wchar_t * __restrict ,
                      const char * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 779 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) size_t wcstombs(char * __restrict ,
                      const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 798 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) void __use_realtime_heap(void);
extern __attribute__((__nothrow__)) void __use_realtime_division(void);
extern __attribute__((__nothrow__)) void __use_two_region_memory(void);
extern __attribute__((__nothrow__)) void __use_no_heap(void);
extern __attribute__((__nothrow__)) void __use_no_heap_region(void);

extern __attribute__((__nothrow__)) char const *__C_library_version_string(void);
extern __attribute__((__nothrow__)) int __C_library_version_number(void);
# 42 "../source\\usb_conf.h" 2
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
# 41 "../GD32E10x_Firmware_Library/GD32E10x_standard_peripheral/Include\\gd32e10x_pmu.h"
# 1 "../GD32E10x_Firmware_Library/CMSIS/GD/GD32E10x/Include\\gd32e10x.h" 1
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
# 43 "../source\\usb_conf.h" 2
# 41 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include/drv_usb_regs.h" 2
# 54 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include/drv_usb_regs.h"
typedef enum
{
    USB_CORE_ENUM_HS = 0,
    USB_CORE_ENUM_FS = 1
} usb_core_enum;

enum USB_SPEED {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW,
    USB_SPEED_FULL,
    USB_SPEED_HIGH,
};

enum usb_reg_offset {
    USB_REG_OFFSET_CORE = 0x0000U,
    USB_REG_OFFSET_DEV = 0x0800U,
    USB_REG_OFFSET_EP = 0x0020U,
    USB_REG_OFFSET_EP_IN = 0x0900U,
    USB_REG_OFFSET_EP_OUT = 0x0B00U,
    USB_REG_OFFSET_HOST = 0x0400U,
    USB_REG_OFFSET_CH = 0x0020U,
    USB_REG_OFFSET_PORT = 0x0440U,
    USB_REG_OFFSET_CH_INOUT = 0x0500U,
    USB_REG_OFFSET_PWRCLKCTL = 0x0E00U,
};

typedef struct
{
    volatile uint32_t GOTGCS;
    volatile uint32_t GOTGINTF;
    volatile uint32_t GAHBCS;
    volatile uint32_t GUSBCS;
    volatile uint32_t GRSTCTL;
    volatile uint32_t GINTF;
    volatile uint32_t GINTEN;
    volatile uint32_t GRSTATR;
    volatile uint32_t GRSTATP;
    volatile uint32_t GRFLEN;
    volatile uint32_t DIEP0TFLEN_HNPTFLEN;
    volatile uint32_t HNPTFQSTAT;
    uint32_t Reserved30[2];
    volatile uint32_t GCCFG;
    volatile uint32_t CID;
    uint32_t Reserved40[48];
    volatile uint32_t HPTFLEN;
    volatile uint32_t DIEPTFLEN[15];
} usb_gr;


typedef struct
{
    volatile uint32_t HCTL;
    volatile uint32_t HFT;
    volatile uint32_t HFINFR;
    uint32_t Reserved40C;
    volatile uint32_t HPTFQSTAT;
    volatile uint32_t HACHINT;
    volatile uint32_t HACHINTEN;
} usb_hr;

typedef struct
{
    volatile uint32_t HCHCTL;
    volatile uint32_t HCHSTCTL;
    volatile uint32_t HCHINTF;
    volatile uint32_t HCHINTEN;
    volatile uint32_t HCHLEN;
    uint32_t Reserved514;
    uint32_t Reserved[2];
} usb_pr;

typedef struct
{
    volatile uint32_t DCFG;
    volatile uint32_t DCTL;
    volatile uint32_t DSTAT;
    uint32_t Reserved0C;
    volatile uint32_t DIEPINTEN;
    volatile uint32_t DOEPINTEN;
    volatile uint32_t DAEPINT;
    volatile uint32_t DAEPINTEN;
    uint32_t Reserved20;
    uint32_t Reserved24;
    volatile uint32_t DVBUSDT;
    volatile uint32_t DVBUSPT;
    volatile uint32_t DTHRCTL;
    volatile uint32_t DIEPFEINTEN;
    volatile uint32_t DEP1INT;
    volatile uint32_t DEP1INTEN;
    uint32_t Reserved40;
    volatile uint32_t DIEP1INTEN;
    uint32_t Reserved48[15];
    volatile uint32_t DOEP1INTEN;
} usb_dr;

typedef struct
{
    volatile uint32_t DIEPCTL;
    uint32_t Reserved04;
    volatile uint32_t DIEPINTF;
    uint32_t Reserved0C;
    volatile uint32_t DIEPLEN;
    uint32_t Reserved;
    volatile uint32_t DIEPTFSTAT;
} usb_erin;

typedef struct
{
    volatile uint32_t DOEPCTL;
    uint32_t Reserved04;
    volatile uint32_t DOEPINTF;
    uint32_t Reserved0C;
    volatile uint32_t DOEPLEN;
    uint32_t Reserved;
} usb_erout;

typedef struct _usb_regs
{
    usb_gr *gr;
    usb_dr *dr;
    usb_hr *hr;
    usb_erin *er_in[6];
    usb_erout *er_out[6];
    usb_pr *pr[15];

    volatile uint32_t *HPCS;
    volatile uint32_t *DFIFO[15U];
    volatile uint32_t *PWRCLKCTL;
} usb_core_regs;
# 443 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include/drv_usb_regs.h"
extern const uint32_t PIPE_DPID[2];
# 41 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_core.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/ustd/common\\usb_ch9_std.h" 1
# 70 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/ustd/common\\usb_ch9_std.h"
enum _usb_recp_type {
    USB_RECPTYPE_DEV = 0x0U,
    USB_RECPTYPE_ITF = 0x1U,
    USB_RECPTYPE_EP = 0x2U,
    USB_RECPTYPE_MASK = 0x3U
};


enum _usb_request {
    USB_GET_STATUS = 0x0U,
    USB_CLEAR_FEATURE = 0x1U,
    USB_RESERVED2 = 0x2U,
    USB_SET_FEATURE = 0x3U,
    USB_RESERVED4 = 0x4U,
    USB_SET_ADDRESS = 0x5U,
    USB_GET_DESCRIPTOR = 0x6U,
    USB_SET_DESCRIPTOR = 0x7U,
    USB_GET_CONFIGURATION = 0x8U,
    USB_SET_CONFIGURATION = 0x9U,
    USB_GET_INTERFACE = 0xAU,
    USB_SET_INTERFACE = 0xBU,
    USB_SYNCH_FRAME = 0xCU
};


enum _usb_desctype {
    USB_DESCTYPE_DEV = 0x1U,
    USB_DESCTYPE_CONFIG = 0x2U,
    USB_DESCTYPE_STR = 0x3U,
    USB_DESCTYPE_ITF = 0x4U,
    USB_DESCTYPE_EP = 0x5U,
    USB_DESCTYPE_DEV_QUALIFIER = 0x6U,
    USB_DESCTYPE_OTHER_SPD_CONFIG = 0x7U,
    USB_DESCTYPE_ITF_POWER = 0x8U,
    USB_DESCTYPE_IAD = 0xBU,
    USB_DESCTYPE_BOS = 0xFU
};



enum _usbx_type {
    USB_EP_ATTR_CTL = 0x0U,
    USB_EP_ATTR_ISO = 0x1U,
    USB_EP_ATTR_BULK = 0x2U,
    USB_EP_ATTR_INT = 0x3U
};
# 161 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/ustd/common\\usb_ch9_std.h"
#pragma pack(1)


typedef struct _usb_req {
    uint8_t bmRequestType;
    uint8_t bRequest;
    uint16_t wValue;
    uint16_t wIndex;
    uint16_t wLength;
} usb_req;


typedef union _usb_setup {
    uint8_t data[8];

    usb_req req;
} usb_setup;



typedef struct _usb_desc_header {
    uint8_t bLength;
    uint8_t bDescriptorType;
} usb_desc_header;

typedef struct _usb_desc_dev {
    usb_desc_header header;

    uint16_t bcdUSB;
    uint8_t bDeviceClass;
    uint8_t bDeviceSubClass;
    uint8_t bDeviceProtocol;
    uint8_t bMaxPacketSize0;
    uint16_t idVendor;
    uint16_t idProduct;
    uint16_t bcdDevice;
    uint8_t iManufacturer;
    uint8_t iProduct;
    uint8_t iSerialNumber;
    uint8_t bNumberConfigurations;
} usb_desc_dev;

typedef struct _usb_desc_config {
    usb_desc_header header;

    uint16_t wTotalLength;
    uint8_t bNumInterfaces;
    uint8_t bConfigurationValue;
    uint8_t iConfiguration;
    uint8_t bmAttributes;
    uint8_t bMaxPower;
} usb_desc_config;

typedef struct _usb_desc_itf {
    usb_desc_header header;

    uint8_t bInterfaceNumber;
    uint8_t bAlternateSetting;
    uint8_t bNumEndpoints;
    uint8_t bInterfaceClass;
    uint8_t bInterfaceSubClass;
    uint8_t bInterfaceProtocol;
    uint8_t iInterface;
} usb_desc_itf;

typedef struct _usb_desc_ep {
    usb_desc_header header;

    uint8_t bEndpointAddress;
    uint8_t bmAttributes;
    uint16_t wMaxPacketSize;
    uint8_t bInterval;
} usb_desc_ep;

typedef struct _usb_desc_LANGID {
    usb_desc_header header;
    uint16_t wLANGID;
} usb_desc_LANGID;

typedef struct _usb_desc_str {
    usb_desc_header header;
    uint16_t unicode_string[64];
} usb_desc_str;

#pragma pack()
# 42 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_core.h" 2







enum _usb_mode {
    DEVICE_MODE = 0U,
    HOST_MODE,
    OTG_MODE
};

enum _usb_eptype {
    USB_EPTYPE_CTRL = 0U,
    USB_EPTYPE_ISOC = 1U,
    USB_EPTYPE_BULK = 2U,
    USB_EPTYPE_INTR = 3U,
    USB_EPTYPE_MASK = 3U
};

typedef enum
{
    USB_OTG_OK = 0U,
    USB_OTG_FAIL
} usb_otg_status;

typedef enum
{
    USB_OK = 0U,
    USB_FAIL
} usb_status;

typedef enum
{
    USB_USE_FIFO,
} usb_transfer_mode;

typedef struct
{
    uint8_t core_enum;
    uint8_t core_speed;
    uint8_t num_pipe;
    uint8_t num_ep;
    uint8_t transfer_mode;
    uint8_t phy_itf;
    uint8_t sof_enable;
    uint8_t low_power;
    uint8_t lpm_enable;
    uint8_t vbus_sensing_enable;
    uint8_t use_dedicated_ep1;
    uint8_t use_external_vbus;
    uint32_t base_reg;
} usb_core_basic;
# 105 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_core.h"
static inline uint32_t usb_coreintr_get(usb_core_regs *usb_regs)
{
    uint32_t reg_data = usb_regs->gr->GINTEN;

    reg_data &= usb_regs->gr->GINTF;

    return reg_data;
}
# 121 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_core.h"
static inline void usb_set_rxfifo(usb_core_regs *usb_regs, uint16_t size)
{
    usb_regs->gr->GRFLEN = size;
}







static inline void usb_globalint_enable(usb_core_regs *usb_regs)
{

    usb_regs->gr->GAHBCS |= ((uint32_t)((uint32_t)0x01U<<(0)));
}







static inline void usb_globalint_disable(usb_core_regs *usb_regs)
{

    usb_regs->gr->GAHBCS &= ~((uint32_t)((uint32_t)0x01U<<(0)));
}



usb_status usb_basic_init (usb_core_basic *usb_basic, usb_core_regs *usb_regs, usb_core_enum usb_core);

usb_status usb_core_init (usb_core_basic usb_basic, usb_core_regs *usb_regs);

usb_status usb_txfifo_write (usb_core_regs *usb_regs, uint8_t *src_buf, uint8_t fifo_num, uint16_t byte_count);

void *usb_rxfifo_read (usb_core_regs *usb_regs, uint8_t *dest_buf, uint16_t byte_count);

usb_status usb_txfifo_flush (usb_core_regs *usb_regs, uint8_t fifo_num);

usb_status usb_rxfifo_flush (usb_core_regs *usb_regs);

void usb_set_txfifo(usb_core_regs *usb_regs, uint8_t fifo, uint16_t size);

void usb_curmode_set(usb_core_regs *usb_regs, uint8_t mode);
# 41 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include/usbd_core.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_dev.h" 1
# 41 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_dev.h"
# 1 "../source\\usbd_conf.h" 1
# 42 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_dev.h" 2


enum usb_ctl_status {
    USB_CTL_IDLE = 0U,
    USB_CTL_DATA_IN,
    USB_CTL_LAST_DATA_IN,
    USB_CTL_DATA_OUT,
    USB_CTL_LAST_DATA_OUT,
    USB_CTL_STATUS_IN,
    USB_CTL_STATUS_OUT
};





typedef struct _usb_desc {
    uint8_t *dev_desc;
    uint8_t *config_desc;
    uint8_t *bos_desc;

    void* const *strings;
} usb_desc;


typedef struct _usb_pm {
    uint8_t power_mode;
    uint8_t power_low;
    uint8_t dev_remote_wakeup;
    uint8_t remote_wakeup_on;
} usb_pm;


typedef struct _usb_control {
    usb_req req;

    uint8_t ctl_state;
    uint8_t ctl_zlp;
} usb_control;

typedef struct
{
    struct {
        uint8_t num: 4;
        uint8_t pad: 3;
        uint8_t dir: 1;
    } ep_addr;

    uint8_t ep_type;
    uint8_t ep_stall;

    uint8_t frame_num;
    uint16_t max_len;


    uint8_t *xfer_buf;
    uint32_t xfer_len;
    uint32_t xfer_count;

    uint32_t remain_len;
} usb_transc;

typedef struct _usb_core_driver usb_dev;

typedef struct _usb_class_core
{
    uint8_t command;
    uint8_t alter_set;

    uint8_t (*init) (usb_dev *udev, uint8_t config_index);
    uint8_t (*deinit) (usb_dev *udev, uint8_t config_index);

    uint8_t (*req_proc) (usb_dev *udev, usb_req *req);

    uint8_t (*set_intf) (usb_dev *udev, usb_req *req);

    uint8_t (*ctlx_in) (usb_dev *udev);
    uint8_t (*ctlx_out) (usb_dev *udev);

    uint8_t (*data_in) (usb_dev *udev, uint8_t ep_num);
    uint8_t (*data_out) (usb_dev *udev, uint8_t ep_num);

    uint8_t (*SOF) (usb_dev *udev);

    uint8_t (*incomplete_isoc_in) (usb_dev *udev);
    uint8_t (*incomplete_isoc_out) (usb_dev *udev);
} usb_class_core;

typedef struct _usb_perp_dev
{
    uint8_t config;
    uint8_t dev_addr;

    volatile uint8_t cur_status;
    volatile uint8_t backup_status;

    usb_transc transc_in[15U];
    usb_transc transc_out[15U];

    usb_pm pm;
    usb_control control;
    usb_desc *desc;
    usb_class_core *class_core;
    void *class_data[1];
    void *user_data;
    void *pdata;
} usb_perp_dev;

typedef struct _usb_core_driver
{
    usb_core_basic bp;
    usb_core_regs regs;
    usb_perp_dev dev;
} usb_core_driver;
# 165 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_dev.h"
static inline void usb_dev_disconnect (usb_core_driver *udev)
{
    udev->regs.dr->DCTL |= ((uint32_t)((uint32_t)0x01U<<(1)));
}







static inline void usb_dev_connect (usb_core_driver *udev)
{
    udev->regs.dr->DCTL &= ~((uint32_t)((uint32_t)0x01U<<(1)));
}
# 188 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_dev.h"
static inline void usb_devaddr_set (usb_core_driver *udev, uint8_t dev_addr)
{
    udev->regs.dr->DCFG &= ~((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(10))));
    udev->regs.dr->DCFG |= (uint32_t)dev_addr << 4U;
}







static inline uint32_t usb_oepintnum_read (usb_core_driver *udev)
{
    uint32_t value = udev->regs.dr->DAEPINT;

    value &= udev->regs.dr->DAEPINTEN;

    return (value & ((0xFFFFFFFFUL << (16)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(21))))) >> 16U;
}
# 216 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/driver/Include\\drv_usb_dev.h"
static inline uint32_t usb_oepintr_read (usb_core_driver *udev, uint8_t ep_num)
{
    uint32_t value = udev->regs.er_out[ep_num]->DOEPINTF;

    value &= udev->regs.dr->DOEPINTEN;

    return value;
}







static inline uint32_t usb_iepintnum_read (usb_core_driver *udev)
{
    uint32_t value = udev->regs.dr->DAEPINT;

    value &= udev->regs.dr->DAEPINTEN;

    return value & ((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(5))));
}







static inline void usb_rwkup_set (usb_core_driver *udev)
{
    if (udev->dev.pm.dev_remote_wakeup) {

        udev->regs.dr->DCTL |= ((uint32_t)((uint32_t)0x01U<<(0)));
    }
}







static inline void usb_rwkup_reset (usb_core_driver *udev)
{
    if (udev->dev.pm.dev_remote_wakeup) {

        udev->regs.dr->DCTL &= ~((uint32_t)((uint32_t)0x01U<<(0)));
    }
}



usb_status usb_devcore_init (usb_core_driver *udev);

usb_status usb_devint_enable (usb_core_driver *udev);

usb_status usb_transc0_active (usb_core_driver *udev, usb_transc *transc);

usb_status usb_transc_active (usb_core_driver *udev, usb_transc *transc);

usb_status usb_transc_deactivate (usb_core_driver *udev, usb_transc *transc);

usb_status usb_transc_inxfer (usb_core_driver *udev, usb_transc *transc);

usb_status usb_transc_outxfer (usb_core_driver *udev, usb_transc *transc);

usb_status usb_transc_stall (usb_core_driver *udev, usb_transc *transc);

usb_status usb_transc_clrstall (usb_core_driver *udev, usb_transc *transc);

uint32_t usb_iepintr_read (usb_core_driver *udev, uint8_t ep_num);

void usb_ctlep_startout (usb_core_driver *udev);

void usb_rwkup_active (usb_core_driver *udev);

void usb_clock_active (usb_core_driver *udev);

void usb_dev_suspend (usb_core_driver *udev);

void usb_dev_stop (usb_core_driver *udev);
# 42 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include/usbd_core.h" 2

typedef enum
{
    USBD_OK = 0U,
    USBD_BUSY,
    USBD_FAIL,
} usbd_status;

enum _usbd_status {
    USBD_DEFAULT = 1U,
    USBD_ADDRESSED = 2U,
    USBD_CONFIGURED = 3U,
    USBD_SUSPENDED = 4U
};
# 66 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include/usbd_core.h"
static inline void usbd_addr_set (usb_core_driver *udev, uint8_t addr)
{
    usb_devaddr_set(udev, addr);
}
# 78 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include/usbd_core.h"
static inline uint16_t usbd_rxcount_get (usb_core_driver *udev, uint8_t ep_num)
{
    return (uint16_t)udev->dev.transc_out[ep_num].xfer_count;
}



void usbd_init (usb_core_driver *udev, usb_core_enum core, usb_desc *desc, usb_class_core *class_core);

uint32_t usbd_ep_setup (usb_core_driver *udev, const usb_desc_ep *ep_desc);

uint32_t usbd_ep_clear (usb_core_driver *udev, uint8_t ep_addr);

uint32_t usbd_ep_recev (usb_core_driver *udev, uint8_t ep_addr, uint8_t *pbuf, uint32_t len);

uint32_t usbd_ep_send (usb_core_driver *udev, uint8_t ep_addr, uint8_t *pbuf, uint32_t len);

uint32_t usbd_ep_stall (usb_core_driver *udev, uint8_t ep_addr);

uint32_t usbd_ep_stall_clear (usb_core_driver *udev, uint8_t ep_addr);

uint32_t usbd_fifo_flush (usb_core_driver *udev, uint8_t ep_addr);

void usbd_connect (usb_core_driver *udev);

void usbd_disconnect (usb_core_driver *udev);
# 41 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include\\usbd_enum.h" 2

# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\wchar.h" 1 3
# 36 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\wchar.h" 3
        typedef unsigned int size_t;
# 47 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\wchar.h" 3
          typedef unsigned int wchar_t;
# 59 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\wchar.h" 3
      typedef int wint_t;
# 87 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\wchar.h" 3
        typedef __builtin_va_list __va_list;
# 103 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\wchar.h" 3
      typedef struct __FILE FILE;
# 134 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\wchar.h" 3
      typedef struct __mbstate_t {
          unsigned int __state, __state2;
      } mbstate_t;







    struct tm;

    extern __attribute__((__nothrow__)) size_t wcsftime(wchar_t * __restrict , size_t ,
                       const wchar_t * __restrict , const struct tm * __restrict ) __attribute__((__nonnull__(1,3,4)));





#pragma __printf_args
    int swprintf(wchar_t * __restrict , size_t ,
                 const wchar_t * __restrict , ...) __attribute__((__nonnull__(3)));
#pragma __printf_args
    int vswprintf(wchar_t * __restrict , size_t ,
                  const wchar_t * __restrict , __va_list ) __attribute__((__nonnull__(3)));
#pragma __scanf_args
    int swscanf(const wchar_t * __restrict ,
                const wchar_t * __restrict , ...) __attribute__((__nonnull__(1,2)));
#pragma __scanf_args
    int vswscanf(const wchar_t * __restrict ,
                 const wchar_t * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));


#pragma __printf_args
    int fwprintf(struct __FILE * __restrict ,
                 const wchar_t * __restrict , ...) __attribute__((__nonnull__(1,2)));
#pragma __printf_args
    int vfwprintf(struct __FILE * __restrict ,
                  const wchar_t * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
#pragma __scanf_args
    int fwscanf(struct __FILE * __restrict ,
                const wchar_t * __restrict , ...) __attribute__((__nonnull__(1,2)));
#pragma __scanf_args
    int vfwscanf(struct __FILE * __restrict ,
                 const wchar_t * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));


#pragma __printf_args
    int wprintf(const wchar_t * __restrict , ...) __attribute__((__nonnull__(1)));
#pragma __printf_args
    int vwprintf(const wchar_t * __restrict , __va_list ) __attribute__((__nonnull__(1)));
#pragma __scanf_args
    int wscanf(const wchar_t * __restrict , ...) __attribute__((__nonnull__(1)));
#pragma __scanf_args
    int vwscanf(const wchar_t * __restrict , __va_list ) __attribute__((__nonnull__(1)));




    wint_t fgetwc(struct __FILE * ) __attribute__((__nonnull__(1)));
    wchar_t *fgetws(wchar_t * __restrict , int , struct __FILE * __restrict ) __attribute__((__nonnull__(1,3)));
    wint_t fputwc(wchar_t , struct __FILE * ) __attribute__((__nonnull__(2)));
    int fputws(const wchar_t * __restrict , struct __FILE * __restrict ) __attribute__((__nonnull__(1,2)));
    int fwide(struct __FILE * , int ) __attribute__((__nonnull__(1)));
    wint_t getwc(struct __FILE * ) __attribute__((__nonnull__(1)));
    wint_t getwchar(void);
    wint_t putwc(wchar_t , struct __FILE * ) __attribute__((__nonnull__(2)));
    wint_t putwchar(wchar_t );
    wint_t ungetwc(wint_t , struct __FILE * ) __attribute__((__nonnull__(2)));


    wint_t btowc(int );
    wint_t wctob(int );
    int mbsinit(const mbstate_t * );
    size_t mbrlen(const char * __restrict , size_t ,
                  mbstate_t * __restrict );
    size_t mbrtowc(wchar_t * __restrict ,
                   const char * __restrict ,
                   size_t , mbstate_t * __restrict );
    size_t wcrtomb(char * __restrict , wchar_t ,
                   mbstate_t * __restrict );
    size_t mbsrtowcs(wchar_t * __restrict ,
                     const char ** __restrict ,
                     size_t , mbstate_t * __restrict ) __attribute__((__nonnull__(2)));
    size_t wcsrtombs(char * __restrict ,
                     const wchar_t ** __restrict ,
                     size_t , mbstate_t * __restrict ) __attribute__((__nonnull__(2)));
    size_t _mbsnrtowcs(wchar_t * __restrict ,
                       const char ** __restrict ,
                       size_t ,
                       size_t , mbstate_t * __restrict ) __attribute__((__nonnull__(2)));
    size_t _wcsnrtombs(char * __restrict ,
                       const wchar_t ** __restrict ,
                       size_t ,
                       size_t , mbstate_t * __restrict ) __attribute__((__nonnull__(2)));

    size_t mbsnrtowcs(wchar_t * __restrict ,
                      const char ** __restrict ,
                      size_t ,
                      size_t , mbstate_t * __restrict ) __attribute__((__nonnull__(2)));
    size_t wcsnrtombs(char * __restrict ,
                      const wchar_t ** __restrict ,
                      size_t ,
                      size_t , mbstate_t * __restrict ) __attribute__((__nonnull__(2)));





    __attribute__((__nothrow__)) double wcstod(const wchar_t * , wchar_t ** ) __attribute__((__nonnull__(1)));
    __attribute__((__nothrow__)) float wcstof(const wchar_t * , wchar_t ** ) __attribute__((__nonnull__(1)));
    __attribute__((__nothrow__)) long double wcstold(const wchar_t * , wchar_t ** ) __attribute__((__nonnull__(1)));
    long int wcstol(const wchar_t * , wchar_t ** ,
                    int ) __attribute__((__nonnull__(1)));
    unsigned long int wcstoul(const wchar_t * ,
                              wchar_t ** , int ) __attribute__((__nonnull__(1)));

    long long int wcstoll(const wchar_t * __restrict ,
                          wchar_t ** __restrict , int ) __attribute__((__nonnull__(1)));
    unsigned long long int wcstoull(const wchar_t * __restrict ,
                                    wchar_t ** __restrict ,
                                    int ) __attribute__((__nonnull__(1)));





    wchar_t *wcscpy(wchar_t * __restrict ,
                    const wchar_t * __restrict ) __attribute__((__nonnull__(1,2)));
    wchar_t *wcsncpy(wchar_t * __restrict ,
                     const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
    wchar_t *wmemcpy(wchar_t * __restrict ,
                     const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
    wchar_t *wmemmove(wchar_t * __restrict ,
                      const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
    wchar_t *wcscat(wchar_t * __restrict ,
                    const wchar_t * __restrict ) __attribute__((__nonnull__(1,2)));
    wchar_t *wcsncat(wchar_t * __restrict ,
                     const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
    int wcscmp(const wchar_t * __restrict ,
               const wchar_t * __restrict ) __attribute__((__nonnull__(1,2)));
    int wcsncmp(const wchar_t * __restrict ,
                const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
    int wcscasecmp(const wchar_t * __restrict ,
                   const wchar_t * __restrict ) __attribute__((__nonnull__(1,2)));
    int wcsncasecmp(const wchar_t * __restrict ,
                    const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
    int wcscoll(const wchar_t * __restrict ,
                const wchar_t * __restrict ) __attribute__((__nonnull__(1,2)));
    size_t wcsxfrm(wchar_t * __restrict ,
                   const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(2)));
    int wmemcmp(const wchar_t * __restrict ,
                const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
    size_t wcscspn(const wchar_t * __restrict ,
                   const wchar_t * __restrict ) __attribute__((__nonnull__(1,2)));
    size_t wcsspn(const wchar_t * __restrict ,
                  const wchar_t * __restrict ) __attribute__((__nonnull__(1,2)));
    wchar_t *wcstok(wchar_t * __restrict ,
                    const wchar_t * __restrict ,
                    wchar_t ** __restrict ) __attribute__((__nonnull__(2,3)));
    size_t wcslen(const wchar_t * __restrict ) __attribute__((__nonnull__(1)));
    wchar_t *wmemset(wchar_t * __restrict , wchar_t , size_t ) __attribute__((__nonnull__(1)));
# 347 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\wchar.h" 3
    wchar_t *wcschr(const wchar_t * __restrict , wchar_t ) __attribute__((__nonnull__(1)));
    wchar_t *wcspbrk(const wchar_t * __restrict ,
                     const wchar_t * __restrict ) __attribute__((__nonnull__(1,2)));
    wchar_t *wcsrchr(const wchar_t * __restrict , wchar_t ) __attribute__((__nonnull__(1)));
    wchar_t *wcsstr(const wchar_t * __restrict ,
                    const wchar_t * __restrict ) __attribute__((__nonnull__(1,2)));
    wchar_t *wmemchr(const wchar_t * __restrict , wchar_t ,
                              size_t ) __attribute__((__nonnull__(1)));
# 43 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include\\usbd_enum.h" 2





typedef enum _usb_reqsta {
    REQ_SUPP = 0x0U,
    REQ_NOTSUPP = 0x1U,
} usb_reqsta;


enum _str_index
{
    STR_IDX_LANGID = 0x0U,
    STR_IDX_MFC = 0x1U,
    STR_IDX_PRODUCT = 0x2U,
    STR_IDX_SERIAL = 0x3U,
    STR_IDX_CONFIG = 0x4U,
    STR_IDX_ITF = 0x5U,
    STR_IDX_MAX = 0xEFU,
};

typedef enum _usb_pwrsta {
    USB_PWRSTA_SELF_POWERED = 0x1U,
    USB_PWRSTA_REMOTE_WAKEUP = 0x2U,
} usb_pwrsta;

typedef enum _usb_feature
{
    USB_FEATURE_EP_HALT = 0x0U,
    USB_FEATURE_REMOTE_WAKEUP = 0x1U,
    USB_FEATURE_TEST_MODE = 0x2U,
} usb_feature;
# 91 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/device/core/Include\\usbd_enum.h"
usb_reqsta usbd_standard_request (usb_core_driver *udev, usb_req *req);

usb_reqsta usbd_class_request (usb_core_driver *udev, usb_req *req);

usb_reqsta usbd_vendor_request (usb_core_driver *udev, usb_req *req);

void usbd_enum_error (usb_core_driver *udev, usb_req *req);

void int_to_unicode (uint32_t value, uint8_t *pbuf, uint8_t len);

void serial_string_get (uint16_t *unicode_str);
# 5 "../source/custom_hid_core.h" 2
# 1 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/ustd/class/hid\\usb_hid.h" 1
# 61 "../GD32E10x_Firmware_Library/GD32E10x_usbfs_library/ustd/class/hid\\usb_hid.h"
#pragma pack(1)

typedef struct
{
    usb_desc_header header;

    uint16_t bcdHID;
    uint8_t bCountryCode;
    uint8_t bNumDescriptors;
    uint8_t bDescriptorType;
    uint16_t wDescriptorLength;
} usb_desc_hid;

#pragma pack()

typedef struct
{
    usb_desc_config config;
    usb_desc_itf hid_itf;
    usb_desc_hid hid_vendor;
    usb_desc_ep hid_epin;
    usb_desc_ep hid_epout;
}usb_hid_desc_config_set;
# 6 "../source/custom_hid_core.h" 2






typedef struct {
    uint8_t data[64];
} standard_hid_handler;

typedef struct {
    void (*hid_itf_config) (void);
    void (*hid_itf_data_process) (usb_dev *udev);
} hid_fop_handler;

extern usb_desc hid_desc;
extern usb_class_core usbd_hid_cb;



uint8_t hid_itfop_register (usb_dev *udev, hid_fop_handler *hid_fop);

uint8_t hid_report_send (usb_dev *udev, uint8_t *report, uint32_t len);
# 2 "../source/custom_hid_core.c" 2

# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 1 3
# 44 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
    typedef unsigned int size_t;
# 58 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void *memcpy(void * __restrict ,
                    const void * __restrict , size_t ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) void *memmove(void * ,
                    const void * , size_t ) __attribute__((__nonnull__(1,2)));
# 77 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strcpy(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) char *strncpy(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
# 93 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strcat(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) char *strncat(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
# 117 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) int memcmp(const void * , const void * , size_t ) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int strcmp(const char * , const char * ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) int strncmp(const char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 141 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) int strcasecmp(const char * , const char * ) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int strncasecmp(const char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 158 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) int strcoll(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 169 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strxfrm(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 193 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void *memchr(const void * , int , size_t ) __attribute__((__nonnull__(1)));
# 209 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strchr(const char * , int ) __attribute__((__nonnull__(1)));
# 218 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strcspn(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 232 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strpbrk(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 247 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strrchr(const char * , int ) __attribute__((__nonnull__(1)));
# 257 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strspn(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 270 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strstr(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 280 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strtok(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) char *_strtok_r(char * , const char * , char ** ) __attribute__((__nonnull__(2,3)));

extern __attribute__((__nothrow__)) char *strtok_r(char * , const char * , char ** ) __attribute__((__nonnull__(2,3)));
# 321 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void *memset(void * , int , size_t ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) char *strerror(int );







extern __attribute__((__nothrow__)) size_t strlen(const char * ) __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) size_t strlcpy(char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 362 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strlcat(char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 388 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void _membitcpybl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpybb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpyhl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpyhb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpywl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpywb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovebl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovebb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovehl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovehb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovewl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovewb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
# 4 "../source/custom_hid_core.c" 2

# 1 "../RTT/RTT\\SEGGER_RTT.h" 1
# 61 "../RTT/RTT\\SEGGER_RTT.h"
# 1 "../RTT/Config\\SEGGER_RTT_Conf.h" 1
# 62 "../RTT/RTT\\SEGGER_RTT.h" 2
# 281 "../RTT/RTT\\SEGGER_RTT.h"
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdarg.h" 1 3
# 40 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdarg.h" 3
  typedef __builtin_va_list va_list;
# 134 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdarg.h" 3
     typedef va_list __gnuc_va_list;
# 282 "../RTT/RTT\\SEGGER_RTT.h" 2
# 317 "../RTT/RTT\\SEGGER_RTT.h"
typedef struct {
  const char* sName;
            char* pBuffer;
            unsigned SizeOfBuffer;
            unsigned WrOff;
  volatile unsigned RdOff;
            unsigned Flags;
} SEGGER_RTT_BUFFER_UP;





typedef struct {
  const char* sName;
            char* pBuffer;
            unsigned SizeOfBuffer;
  volatile unsigned WrOff;
            unsigned RdOff;
            unsigned Flags;
} SEGGER_RTT_BUFFER_DOWN;






typedef struct {
  char acID[16];
  int MaxNumUpBuffers;
  int MaxNumDownBuffers;
  SEGGER_RTT_BUFFER_UP aUp[(3)];
  SEGGER_RTT_BUFFER_DOWN aDown[(3)];



} SEGGER_RTT_CB;







extern SEGGER_RTT_CB _SEGGER_RTT;
# 372 "../RTT/RTT\\SEGGER_RTT.h"
int SEGGER_RTT_AllocDownBuffer (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_AllocUpBuffer (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_ConfigUpBuffer (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_ConfigDownBuffer (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_GetKey (void);
unsigned SEGGER_RTT_HasData (unsigned BufferIndex);
int SEGGER_RTT_HasKey (void);
unsigned SEGGER_RTT_HasDataUp (unsigned BufferIndex);
void SEGGER_RTT_Init (void);
unsigned SEGGER_RTT_Read (unsigned BufferIndex, void* pBuffer, unsigned BufferSize);
unsigned SEGGER_RTT_ReadNoLock (unsigned BufferIndex, void* pData, unsigned BufferSize);
int SEGGER_RTT_SetNameDownBuffer (unsigned BufferIndex, const char* sName);
int SEGGER_RTT_SetNameUpBuffer (unsigned BufferIndex, const char* sName);
int SEGGER_RTT_SetFlagsDownBuffer (unsigned BufferIndex, unsigned Flags);
int SEGGER_RTT_SetFlagsUpBuffer (unsigned BufferIndex, unsigned Flags);
int SEGGER_RTT_WaitKey (void);
unsigned SEGGER_RTT_Write (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteNoLock (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteSkipNoLock (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_ASM_WriteSkipNoLock (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteString (unsigned BufferIndex, const char* s);
void SEGGER_RTT_WriteWithOverwriteNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_PutChar (unsigned BufferIndex, char c);
unsigned SEGGER_RTT_PutCharSkip (unsigned BufferIndex, char c);
unsigned SEGGER_RTT_PutCharSkipNoLock (unsigned BufferIndex, char c);
unsigned SEGGER_RTT_GetAvailWriteSpace (unsigned BufferIndex);
unsigned SEGGER_RTT_GetBytesInBuffer (unsigned BufferIndex);
# 414 "../RTT/RTT\\SEGGER_RTT.h"
unsigned SEGGER_RTT_ReadUpBuffer (unsigned BufferIndex, void* pBuffer, unsigned BufferSize);
unsigned SEGGER_RTT_ReadUpBufferNoLock (unsigned BufferIndex, void* pData, unsigned BufferSize);
unsigned SEGGER_RTT_WriteDownBuffer (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteDownBufferNoLock (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
# 427 "../RTT/RTT\\SEGGER_RTT.h"
int SEGGER_RTT_SetTerminal (unsigned char TerminalId);
int SEGGER_RTT_TerminalOut (unsigned char TerminalId, const char* s);







int SEGGER_RTT_printf(unsigned BufferIndex, const char * sFormat, ...);
int SEGGER_RTT_vprintf(unsigned BufferIndex, const char * sFormat, va_list * pParamList);
# 6 "../source/custom_hid_core.c" 2






const usb_desc_dev hid_dev_desc =
    {
        .header =
            {
                .bLength = 0x12U,
                .bDescriptorType = USB_DESCTYPE_DEV},
        .bcdUSB = 0x0200U,
        .bDeviceClass = 0x00U,
        .bDeviceSubClass = 0x00U,
        .bDeviceProtocol = 0x00U,
        .bMaxPacketSize0 = 64U,
        .idVendor = 1155,
        .idProduct = 22352,
        .bcdDevice = 0x0100U,
        .iManufacturer = STR_IDX_MFC,
        .iProduct = STR_IDX_PRODUCT,
        .iSerialNumber = STR_IDX_SERIAL,
        .bNumberConfigurations = 1};

const usb_hid_desc_config_set hid_config_desc =
    {
        .config =
            {
                .header =
                    {
                        .bLength = sizeof(usb_desc_config),
                        .bDescriptorType = USB_DESCTYPE_CONFIG},
                .wTotalLength = 41U,
                .bNumInterfaces = 0x01U,
                .bConfigurationValue = 0x01U,
                .iConfiguration = 0x00U,
                .bmAttributes = 0xA0U,
                .bMaxPower = 0x32U},

        .hid_itf =
            {
                .header =
                    {
                        .bLength = sizeof(usb_desc_itf),
                        .bDescriptorType = USB_DESCTYPE_ITF},
                .bInterfaceNumber = 0x00U,
                .bAlternateSetting = 0x00U,
                .bNumEndpoints = 0x01U,
                .bInterfaceClass = 0x03U,
                .bInterfaceSubClass = 0xFF,
                .bInterfaceProtocol = 0,
                .iInterface = 0x00U},

        .hid_vendor =
            {
                .header =
                    {
                        .bLength = sizeof(usb_desc_hid),
                        .bDescriptorType = 0x21U},
                .bcdHID = 0x0111U,
                .bCountryCode = 0x00U,
                .bNumDescriptors = 0x01U,
                .bDescriptorType = 0x22U,
                .wDescriptorLength = 33,
            },

        .hid_epin =
            {
                .header =
                    {
                        .bLength = sizeof(usb_desc_ep),
                        .bDescriptorType = USB_DESCTYPE_EP},
                .bEndpointAddress = ((uint8_t)0x81),
                .bmAttributes = USB_EP_ATTR_INT,
                .wMaxPacketSize = 64,
                .bInterval = 0x20U},

        .hid_epout =
            {
                .header =
                    {
                        .bLength = sizeof(usb_desc_ep),
                        .bDescriptorType = USB_DESCTYPE_EP},
                .bEndpointAddress = ((uint8_t)0x01),
                .bmAttributes = USB_EP_ATTR_INT,
                .wMaxPacketSize = 64,
                .bInterval = 0x20U}};


const usb_desc_LANGID usbd_language_id_desc =
    {
        .header =
            {
                .bLength = sizeof(usb_desc_LANGID),
                .bDescriptorType = USB_DESCTYPE_STR},
        .wLANGID = 0x0409U};


static const usb_desc_str manufacturer_string =
    {
        .header =
            {
                .bLength = (sizeof(usb_desc_header) + ((10U) << 1U)),
                .bDescriptorType = USB_DESCTYPE_STR,
            },
        .unicode_string = {'G', 'i', 'g', 'a', 'D', 'e', 'v', 'i', 'c', 'e'}};


static const usb_desc_str product_string =
    {
        .header =
            {
                .bLength = (sizeof(usb_desc_header) + ((17U) << 1U)),
                .bDescriptorType = USB_DESCTYPE_STR,
            },
        .unicode_string = {'G', 'D', '3', '2', '-', 'U', 'S', 'B', '_', 'K', 'e', 'y', 'b', 'o', 'a', 'r', 'd'}};


static usb_desc_str serial_string =
    {
        .header =
            {
                .bLength = (sizeof(usb_desc_header) + ((12U) << 1U)),
                .bDescriptorType = USB_DESCTYPE_STR,
            }};

void *const usbd_hid_strings[] =
    {
        [STR_IDX_LANGID] = (uint8_t *)&usbd_language_id_desc,
        [STR_IDX_MFC] = (uint8_t *)&manufacturer_string,
        [STR_IDX_PRODUCT] = (uint8_t *)&product_string,
        [STR_IDX_SERIAL] = (uint8_t *)&serial_string};

usb_desc hid_desc = {
    .dev_desc = (uint8_t *)&hid_dev_desc,
    .config_desc = (uint8_t *)&hid_config_desc,
    .strings = usbd_hid_strings};

const uint8_t hid_report_desc[33] =
{

 0x06, 0x00, 0xFF,
    0x09, 0x01,
    0xA1, 0x01,

    0x19, 0x01,
    0x29, 0x40,
    0x15, 0x00,
    0x26, 0xFF, 0x00,
    0x75, 0x08,
    0x95, 64,
    0x81, 0x02,

    0x19, 0x01,
    0x29, 0x40,
    0x75, 0x08,
    0x95, 64,
    0x91, 0x02,

    0xC0
};


static uint8_t hid_init(usb_dev *udev, uint8_t config_index);
static uint8_t hid_deinit(usb_dev *udev, uint8_t config_index);
static uint8_t hid_req(usb_dev *udev, usb_req *req);
static uint8_t hid_data_in(usb_dev *udev, uint8_t ep_num);
static uint8_t hid_data_out(usb_dev *udev, uint8_t ep_num);

usb_class_core usbd_hid_cb = {
    .command = 0xFFU,
    .alter_set = 0U,

    .init = hid_init,
    .deinit = hid_deinit,
    .req_proc = hid_req,
    .data_in = hid_data_in,
    .data_out = hid_data_out};
# 193 "../source/custom_hid_core.c"
uint8_t hid_itfop_register(usb_dev *udev, hid_fop_handler *hid_fop) {
    if (0 != hid_fop) {
        udev->dev.user_data = (void *)hid_fop;

        return USBD_OK;
    }

    return USBD_FAIL;
}
# 211 "../source/custom_hid_core.c"
uint8_t hid_report_send(usb_dev *udev, uint8_t *report, uint32_t len) {
    standard_hid_handler *hid = (standard_hid_handler *)udev->dev.class_data[0];
    usbd_ep_send(udev, ((uint8_t)0x81), report, len);
    return USBD_OK;
}
# 224 "../source/custom_hid_core.c"
static uint8_t hid_init(usb_dev *udev, uint8_t config_index) {
    static standard_hid_handler hid_handler;

    memset((void *)&hid_handler, 0U, sizeof(standard_hid_handler));


    usbd_ep_setup(udev, &(hid_config_desc.hid_epin));

    usbd_ep_setup(udev, &(hid_config_desc.hid_epout));

    usbd_ep_recev (udev, ((uint8_t)0x01), hid_handler.data, 64);

    udev->dev.class_data[0] = (void *)&hid_handler;
    if (0 != udev->dev.user_data) {
        ((hid_fop_handler *)udev->dev.user_data)->hid_itf_config();
    }

    return USBD_OK;
}
# 251 "../source/custom_hid_core.c"
static uint8_t hid_deinit(usb_dev *udev, uint8_t config_index) {

    usbd_ep_clear(udev, ((uint8_t)0x81));
    usbd_ep_clear(udev, ((uint8_t)0x01));
    return USBD_OK;
}
# 265 "../source/custom_hid_core.c"
static uint8_t hid_req(usb_dev *udev, usb_req *req) {
    usb_transc *transc = &udev->dev.transc_in[0];
    static uint8_t index = 0;
    standard_hid_handler *hid = (standard_hid_handler *)udev->dev.class_data[0];

    switch (req->bRequest) {
    case 0x01U:
        index++;

        break;
    case 0x02U:
        transc->xfer_buf = hid->data;
        transc->remain_len = 64;
        break;
    case 0x03U:
        transc->xfer_buf = hid->data;
        transc->remain_len = 64;
        break;
    case 0x09U:
        index++;

        break;
    case 0x0AU:

        break;
    case 0x0BU:

        break;
    case USB_GET_DESCRIPTOR:
        if (0x22U == (req->wValue >> 8U)) {
            transc->remain_len = (((33) < (req->wLength)) ? (33) : (req->wLength));
            transc->xfer_buf = (uint8_t *)hid_report_desc;

            return REQ_SUPP;
        }
        else if (0x21U == (req->wValue >> 8U)) {
            transc->remain_len = (((9U) < (req->wLength)) ? (9U) : (req->wLength));
            transc->xfer_buf = (uint8_t *)(&(hid_config_desc.hid_vendor));
        }
        break;

    default:
        break;
    }

    return USBD_OK;
}
# 320 "../source/custom_hid_core.c"
static uint8_t hid_data_in(usb_dev *udev, uint8_t ep_num) {
    standard_hid_handler *hid = (standard_hid_handler *)udev->dev.class_data[0];
    usbd_ep_send(udev, ((uint8_t)0x81), hid->data, 64);
    return USBD_OK;
}

static uint8_t hid_data_out(usb_dev *udev, uint8_t ep_num) {
    standard_hid_handler *hid = (standard_hid_handler *)udev->dev.class_data[0];
    SEGGER_RTT_printf(0, "- USB recv data: %s ...\r\n", hid->data);
    usbd_ep_recev(udev, ((uint8_t)0x01), hid->data, 64);
    usbd_ep_send(udev, ((uint8_t)0x81), hid->data, 64);
    return USBD_OK;
}
