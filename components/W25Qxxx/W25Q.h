/**
 ******************************************************************************
 * @file           : W25Q.c
 * @brief          : Thư viện lập trình flash W25Q.
 * @author         : Tiêu Tuấn Bảo
 ******************************************************************************
 * @attention
 *
 * Thư viện giao tiếp chip winbond W25Q
 *
 ******************************************************************************
 */
#ifndef __W25Q_H__
#define __W25Q_H__

#include <stdint.h>

#define W25Q_PAGE_SIZE 0x100
#define W25Q_SECTOR_SIZE 0x1000
#define W25Q_BLOCK_SIZE 0x10000

#define FLASH_ID(n, re, qr, pp, es, ces, id, psize, ssize, size) \
    {                                                            \
        .name = n,                                               \
        .read_cmd = re,                                          \
        .qread_cmd = qr,                                         \
        .pprog_cmd = pp,                                         \
        .erase_cmd = es,                                         \
        .chip_erase_cmd = ces,                                   \
        .device_id = id,                                         \
        .pagesize = psize,                                       \
        .sectorsize = ssize,                                     \
        .size_in_bytes = size,                                   \
    }

#define FRAM_ID(n, re, qr, pp, id, size) \
    {                                    \
        .name = n,                       \
        .read_cmd = re,                  \
        .qread_cmd = qr,                 \
        .pprog_cmd = pp,                 \
        .erase_cmd = 0x00,               \
        .chip_erase_cmd = 0x00,          \
        .device_id = id,                 \
        .pagesize = 0,                   \
        .sectorsize = 0,                 \
        .size_in_bytes = size,           \
    }

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

#endif
