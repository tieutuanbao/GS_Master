# 1 "../RTT/RTT/SEGGER_RTT_printf.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 386 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../RTT/RTT/SEGGER_RTT_printf.c" 2
# 55 "../RTT/RTT/SEGGER_RTT_printf.c"
# 1 "../RTT/RTT/SEGGER_RTT.h" 1
# 61 "../RTT/RTT/SEGGER_RTT.h"
# 1 "../RTT/Config\\SEGGER_RTT_Conf.h" 1
# 62 "../RTT/RTT/SEGGER_RTT.h" 2
# 280 "../RTT/RTT/SEGGER_RTT.h"
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
# 281 "../RTT/RTT/SEGGER_RTT.h" 2
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdarg.h" 1 3
# 40 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdarg.h" 3
  typedef __builtin_va_list va_list;
# 134 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdarg.h" 3
     typedef va_list __gnuc_va_list;
# 282 "../RTT/RTT/SEGGER_RTT.h" 2
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
# 283 "../RTT/RTT/SEGGER_RTT.h" 2
# 317 "../RTT/RTT/SEGGER_RTT.h"
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
# 372 "../RTT/RTT/SEGGER_RTT.h"
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
# 414 "../RTT/RTT/SEGGER_RTT.h"
unsigned SEGGER_RTT_ReadUpBuffer (unsigned BufferIndex, void* pBuffer, unsigned BufferSize);
unsigned SEGGER_RTT_ReadUpBufferNoLock (unsigned BufferIndex, void* pData, unsigned BufferSize);
unsigned SEGGER_RTT_WriteDownBuffer (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteDownBufferNoLock (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
# 427 "../RTT/RTT/SEGGER_RTT.h"
int SEGGER_RTT_SetTerminal (unsigned char TerminalId);
int SEGGER_RTT_TerminalOut (unsigned char TerminalId, const char* s);







int SEGGER_RTT_printf(unsigned BufferIndex, const char * sFormat, ...);
int SEGGER_RTT_vprintf(unsigned BufferIndex, const char * sFormat, va_list * pParamList);
# 56 "../RTT/RTT/SEGGER_RTT_printf.c" 2
# 85 "../RTT/RTT/SEGGER_RTT_printf.c"
typedef struct {
  char* pBuffer;
  unsigned BufferSize;
  unsigned Cnt;

  int ReturnValue;

  unsigned RTTBufferIndex;
} SEGGER_RTT_PRINTF_DESC;
# 112 "../RTT/RTT/SEGGER_RTT_printf.c"
static void _StoreChar(SEGGER_RTT_PRINTF_DESC * p, char c) {
  unsigned Cnt;

  Cnt = p->Cnt;
  if ((Cnt + 1u) <= p->BufferSize) {
    *(p->pBuffer + Cnt) = c;
    p->Cnt = Cnt + 1u;
    p->ReturnValue++;
  }



  if (p->Cnt == p->BufferSize) {
    if (SEGGER_RTT_Write(p->RTTBufferIndex, p->pBuffer, p->Cnt) != p->Cnt) {
      p->ReturnValue = -1;
    } else {
      p->Cnt = 0u;
    }
  }
}





static void _PrintUnsigned(SEGGER_RTT_PRINTF_DESC * pBufferDesc, unsigned v, unsigned Base, unsigned NumDigits, unsigned FieldWidth, unsigned FormatFlags) {
  static const char _aV2C[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
  unsigned Div;
  unsigned Digit;
  unsigned Number;
  unsigned Width;
  char c;

  Number = v;
  Digit = 1u;



  Width = 1u;
  while (Number >= Base) {
    Number = (Number / Base);
    Width++;
  }
  if (NumDigits > Width) {
    Width = NumDigits;
  }



  if ((FormatFlags & (1u << 0)) == 0u) {
    if (FieldWidth != 0u) {
      if (((FormatFlags & (1u << 1)) == (1u << 1)) && (NumDigits == 0u)) {
        c = '0';
      } else {
        c = ' ';
      }
      while ((FieldWidth != 0u) && (Width < FieldWidth)) {
        FieldWidth--;
        _StoreChar(pBufferDesc, c);
        if (pBufferDesc->ReturnValue < 0) {
          break;
        }
      }
    }
  }
  if (pBufferDesc->ReturnValue >= 0) {





    while (1) {
      if (NumDigits > 1u) {
        NumDigits--;
      } else {
        Div = v / Digit;
        if (Div < Base) {
          break;
        }
      }
      Digit *= Base;
    }



    do {
      Div = v / Digit;
      v -= Div * Digit;
      _StoreChar(pBufferDesc, _aV2C[Div]);
      if (pBufferDesc->ReturnValue < 0) {
        break;
      }
      Digit /= Base;
    } while (Digit);



    if ((FormatFlags & (1u << 0)) == (1u << 0)) {
      if (FieldWidth != 0u) {
        while ((FieldWidth != 0u) && (Width < FieldWidth)) {
          FieldWidth--;
          _StoreChar(pBufferDesc, ' ');
          if (pBufferDesc->ReturnValue < 0) {
            break;
          }
        }
      }
    }
  }
}





static void _PrintInt(SEGGER_RTT_PRINTF_DESC * pBufferDesc, int v, unsigned Base, unsigned NumDigits, unsigned FieldWidth, unsigned FormatFlags) {
  unsigned Width;
  int Number;

  Number = (v < 0) ? -v : v;




  Width = 1u;
  while (Number >= (int)Base) {
    Number = (Number / (int)Base);
    Width++;
  }
  if (NumDigits > Width) {
    Width = NumDigits;
  }
  if ((FieldWidth > 0u) && ((v < 0) || ((FormatFlags & (1u << 2)) == (1u << 2)))) {
    FieldWidth--;
  }




  if ((((FormatFlags & (1u << 1)) == 0u) || (NumDigits != 0u)) && ((FormatFlags & (1u << 0)) == 0u)) {
    if (FieldWidth != 0u) {
      while ((FieldWidth != 0u) && (Width < FieldWidth)) {
        FieldWidth--;
        _StoreChar(pBufferDesc, ' ');
        if (pBufferDesc->ReturnValue < 0) {
          break;
        }
      }
    }
  }



  if (pBufferDesc->ReturnValue >= 0) {
    if (v < 0) {
      v = -v;
      _StoreChar(pBufferDesc, '-');
    } else if ((FormatFlags & (1u << 2)) == (1u << 2)) {
      _StoreChar(pBufferDesc, '+');
    } else {

    }
    if (pBufferDesc->ReturnValue >= 0) {



      if (((FormatFlags & (1u << 1)) == (1u << 1)) && ((FormatFlags & (1u << 0)) == 0u) && (NumDigits == 0u)) {
        if (FieldWidth != 0u) {
          while ((FieldWidth != 0u) && (Width < FieldWidth)) {
            FieldWidth--;
            _StoreChar(pBufferDesc, '0');
            if (pBufferDesc->ReturnValue < 0) {
              break;
            }
          }
        }
      }
      if (pBufferDesc->ReturnValue >= 0) {



        _PrintUnsigned(pBufferDesc, (unsigned)v, Base, NumDigits, FieldWidth, FormatFlags);
      }
    }
  }
}
# 322 "../RTT/RTT/SEGGER_RTT_printf.c"
int SEGGER_RTT_vprintf(unsigned BufferIndex, const char * sFormat, va_list * pParamList) {
  char c;
  SEGGER_RTT_PRINTF_DESC BufferDesc;
  int v;
  unsigned NumDigits;
  unsigned FormatFlags;
  unsigned FieldWidth;
  char acBuffer[(64u)];

  BufferDesc.pBuffer = acBuffer;
  BufferDesc.BufferSize = (64u);
  BufferDesc.Cnt = 0u;
  BufferDesc.RTTBufferIndex = BufferIndex;
  BufferDesc.ReturnValue = 0;

  do {
    c = *sFormat;
    sFormat++;
    if (c == 0u) {
      break;
    }
    if (c == '%') {



      FormatFlags = 0u;
      v = 1;
      do {
        c = *sFormat;
        switch (c) {
        case '-': FormatFlags |= (1u << 0); sFormat++; break;
        case '0': FormatFlags |= (1u << 1); sFormat++; break;
        case '+': FormatFlags |= (1u << 2); sFormat++; break;
        case '#': FormatFlags |= (1u << 3); sFormat++; break;
        default: v = 0; break;
        }
      } while (v);



      FieldWidth = 0u;
      do {
        c = *sFormat;
        if ((c < '0') || (c > '9')) {
          break;
        }
        sFormat++;
        FieldWidth = (FieldWidth * 10u) + ((unsigned)c - '0');
      } while (1);




      NumDigits = 0u;
      c = *sFormat;
      if (c == '.') {
        sFormat++;
        do {
          c = *sFormat;
          if ((c < '0') || (c > '9')) {
            break;
          }
          sFormat++;
          NumDigits = NumDigits * 10u + ((unsigned)c - '0');
        } while (1);
      }



      c = *sFormat;
      do {
        if ((c == 'l') || (c == 'h')) {
          sFormat++;
          c = *sFormat;
        } else {
          break;
        }
      } while (1);



      switch (c) {
      case 'c': {
        char c0;
        v = __builtin_va_arg(*pParamList, int);
        c0 = (char)v;
        _StoreChar(&BufferDesc, c0);
        break;
      }
      case 'd':
        v = __builtin_va_arg(*pParamList, int);
        _PrintInt(&BufferDesc, v, 10u, NumDigits, FieldWidth, FormatFlags);
        break;
      case 'u':
        v = __builtin_va_arg(*pParamList, int);
        _PrintUnsigned(&BufferDesc, (unsigned)v, 10u, NumDigits, FieldWidth, FormatFlags);
        break;
      case 'x':
      case 'X':
        v = __builtin_va_arg(*pParamList, int);
        _PrintUnsigned(&BufferDesc, (unsigned)v, 16u, NumDigits, FieldWidth, FormatFlags);
        break;
      case 's':
        {
          const char * s = __builtin_va_arg(*pParamList, const char *);
          do {
            c = *s;
            s++;
            if (c == '\0') {
              break;
            }
           _StoreChar(&BufferDesc, c);
          } while (BufferDesc.ReturnValue >= 0);
        }
        break;
      case 'p':
        v = __builtin_va_arg(*pParamList, int);
        _PrintUnsigned(&BufferDesc, (unsigned)v, 16u, 8u, 8u, 0u);
        break;
      case '%':
        _StoreChar(&BufferDesc, '%');
        break;
      default:
        break;
      }
      sFormat++;
    } else {
      _StoreChar(&BufferDesc, c);
    }
  } while (BufferDesc.ReturnValue >= 0);

  if (BufferDesc.ReturnValue > 0) {



    if (BufferDesc.Cnt != 0u) {
      SEGGER_RTT_Write(BufferIndex, acBuffer, BufferDesc.Cnt);
    }
    BufferDesc.ReturnValue += (int)BufferDesc.Cnt;
  }
  return BufferDesc.ReturnValue;
}
# 496 "../RTT/RTT/SEGGER_RTT_printf.c"
int SEGGER_RTT_printf(unsigned BufferIndex, const char * sFormat, ...) {
  int r;
  va_list ParamList;

  __builtin_va_start(ParamList, sFormat);
  r = SEGGER_RTT_vprintf(BufferIndex, sFormat, &ParamList);
  __builtin_va_end(ParamList);
  return r;
}
