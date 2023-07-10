# 1 "../components/W25Qxxx/W25Q.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 386 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../components/W25Qxxx/W25Q.c" 2
# 14 "../components/W25Qxxx/W25Q.c"
# 1 "../components/W25Qxxx/W25Q.h" 1
# 16 "../components/W25Qxxx/W25Q.h"
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
# 17 "../components/W25Qxxx/W25Q.h" 2
# 50 "../components/W25Qxxx/W25Q.h"
typedef struct flash_device {
    const char *name;
    uint8_t read_cmd;
    uint8_t qread_cmd;
    uint8_t pprog_cmd;
    uint8_t erase_cmd;
    uint8_t chip_erase_cmd;
    uint32_t device_id;
    uint32_t pagesize;
    uint32_t sectorsize;
    uint32_t size_in_bytes;
} flash_device_t;

typedef enum {
    W25Q_id_10 = 0XEF10,
    W25Q_id_20 = 0XEF11,
    W25Q_id_40 = 0XEF12,
    W25Q_id_80 = 0XEF13,
    W25Q_id_16 = 0XEF14,
    W25Q_id_32 = 0XEF15,
    W25Q_id_64 = 0XEF16,
    W25Q_id_128 = 0XEF17,
    W25Q_id_256 = 0XEF18,
    W25Q_id_512 = 0XEF19
} W25Q_id_t;

typedef enum {
    W25Q_stt_OK = 0,
    W25Q_stt_ERROR_PROTOCOL = 1,
    W25Q_stt_ERROR_TIME_OUT,
    W25Q_stt_ERROR_STATUS,
    W25Q_stt_ERROR_OUT_MEMORY,
    W25Q_stt_ERROR_NO_BUFFER,
} W25Q_stt_t;

typedef enum {
    W25Q_command_READ_DATA = 0x03,
    W25Q_command_WRITE_DISABLE = 0x04,
    W25Q_command_READ_STATUS_REG1 = 0x05,
    W25Q_command_WRITE_ENABLE = 0x06,
    W25Q_command_READ_STATUS_REG2 = 0x35,
    W25Q_command_READ_STATUS_REG3 = 0x15,
    W25Q_command_WRITE_STATUS_REG1 = 0x01,
    W25Q_command_WRITE_STATUS_REG2 = 0x31,
    W25Q_command_WRITE_STATUS_REG3 = 0x11,
    W25Q_command_FAST_READ_DATA = 0x0B,
    W25Q_command_PAGE_PROGRAM = 0x02,
    W25Q_command_BLOCK_ERASE_32 = 0x52,
    W25Q_command_BLOCK_ERASE_64 = 0xD8,
    W25Q_SECTOR_ERASE = 0x20,
    W25Q_command_CHIP_ERASE = 0xC7,
    W25Q_command_POWER_DOWN = 0xB9,
    W25Q_command_RELEASE_POWER_DOWN = 0xAB,
    W25Q_command_DEVICE_ID = 0xAB,
    W25Q_command_MANUFACT_DEVICE_ID = 0x90,
    W25Q_command_BLOCK_LOCK = 0x36,
    W25Q_command_BLOCK_UNLOCK = 0x39,
    W25Q_command_GBLOCK_LOCK = 0x7E,
    W25Q_command_GBLOCK_UNLOCK = 0x98,
} W25Q_command_t;

typedef struct {
    W25Q_id_t id;
    uint8_t uniq_id[8];
    uint32_t page_count;
    uint32_t sector_count;
    uint32_t block_count;
    uint32_t capacity_in_kb;
    union {
        volatile uint8_t val;
        volatile struct {
            uint8_t BUSY : 1;
            uint8_t WEL : 1;
            uint8_t BP0 : 1;
            uint8_t BP1 : 1;
            uint8_t BP2 : 1;
            uint8_t TB : 1;
            uint8_t SEC : 1;
            uint8_t SPR0 : 1;
        } bit;
    } stt_reg_1;
    union {
        volatile uint8_t val;
        volatile struct {
            uint8_t BUSY : 1;
            uint8_t WEL : 1;
            uint8_t BP0 : 1;
            uint8_t BP1 : 1;
            uint8_t BP2 : 1;
            uint8_t TB : 1;
            uint8_t SEC : 1;
            uint8_t SPR0 : 1;
        } bit;
    } stt_reg_2;
    union {
        volatile uint8_t val;
        volatile struct {
            uint8_t BUSY : 1;
            uint8_t WEL : 1;
            uint8_t BP0 : 1;
            uint8_t BP1 : 1;
            uint8_t BP2 : 1;
            uint8_t TB : 1;
            uint8_t SEC : 1;
            uint8_t SPR0 : 1;
        } bit;
    } stt_reg_3;
    volatile uint8_t lock;

    uint8_t (*readWrite)(uint8_t byteWrite);
    void (*cs_sel)(void);
    void (*cs_desel)(void);
} W25Q_t;

