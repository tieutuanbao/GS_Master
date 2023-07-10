/**
 ******************************************************************************
 * @file           : W25Q.c
 * @brief          : Thư viện lập trình flash W25Q.
 *    @author                    :    Tiêu Tuấn Bảo
 ******************************************************************************
 * @attention
 *
 * Thư viện lập trình W25Q
 *
 ******************************************************************************
 */

#include "W25Q.h"

#include <stdio.h>

#include "delay.h"
#include "millis.h"

/* name, read_cmd, qread_cmd, pprog_cmd, erase_cmd, chip_erase_cmd, device_id, pagesize, sectorsize, size_in_bytes */
const flash_device_t flash_devices[] = {
    FLASH_ID("st m25p05", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00102020, 0x80, 0x8000, 0x10000),
    FLASH_ID("st m25p10", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00112020, 0x80, 0x8000, 0x20000),
    FLASH_ID("st m25p20", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00122020, 0x100, 0x10000, 0x40000),
    FLASH_ID("st m25p40", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00132020, 0x100, 0x10000, 0x80000),
    FLASH_ID("st m25p80", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00142020, 0x100, 0x10000, 0x100000),
    FLASH_ID("st m25p16", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00152020, 0x100, 0x10000, 0x200000),
    FLASH_ID("st m25p32", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00162020, 0x100, 0x10000, 0x400000),
    FLASH_ID("st m25p64", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00172020, 0x100, 0x10000, 0x800000),
    FLASH_ID("st m25p128", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00182020, 0x100, 0x40000, 0x1000000),
    FLASH_ID("st m45pe10", 0x03, 0x00, 0x02, 0xd8, 0xd8, 0x00114020, 0x100, 0x10000, 0x20000),
    FLASH_ID("st m45pe20", 0x03, 0x00, 0x02, 0xd8, 0xd8, 0x00124020, 0x100, 0x10000, 0x40000),
    FLASH_ID("st m45pe40", 0x03, 0x00, 0x02, 0xd8, 0xd8, 0x00134020, 0x100, 0x10000, 0x80000),
    FLASH_ID("st m45pe80", 0x03, 0x00, 0x02, 0xd8, 0xd8, 0x00144020, 0x100, 0x10000, 0x100000),
    FLASH_ID("sp s25fl004", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00120201, 0x100, 0x10000, 0x80000),
    FLASH_ID("sp s25fl008", 0x03, 0x08, 0x02, 0xd8, 0xc7, 0x00130201, 0x100, 0x10000, 0x100000),
    FLASH_ID("sp s25fl016", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00140201, 0x100, 0x10000, 0x200000),
    FLASH_ID("sp s25fl116k", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00154001, 0x100, 0x10000, 0x200000),
    FLASH_ID("sp s25fl032", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00150201, 0x100, 0x10000, 0x400000),
    FLASH_ID("sp s25fl132k", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00164001, 0x100, 0x10000, 0x400000),
    FLASH_ID("sp s25fl064", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00160201, 0x100, 0x10000, 0x800000),
    FLASH_ID("sp s25fl164k", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00174001, 0x100, 0x10000, 0x800000),
    FLASH_ID("sp s25fl128s", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00182001, 0x100, 0x10000, 0x1000000),
    FLASH_ID("sp s25fl256s", 0x13, 0x00, 0x12, 0xdc, 0xc7, 0x00190201, 0x100, 0x10000, 0x2000000),
    FLASH_ID("sp s25fl512s", 0x13, 0x00, 0x12, 0xdc, 0xc7, 0x00200201, 0x200, 0x40000, 0x4000000),
    FLASH_ID("cyp s25fl064l", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00176001, 0x100, 0x10000, 0x800000),
    FLASH_ID("cyp s25fl128l", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x00186001, 0x100, 0x10000, 0x1000000),
    FLASH_ID("cyp s25fl256l", 0x13, 0x00, 0x12, 0xdc, 0xc7, 0x00196001, 0x100, 0x10000, 0x2000000),
    FLASH_ID("atmel 25f512", 0x03, 0x00, 0x02, 0x52, 0xc7, 0x0065001f, 0x80, 0x8000, 0x10000),
    FLASH_ID("atmel 25f1024", 0x03, 0x00, 0x02, 0x52, 0x62, 0x0060001f, 0x100, 0x8000, 0x20000),
    FLASH_ID("atmel 25f2048", 0x03, 0x00, 0x02, 0x52, 0x62, 0x0063001f, 0x100, 0x10000, 0x40000),
    FLASH_ID("atmel 25f4096", 0x03, 0x00, 0x02, 0x52, 0x62, 0x0064001f, 0x100, 0x10000, 0x80000),
    FLASH_ID("atmel 25fs040", 0x03, 0x00, 0x02, 0xd7, 0xc7, 0x0004661f, 0x100, 0x10000, 0x80000),
    FLASH_ID("adesto 25df081a", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x0001451f, 0x100, 0x10000, 0x100000),
    FLASH_ID("mac 25l512", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001020c2, 0x010, 0x10000, 0x10000),
    FLASH_ID("mac 25l1005", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001120c2, 0x010, 0x10000, 0x20000),
    FLASH_ID("mac 25l2005", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001220c2, 0x010, 0x10000, 0x40000),
    FLASH_ID("mac 25l4005", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001320c2, 0x010, 0x10000, 0x80000),
    FLASH_ID("mac 25l8005", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001420c2, 0x010, 0x10000, 0x100000),
    FLASH_ID("mac 25l1605", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001520c2, 0x100, 0x10000, 0x200000),
    FLASH_ID("mac 25l3205", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001620c2, 0x100, 0x10000, 0x400000),
    FLASH_ID("mac 25l6405", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001720c2, 0x100, 0x10000, 0x800000),
    FLASH_ID("mac 25l12845", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x001820c2, 0x100, 0x10000, 0x1000000),
    FLASH_ID("mac 25l25645", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x001920c2, 0x100, 0x10000, 0x2000000),
    FLASH_ID("mac 25l51245", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x001a20c2, 0x100, 0x10000, 0x4000000),
    FLASH_ID("mac 25lm51245", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x003a85c2, 0x100, 0x10000, 0x4000000),
    FLASH_ID("mac 25r512f", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001028c2, 0x100, 0x10000, 0x10000),
    FLASH_ID("mac 25r1035f", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001128c2, 0x100, 0x10000, 0x20000),
    FLASH_ID("mac 25r2035f", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001228c2, 0x100, 0x10000, 0x40000),
    FLASH_ID("mac 25r4035f", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001328c2, 0x100, 0x10000, 0x80000),
    FLASH_ID("mac 25r8035f", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001428c2, 0x100, 0x10000, 0x100000),
    FLASH_ID("mac 25r1635f", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001528c2, 0x100, 0x10000, 0x200000),
    FLASH_ID("mac 25r3235f", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001628c2, 0x100, 0x10000, 0x400000),
    FLASH_ID("mac 25r6435f", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001728c2, 0x100, 0x10000, 0x800000),
    FLASH_ID("mac 25u1635e", 0x03, 0xeb, 0x02, 0x20, 0xc7, 0x003525c2, 0x100, 0x1000, 0x100000),
    FLASH_ID("micron n25q032", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x0016ba20, 0x100, 0x10000, 0x400000),
    FLASH_ID("micron n25q064", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x0017ba20, 0x100, 0x10000, 0x800000),
    FLASH_ID("micron n25q128", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x0018ba20, 0x100, 0x10000, 0x1000000),
    FLASH_ID("micron n25q256 3v", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x0019ba20, 0x100, 0x10000, 0x2000000),
    FLASH_ID("micron n25q256 1.8v", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x0019bb20, 0x100, 0x10000, 0x2000000),
    FLASH_ID("micron mt25ql512", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x0020ba20, 0x100, 0x10000, 0x4000000),
    FLASH_ID("micron mt25ql01", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x0021ba20, 0x100, 0x10000, 0x8000000),
    FLASH_ID("micron mt25ql02", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x0022ba20, 0x100, 0x10000, 0x10000000),
    FLASH_ID("win w25q80bv", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001440ef, 0x100, 0x10000, 0x100000),
    FLASH_ID("win w25q16jv", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001540ef, 0x100, 0x10000, 0x200000),
    FLASH_ID("win w25q16jv", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001570ef, 0x100, 0x10000, 0x200000), /* QPI / DTR */
    FLASH_ID("win w25q32fv/jv", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x001640ef, 0x100, 0x10000, 0x400000),
    FLASH_ID("win w25q32fv", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x001660ef, 0x100, 0x10000, 0x400000), /* QPI mode */
    FLASH_ID("win w25q32jv", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001670ef, 0x100, 0x10000, 0x400000),
    FLASH_ID("win w25q64fv/jv", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x001740ef, 0x100, 0x10000, 0x800000),
    FLASH_ID("win w25q64fv", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x001760ef, 0x100, 0x10000, 0x800000), /* QPI mode */
    FLASH_ID("win w25q64jv", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001770ef, 0x100, 0x10000, 0x800000),
    FLASH_ID("win w25q128fv/jv", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x001840ef, 0x100, 0x10000, 0x1000000),
    FLASH_ID("win w25q128fv", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x001860ef, 0x100, 0x10000, 0x1000000), /* QPI mode */
    FLASH_ID("win w25q128jv", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001870ef, 0x100, 0x10000, 0x1000000),
    FLASH_ID("win w25q256fv/jv", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x001940ef, 0x100, 0x10000, 0x2000000),
    FLASH_ID("win w25q256fv", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x001960ef, 0x100, 0x10000, 0x2000000), /* QPI mode */
    FLASH_ID("win w25q256jv", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001970ef, 0x100, 0x10000, 0x2000000),
    FLASH_ID("gd gd25q512", 0x03, 0x00, 0x02, 0x20, 0xc7, 0x001040c8, 0x100, 0x1000, 0x10000),
    FLASH_ID("gd gd25q10", 0x03, 0x00, 0x02, 0x20, 0xc7, 0x001140c8, 0x100, 0x1000, 0x20000),
    FLASH_ID("gd gd25q20", 0x03, 0x00, 0x02, 0x20, 0xc7, 0x001240c8, 0x100, 0x1000, 0x40000),
    FLASH_ID("gd gd25q40", 0x03, 0x00, 0x02, 0x20, 0xc7, 0x001340c8, 0x100, 0x1000, 0x80000),
    FLASH_ID("gd gd25q16c", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001540c8, 0x100, 0x10000, 0x200000),
    FLASH_ID("gd gd25q32c", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001640c8, 0x100, 0x10000, 0x400000),
    FLASH_ID("gd gd25q64c", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x001740c8, 0x100, 0x10000, 0x800000),
    FLASH_ID("gd gd25q128c", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x001840c8, 0x100, 0x10000, 0x1000000),
    FLASH_ID("gd gd25q256c", 0x13, 0x00, 0x12, 0xdc, 0xc7, 0x001940c8, 0x100, 0x10000, 0x2000000),
    FLASH_ID("gd gd25q512mc", 0x13, 0x00, 0x12, 0xdc, 0xc7, 0x002040c8, 0x100, 0x10000, 0x4000000),
    FLASH_ID("issi is25lp032", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x0016609d, 0x100, 0x10000, 0x400000),
    FLASH_ID("issi is25lp064", 0x03, 0x00, 0x02, 0xd8, 0xc7, 0x0017609d, 0x100, 0x10000, 0x800000),
    FLASH_ID("issi is25lp128d", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x0018609d, 0x100, 0x10000, 0x1000000),
    FLASH_ID("issi is25wp128d", 0x03, 0xeb, 0x02, 0xd8, 0xc7, 0x0018709d, 0x100, 0x10000, 0x1000000),
    FLASH_ID("issi is25lp256d", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x0019609d, 0x100, 0x10000, 0x2000000),
    FLASH_ID("issi is25wp256d", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x0019709d, 0x100, 0x10000, 0x2000000),
    FLASH_ID("issi is25lp512m", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x001a609d, 0x100, 0x10000, 0x4000000),
    FLASH_ID("issi is25wp512m", 0x13, 0xec, 0x12, 0xdc, 0xc7, 0x001a709d, 0x100, 0x10000, 0x4000000),

    /* FRAM, no erase commands, no readWrite page or sectors */
    FRAM_ID("fu mb85rs16n", 0x03, 0, 0x02, 0x00010104, 0x800),
    FRAM_ID("fu mb85rs32v", 0x03, 0, 0x02, 0x00010204, 0x1000), /* exists ? */
    FRAM_ID("fu mb85rs64v", 0x03, 0, 0x02, 0x00020304, 0x2000),
    FRAM_ID("fu mb85rs128b", 0x03, 0, 0x02, 0x00090404, 0x4000),
    FRAM_ID("fu mb85rs256b", 0x03, 0, 0x02, 0x00090504, 0x8000),
    FRAM_ID("fu mb85rs512t", 0x03, 0, 0x02, 0x00032604, 0x10000),
    FRAM_ID("fu mb85rs1mt", 0x03, 0, 0x02, 0x00032704, 0x20000),
    FRAM_ID("fu mb85rs2mta", 0x03, 0, 0x02, 0x00034804, 0x40000),
    FRAM_ID("cyp fm25v01a", 0x03, 0, 0x02, 0x000821c2, 0x4000),
    FRAM_ID("cyp fm25v02", 0x03, 0, 0x02, 0x000022c2, 0x8000),
    FRAM_ID("cyp fm25v02a", 0x03, 0, 0x02, 0x000822c2, 0x8000),
    FRAM_ID("cyp fm25v05", 0x03, 0, 0x02, 0x000023c2, 0x10000),
    FRAM_ID("cyp fm25v10", 0x03, 0, 0x02, 0x000024c2, 0x20000),
    FRAM_ID("cyp fm25v20a", 0x03, 0, 0x02, 0x000825c2, 0x40000),
    FRAM_ID("cyp fm25v40", 0x03, 0, 0x02, 0x004026c2, 0x80000),

    FLASH_ID(NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0)};

W25Q_stt_t W25Q_init(W25Q_t *dev,
                     uint8_t (*drv_readWrite)(uint8_t byteWrite),
                     void (*drv_cs_sel)(),
                     void (*drv_cs_desel)()) {
    /* Đăng ký driver */
    dev->readWrite = drv_readWrite;
    dev->cs_sel = drv_cs_sel;
    dev->cs_desel = drv_cs_desel;

    delay(100);
    /* Kiểm tra ID */
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
    dev->page_count = (dev->sector_count * W25Q_SECTOR_SIZE) / W25Q_PAGE_SIZE;
    dev->capacity_in_kb = (dev->sector_count * W25Q_SECTOR_SIZE) / 1024;
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
    if (((write_addr % W25Q_PAGE_SIZE) + size_to_write) > W25Q_PAGE_SIZE) {
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
        /* Ghi dữ liệu lên mỗi Page */
        max_size_to_readWrite = W25Q_PAGE_SIZE - (readWrite_addr % W25Q_PAGE_SIZE);
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
    index_sector = index_sector * W25Q_SECTOR_SIZE;
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
    index_block = index_block * W25Q_BLOCK_SIZE;
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