W25Q_stt_t W25Q_init(W25Q_t *dev,
                    uint8_t (*drv_readWrite)(uint8_t byteWrite),
                    void (*drv_cs_sel)(void),
                    void (*drv_cs_desel)(void));

W25Q_stt_t W25Q_get_id(W25Q_t *dev);
void W25Q_get_status_reg(W25Q_t *dev, uint8_t num_reg);
void W25Q_set_status_reg(W25Q_t *dev, uint8_t num_reg, uint8_t val);
void W25Q_set_en_or_dis_write(W25Q_t *dev, uint8_t en_or_dis);
W25Q_stt_t W25Q_wait_busy(W25Q_t *dev, uint32_t timeout_ms);

W25Q_stt_t W25Q_read_mem(W25Q_t *dev, uint32_t read_addr, uint8_t *buf_to_read, uint32_t size_to_read);
W25Q_stt_t W25Q_fast_read_mem(W25Q_t *dev, uint32_t read_addr, uint8_t *buf_to_read, uint32_t size_to_read);

W25Q_stt_t W25Q_write_one_page(W25Q_t *dev, uint32_t write_addr, uint8_t *buf_to_write, uint32_t size_to_write);
W25Q_stt_t W25Q_write_mem(W25Q_t *dev, uint32_t write_addr, uint8_t *buf_to_write, uint32_t size_to_write);

W25Q_stt_t W25Q_erase_sector(W25Q_t *dev, uint32_t index_sector);
W25Q_stt_t W25Q_erase_block(W25Q_t *dev, uint32_t index_block);
W25Q_stt_t W25Q_erase_chip(W25Q_t *dev);
# 15 "../components/W25Qxxx/W25Q.c" 2

# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 1 3
# 53 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    typedef unsigned int size_t;
# 68 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    typedef __builtin_va_list __va_list;
# 87 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
typedef struct __fpos_t_struct {
    unsigned long long int __pos;





    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
# 108 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
typedef struct __FILE FILE;
# 138 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;
# 224 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int remove(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int rename(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 243 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *tmpfile(void);






extern __attribute__((__nothrow__)) char *tmpnam(char * );
# 265 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fclose(FILE * ) __attribute__((__nonnull__(1)));
# 275 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fflush(FILE * );
# 285 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *fopen(const char * __restrict ,
                           const char * __restrict ) __attribute__((__nonnull__(1,2)));
# 329 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *freopen(const char * __restrict ,
                    const char * __restrict ,
                    FILE * __restrict ) __attribute__((__nonnull__(2,3)));
# 342 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void setbuf(FILE * __restrict ,
                    char * __restrict ) __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) int setvbuf(FILE * __restrict ,
                   char * __restrict ,
                   int , size_t ) __attribute__((__nonnull__(1)));
# 370 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int fprintf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 393 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int _fprintf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __printf_args
extern __attribute__((__nothrow__)) int printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int _printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __printf_args
extern __attribute__((__nothrow__)) int sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));








#pragma __printf_args
extern __attribute__((__nothrow__)) int _sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int __ARM_snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __attribute__((__nothrow__)) int snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));
# 460 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int _snprintf(char * __restrict , size_t ,
                      const char * __restrict , ...) __attribute__((__nonnull__(3)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int fscanf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 503 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((__nothrow__)) int _fscanf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));








#pragma __scanf_args
extern __attribute__((__nothrow__)) int _scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int sscanf(const char * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 541 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((__nothrow__)) int _sscanf(const char * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) int vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((__nothrow__)) int _vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int _vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) int _vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int __ARM_vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((__nothrow__)) int vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int _vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) int vfprintf(FILE * __restrict ,
                    const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 584 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int vsprintf(char * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 594 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int __ARM_vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));

extern __attribute__((__nothrow__)) int vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));
# 609 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _vsprintf(char * __restrict ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((__nothrow__)) int _vfprintf(FILE * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((__nothrow__)) int _vsnprintf(char * __restrict , size_t ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int asprintf(char ** , const char * __restrict , ...) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) int vasprintf(char ** , const char * __restrict , __va_list ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __attribute__((__nothrow__)) int __ARM_asprintf(char ** , const char * __restrict , ...) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) int __ARM_vasprintf(char ** , const char * __restrict , __va_list ) __attribute__((__nonnull__(2)));
# 649 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fgetc(FILE * ) __attribute__((__nonnull__(1)));
# 659 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) char *fgets(char * __restrict , int ,
                    FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 673 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fputc(int , FILE * ) __attribute__((__nonnull__(2)));
# 683 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fputs(const char * __restrict , FILE * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) int getc(FILE * ) __attribute__((__nonnull__(1)));
# 704 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    extern __attribute__((__nothrow__)) int (getchar)(void);
# 713 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) char *gets(char * ) __attribute__((__nonnull__(1)));
# 725 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int putc(int , FILE * ) __attribute__((__nonnull__(2)));
# 737 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
    extern __attribute__((__nothrow__)) int (putchar)(int );






extern __attribute__((__nothrow__)) int puts(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int ungetc(int , FILE * ) __attribute__((__nonnull__(2)));
# 778 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t fread(void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 794 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t __fread_bytes_avail(void * __restrict ,
                    size_t , FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 810 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t fwrite(const void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 822 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fgetpos(FILE * __restrict , fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 833 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fseek(FILE * , long int , int ) __attribute__((__nonnull__(1)));
# 850 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fsetpos(FILE * __restrict , const fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 863 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) long int ftell(FILE * ) __attribute__((__nonnull__(1)));
# 877 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void rewind(FILE * ) __attribute__((__nonnull__(1)));
# 886 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void clearerr(FILE * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int feof(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) int ferror(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) void perror(const char * );
# 917 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _fisatty(FILE * ) __attribute__((__nonnull__(1)));



extern __attribute__((__nothrow__)) void __use_no_semihosting_swi(void);
extern __attribute__((__nothrow__)) void __use_no_semihosting(void);
# 17 "../components/W25Qxxx/W25Q.c" 2

# 1 "../libs\\delay.h" 1





void delayMicroseconds(uint32_t us);
void delay(uint32_t ms);
# 19 "../components/W25Qxxx/W25Q.c" 2
# 1 "../libs\\millis.h" 1





extern volatile uint32_t __tick_ms_counter;

uint32_t millis();
# 20 "../components/W25Qxxx/W25Q.c" 2


const flash_device_t flash_devices[] = {
    { .name = "st m25p05", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00102020, .pagesize = 0x80, .sectorsize = 0x8000, .size_in_bytes = 0x10000, },
    { .name = "st m25p10", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00112020, .pagesize = 0x80, .sectorsize = 0x8000, .size_in_bytes = 0x20000, },
    { .name = "st m25p20", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00122020, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x40000, },
    { .name = "st m25p40", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00132020, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x80000, },
    { .name = "st m25p80", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00142020, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x100000, },
    { .name = "st m25p16", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00152020, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x200000, },
    { .name = "st m25p32", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00162020, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "st m25p64", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00172020, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "st m25p128", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00182020, .pagesize = 0x100, .sectorsize = 0x40000, .size_in_bytes = 0x1000000, },
    { .name = "st m45pe10", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xd8, .device_id = 0x00114020, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x20000, },
    { .name = "st m45pe20", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xd8, .device_id = 0x00124020, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x40000, },
    { .name = "st m45pe40", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xd8, .device_id = 0x00134020, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x80000, },
    { .name = "st m45pe80", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xd8, .device_id = 0x00144020, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x100000, },
    { .name = "sp s25fl004", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00120201, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x80000, },
    { .name = "sp s25fl008", .read_cmd = 0x03, .qread_cmd = 0x08, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00130201, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x100000, },
    { .name = "sp s25fl016", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00140201, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x200000, },
    { .name = "sp s25fl116k", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00154001, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x200000, },
    { .name = "sp s25fl032", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00150201, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "sp s25fl132k", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00164001, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "sp s25fl064", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00160201, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "sp s25fl164k", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00174001, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "sp s25fl128s", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00182001, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x1000000, },
    { .name = "sp s25fl256s", .read_cmd = 0x13, .qread_cmd = 0x00, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x00190201, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "sp s25fl512s", .read_cmd = 0x13, .qread_cmd = 0x00, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x00200201, .pagesize = 0x200, .sectorsize = 0x40000, .size_in_bytes = 0x4000000, },
    { .name = "cyp s25fl064l", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00176001, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "cyp s25fl128l", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x00186001, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x1000000, },
    { .name = "cyp s25fl256l", .read_cmd = 0x13, .qread_cmd = 0x00, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x00196001, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "atmel 25f512", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0x52, .chip_erase_cmd = 0xc7, .device_id = 0x0065001f, .pagesize = 0x80, .sectorsize = 0x8000, .size_in_bytes = 0x10000, },
    { .name = "atmel 25f1024", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0x52, .chip_erase_cmd = 0x62, .device_id = 0x0060001f, .pagesize = 0x100, .sectorsize = 0x8000, .size_in_bytes = 0x20000, },
    { .name = "atmel 25f2048", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0x52, .chip_erase_cmd = 0x62, .device_id = 0x0063001f, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x40000, },
    { .name = "atmel 25f4096", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0x52, .chip_erase_cmd = 0x62, .device_id = 0x0064001f, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x80000, },
    { .name = "atmel 25fs040", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd7, .chip_erase_cmd = 0xc7, .device_id = 0x0004661f, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x80000, },
    { .name = "adesto 25df081a", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x0001451f, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x100000, },
    { .name = "mac 25l512", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001020c2, .pagesize = 0x010, .sectorsize = 0x10000, .size_in_bytes = 0x10000, },
    { .name = "mac 25l1005", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001120c2, .pagesize = 0x010, .sectorsize = 0x10000, .size_in_bytes = 0x20000, },
    { .name = "mac 25l2005", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001220c2, .pagesize = 0x010, .sectorsize = 0x10000, .size_in_bytes = 0x40000, },
    { .name = "mac 25l4005", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001320c2, .pagesize = 0x010, .sectorsize = 0x10000, .size_in_bytes = 0x80000, },
    { .name = "mac 25l8005", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001420c2, .pagesize = 0x010, .sectorsize = 0x10000, .size_in_bytes = 0x100000, },
    { .name = "mac 25l1605", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001520c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x200000, },
    { .name = "mac 25l3205", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001620c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "mac 25l6405", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001720c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "mac 25l12845", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001820c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x1000000, },
    { .name = "mac 25l25645", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x001920c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "mac 25l51245", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x001a20c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x4000000, },
    { .name = "mac 25lm51245", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x003a85c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x4000000, },
    { .name = "mac 25r512f", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001028c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x10000, },
    { .name = "mac 25r1035f", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001128c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x20000, },
    { .name = "mac 25r2035f", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001228c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x40000, },
    { .name = "mac 25r4035f", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001328c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x80000, },
    { .name = "mac 25r8035f", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001428c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x100000, },
    { .name = "mac 25r1635f", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001528c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x200000, },
    { .name = "mac 25r3235f", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001628c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "mac 25r6435f", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001728c2, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "mac 25u1635e", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0x20, .chip_erase_cmd = 0xc7, .device_id = 0x003525c2, .pagesize = 0x100, .sectorsize = 0x1000, .size_in_bytes = 0x100000, },
    { .name = "micron n25q032", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x0016ba20, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "micron n25q064", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x0017ba20, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "micron n25q128", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x0018ba20, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x1000000, },
    { .name = "micron n25q256 3v", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x0019ba20, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "micron n25q256 1.8v", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x0019bb20, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "micron mt25ql512", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x0020ba20, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x4000000, },
    { .name = "micron mt25ql01", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x0021ba20, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x8000000, },
    { .name = "micron mt25ql02", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x0022ba20, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x10000000, },
    { .name = "win w25q80bv", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001440ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x100000, },
    { .name = "win w25q16jv", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001540ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x200000, },
    { .name = "win w25q16jv", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001570ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x200000, },
    { .name = "win w25q32fv/jv", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001640ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "win w25q32fv", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001660ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "win w25q32jv", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001670ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "win w25q64fv/jv", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001740ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "win w25q64fv", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001760ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "win w25q64jv", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001770ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "win w25q128fv/jv", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001840ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x1000000, },
    { .name = "win w25q128fv", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001860ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x1000000, },
    { .name = "win w25q128jv", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001870ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x1000000, },
    { .name = "win w25q256fv/jv", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001940ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "win w25q256fv", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001960ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "win w25q256jv", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001970ef, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "gd gd25q512", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0x20, .chip_erase_cmd = 0xc7, .device_id = 0x001040c8, .pagesize = 0x100, .sectorsize = 0x1000, .size_in_bytes = 0x10000, },
    { .name = "gd gd25q10", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0x20, .chip_erase_cmd = 0xc7, .device_id = 0x001140c8, .pagesize = 0x100, .sectorsize = 0x1000, .size_in_bytes = 0x20000, },
    { .name = "gd gd25q20", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0x20, .chip_erase_cmd = 0xc7, .device_id = 0x001240c8, .pagesize = 0x100, .sectorsize = 0x1000, .size_in_bytes = 0x40000, },
    { .name = "gd gd25q40", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0x20, .chip_erase_cmd = 0xc7, .device_id = 0x001340c8, .pagesize = 0x100, .sectorsize = 0x1000, .size_in_bytes = 0x80000, },
    { .name = "gd gd25q16c", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001540c8, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x200000, },
    { .name = "gd gd25q32c", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001640c8, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "gd gd25q64c", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001740c8, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "gd gd25q128c", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x001840c8, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x1000000, },
    { .name = "gd gd25q256c", .read_cmd = 0x13, .qread_cmd = 0x00, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x001940c8, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "gd gd25q512mc", .read_cmd = 0x13, .qread_cmd = 0x00, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x002040c8, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x4000000, },
    { .name = "issi is25lp032", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x0016609d, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x400000, },
    { .name = "issi is25lp064", .read_cmd = 0x03, .qread_cmd = 0x00, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x0017609d, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x800000, },
    { .name = "issi is25lp128d", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x0018609d, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x1000000, },
    { .name = "issi is25wp128d", .read_cmd = 0x03, .qread_cmd = 0xeb, .pprog_cmd = 0x02, .erase_cmd = 0xd8, .chip_erase_cmd = 0xc7, .device_id = 0x0018709d, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x1000000, },
    { .name = "issi is25lp256d", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x0019609d, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "issi is25wp256d", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x0019709d, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x2000000, },
    { .name = "issi is25lp512m", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x001a609d, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x4000000, },
    { .name = "issi is25wp512m", .read_cmd = 0x13, .qread_cmd = 0xec, .pprog_cmd = 0x12, .erase_cmd = 0xdc, .chip_erase_cmd = 0xc7, .device_id = 0x001a709d, .pagesize = 0x100, .sectorsize = 0x10000, .size_in_bytes = 0x4000000, },


    { .name = "fu mb85rs16n", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x00010104, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x800, },
    { .name = "fu mb85rs32v", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x00010204, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x1000, },
    { .name = "fu mb85rs64v", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x00020304, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x2000, },
    { .name = "fu mb85rs128b", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x00090404, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x4000, },
    { .name = "fu mb85rs256b", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x00090504, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x8000, },
    { .name = "fu mb85rs512t", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x00032604, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x10000, },
    { .name = "fu mb85rs1mt", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x00032704, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x20000, },
    { .name = "fu mb85rs2mta", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x00034804, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x40000, },
    { .name = "cyp fm25v01a", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x000821c2, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x4000, },
    { .name = "cyp fm25v02", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x000022c2, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x8000, },
    { .name = "cyp fm25v02a", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x000822c2, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x8000, },
    { .name = "cyp fm25v05", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x000023c2, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x10000, },
    { .name = "cyp fm25v10", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x000024c2, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x20000, },
    { .name = "cyp fm25v20a", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x000825c2, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x40000, },
    { .name = "cyp fm25v40", .read_cmd = 0x03, .qread_cmd = 0, .pprog_cmd = 0x02, .erase_cmd = 0x00, .chip_erase_cmd = 0x00, .device_id = 0x004026c2, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0x80000, },

    { .name = 0, .read_cmd = 0, .qread_cmd = 0, .pprog_cmd = 0, .erase_cmd = 0, .chip_erase_cmd = 0, .device_id = 0, .pagesize = 0, .sectorsize = 0, .size_in_bytes = 0, }};

W25Q_stt_t W25Q_init(W25Q_t *dev,
                     uint8_t (*drv_readWrite)(uint8_t byteWrite),
                     void (*drv_cs_sel)(),
                     void (*drv_cs_desel)()) {

    dev->readWrite = drv_readWrite;
    dev->cs_sel = drv_cs_sel;
    dev->cs_desel = drv_cs_desel;

    delay(100);

    dev->lock = 1;
    W25Q_get_id(dev);
    switch (dev->id) {
    case W25Q_id_512:
        dev->block_count = 1024;
        break;
    case W25Q_id_256:
        dev->block_count = 512;
        break;
    case W25Q_id_128:
        dev->block_count = 256;
        break;
    case W25Q_id_64:
        dev->block_count = 128;
        break;
    case W25Q_id_32:
        dev->block_count = 64;
        break;
    case W25Q_id_16:
        dev->block_count = 32;
        break;
    case W25Q_id_80:
        dev->block_count = 16;
        break;
    case W25Q_id_40:
        dev->block_count = 8;
        break;
    case W25Q_id_20:
        dev->block_count = 4;
        break;
    case W25Q_id_10:
        dev->block_count = 2;
        break;
    default:
        dev->lock = 0;
        return W25Q_stt_ERROR_PROTOCOL;
    }
    dev->sector_count = dev->block_count * 16;
    dev->page_count = (dev->sector_count * 0x1000) / 0x100;
    dev->capacity_in_kb = (dev->sector_count * 0x1000) / 1024;
    dev->lock = 0;
    return W25Q_stt_OK;
}

W25Q_stt_t W25Q_get_id(W25Q_t *dev) {
    uint8_t temp_buf[2] = {0, 0};
    W25Q_stt_t ret = W25Q_stt_OK;
    uint8_t cmd_temp;

    dev->cs_sel();
    cmd_temp = W25Q_command_MANUFACT_DEVICE_ID;
    dev->readWrite(cmd_temp);
    cmd_temp = 0;
    dev->readWrite(cmd_temp);
    dev->readWrite(cmd_temp);
    dev->readWrite(cmd_temp);
    temp_buf[0] = dev->readWrite(0);
    temp_buf[1] = dev->readWrite(0);
    dev->cs_desel();

    dev->id = (W25Q_id_t)((temp_buf[0] << 8) | temp_buf[1]);
    return ret;
}

void W25Q_get_status_reg(W25Q_t *dev, uint8_t num_reg) {
    dev->cs_sel();
    switch (num_reg) {
    default: {
        dev->readWrite(W25Q_command_READ_STATUS_REG1);
        dev->stt_reg_1.val = dev->readWrite(0);
        break;
    }
    case 2: {
        dev->readWrite(W25Q_command_READ_STATUS_REG2);
        dev->stt_reg_2.val = dev->readWrite(0);
        break;
    }
    case 3: {
        dev->readWrite(W25Q_command_READ_STATUS_REG3);
        dev->stt_reg_3.val = dev->readWrite(0);
        break;
    }
    }
    dev->cs_desel();
}

void W25Q_set_status_reg(W25Q_t *dev, uint8_t num_reg, uint8_t val) {
    uint8_t cmd_temp;
    dev->cs_sel();
    switch (num_reg) {
    default: {
        dev->stt_reg_1.val = val;
        cmd_temp = W25Q_command_WRITE_STATUS_REG1;
        dev->readWrite(cmd_temp);
        dev->readWrite(dev->stt_reg_1.val);
        break;
    }
    case 2: {
        dev->stt_reg_2.val = val;
        cmd_temp = W25Q_command_WRITE_STATUS_REG2;
        dev->readWrite(cmd_temp);
        dev->readWrite(dev->stt_reg_2.val);
        break;
    }
    case 3: {
        dev->stt_reg_3.val = val;
        cmd_temp = W25Q_command_WRITE_STATUS_REG3;
        dev->readWrite(cmd_temp);
        dev->readWrite(dev->stt_reg_3.val);
        break;
    }
    }
    dev->cs_desel();
}

W25Q_stt_t W25Q_wait_busy(W25Q_t *dev, uint32_t timeout_ms) {
    uint32_t lastTick = millis();
    do {
        W25Q_get_status_reg(dev, 1);
        if ((millis() - lastTick) >= timeout_ms) {
            return W25Q_stt_ERROR_TIME_OUT;
        }
    } while (dev->stt_reg_1.bit.BUSY);
    return W25Q_stt_OK;
}

void W25Q_set_en_or_dis_write(W25Q_t *dev, uint8_t en_or_dis) {
    uint8_t cmd_temp = en_or_dis ? W25Q_command_WRITE_ENABLE : W25Q_command_WRITE_DISABLE;
    dev->cs_sel();
    dev->readWrite(cmd_temp);
    dev->cs_desel();
}

W25Q_stt_t W25Q_read_mem(W25Q_t *dev, uint32_t read_addr, uint8_t *buf_to_read, uint32_t size_to_read) {
    W25Q_stt_t ret;
    uint8_t cmd_temp = 0;
    while (dev->lock) {
        delay(1);
    }
    dev->lock = 1;
    ret = W25Q_wait_busy(dev, 5000);
    if (ret != W25Q_stt_OK) {
        goto ret_func;
    }
    W25Q_set_en_or_dis_write(dev, 1);
    dev->cs_sel();
    cmd_temp = W25Q_command_READ_DATA;
    dev->readWrite(cmd_temp);
    cmd_temp = (read_addr >> 16) & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = (read_addr >> 8) & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = read_addr & 0xFF;
    dev->readWrite(cmd_temp);
    while (size_to_read--) {
        *buf_to_read = dev->readWrite(0);
        buf_to_read++;
    }
ret_func:
    dev->cs_desel();
    dev->lock = 0;
    return ret;
}

W25Q_stt_t W25Q_fast_read_mem(W25Q_t *dev, uint32_t read_addr, uint8_t *buf_to_read, uint32_t size_to_read) {
    W25Q_stt_t ret;
    uint8_t cmd_temp = 0;
    while (dev->lock) {
        delay(1);
    }
    dev->lock = 1;
    ret = W25Q_wait_busy(dev, 5000);
    if (ret != W25Q_stt_OK) {
        goto ret_func;
    }
    W25Q_set_en_or_dis_write(dev, 1);
    dev->cs_sel();
    cmd_temp = W25Q_command_FAST_READ_DATA;
    dev->readWrite(cmd_temp);
    cmd_temp = (read_addr >> 16) & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = (read_addr >> 8) & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = read_addr & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = 0;
    dev->readWrite(cmd_temp);
    while (size_to_read--) {
        *buf_to_read = dev->readWrite(0);
        buf_to_read++;
    }
ret_func:
    dev->cs_desel();
    dev->lock = 0;
    return ret;
}

W25Q_stt_t W25Q_write_one_page(W25Q_t *dev, uint32_t write_addr, uint8_t *buf_to_write, uint32_t size_to_write) {
    W25Q_stt_t ret;
    uint8_t cmd_temp = 0;
    if (((write_addr % 0x100) + size_to_write) > 0x100) {
        ret = W25Q_stt_ERROR_OUT_MEMORY;
        goto ret_func;
    }
    while (dev->lock) {
        delay(1);
    }
    dev->lock = 1;
    ret = W25Q_wait_busy(dev, 5000);
    if (ret != W25Q_stt_OK) {
        goto ret_func;
    }
    W25Q_set_en_or_dis_write(dev, 1);
    dev->cs_sel();
    if (dev->id >= W25Q_id_256) {
        cmd_temp = 0x12;
        dev->readWrite(cmd_temp);
        cmd_temp = (write_addr & 0xFF000000) >> 24;
        dev->readWrite(cmd_temp);
    }
    else {
        cmd_temp = W25Q_command_PAGE_PROGRAM;
        dev->readWrite(cmd_temp);
    }
    cmd_temp = (write_addr >> 16) & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = (write_addr >> 8) & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = write_addr & 0xFF;
    dev->readWrite(cmd_temp);
    while (size_to_write--) {
        dev->readWrite(*buf_to_write);
        buf_to_write++;
    }
ret_func:
    dev->cs_desel();
    dev->lock = 0;
    return ret;
}
W25Q_stt_t W25Q_write_mem(W25Q_t *dev, uint32_t readWrite_addr, uint8_t *buf_to_readWrite, uint32_t size_to_readWrite) {
    W25Q_stt_t ret = W25Q_stt_OK;
    uint32_t max_size_to_readWrite = 0;
    do {

        max_size_to_readWrite = 0x100 - (readWrite_addr % 0x100);
        if (max_size_to_readWrite > size_to_readWrite) {
            max_size_to_readWrite = size_to_readWrite;
        }
        ret = W25Q_write_one_page(dev, readWrite_addr, buf_to_readWrite, max_size_to_readWrite);
        if (ret != W25Q_stt_OK) {
            return ret;
        }
        readWrite_addr += max_size_to_readWrite;
        buf_to_readWrite += max_size_to_readWrite;
        size_to_readWrite -= max_size_to_readWrite;
    } while (size_to_readWrite);
    return ret;
}
W25Q_stt_t W25Q_erase_chip(W25Q_t *dev) {
    W25Q_stt_t ret;
    uint8_t cmd_temp = 0;
    while (dev->lock) {
        delay(1);
    }
    dev->lock = 1;
    ret = W25Q_wait_busy(dev, 5000);
    if (ret != W25Q_stt_OK) {
        goto ret_func;
    }
    W25Q_set_en_or_dis_write(dev, 1);
    dev->cs_sel();
    cmd_temp = W25Q_command_CHIP_ERASE;
    dev->readWrite(cmd_temp);
    dev->cs_desel();
ret_func:
    dev->lock = 0;
    return ret;
}
W25Q_stt_t W25Q_erase_sector(W25Q_t *dev, uint32_t index_sector) {
    W25Q_stt_t ret;
    uint8_t cmd_temp = 0;
    while (dev->lock) {
        delay(1);
    }
    ret = W25Q_wait_busy(dev, 5000);
    if (ret != W25Q_stt_OK) {
        goto ret_func;
    }
    W25Q_set_en_or_dis_write(dev, 1);
    dev->lock = 1;
    index_sector = index_sector * 0x1000;
    dev->cs_sel();
    cmd_temp = W25Q_SECTOR_ERASE;
    dev->readWrite(cmd_temp);
    cmd_temp = (index_sector >> 16) & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = (index_sector >> 8) & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = index_sector & 0xFF;
    dev->readWrite(cmd_temp);
    dev->cs_desel();
ret_func:
    dev->lock = 0;
    ret = W25Q_wait_busy(dev, 5000);
    return ret;
}
W25Q_stt_t W25Q_erase_block(W25Q_t *dev, uint32_t index_block) {
    W25Q_stt_t ret;
    uint8_t cmd_temp = 0;
    while (dev->lock) {
        delay(1);
    }
    dev->lock = 1;
    ret = W25Q_wait_busy(dev, 5000);
    if (ret != W25Q_stt_OK) {
        goto ret_func;
    }
    W25Q_set_en_or_dis_write(dev, 1);
    index_block = index_block * 0x10000;
    dev->cs_sel();
    cmd_temp = W25Q_command_BLOCK_ERASE_64;
    dev->readWrite(cmd_temp);
    cmd_temp = (index_block >> 16) & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = (index_block >> 8) & 0xFF;
    dev->readWrite(cmd_temp);
    cmd_temp = index_block & 0xFF;
    dev->readWrite(cmd_temp);
    dev->cs_desel();
ret_func:
    dev->lock = 0;
    ret = W25Q_wait_busy(dev, 5000);
    return ret;
}
