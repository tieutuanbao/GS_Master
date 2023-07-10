# 1 "../components/Ethernet/W5500/w5500.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 386 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../components/Ethernet/W5500/w5500.c" 2
# 55 "../components/Ethernet/W5500/w5500.c"
# 1 "../components/Ethernet/W5500/w5500.h" 1
# 55 "../components/Ethernet/W5500/w5500.h"
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
# 56 "../components/Ethernet/W5500/w5500.h" 2
# 1 "../components/Ethernet\\wizchip_conf.h" 1
# 156 "../components/Ethernet\\wizchip_conf.h"
   typedef uint8_t iodata_t;
# 1 "../components/Ethernet/W5500/w5500.h" 1
# 158 "../components/Ethernet\\wizchip_conf.h" 2
# 233 "../components/Ethernet\\wizchip_conf.h"
typedef struct __WIZCHIP
{
   uint16_t if_mode;
   uint8_t id[8];



   struct _CRIS
   {
      void (*_enter) (void);
      void (*_exit) (void);
   }CRIS;



   struct _CS
   {
      void (*_select) (void);
      void (*_deselect)(void);
   }CS;



   union _IF
   {
# 267 "../components/Ethernet\\wizchip_conf.h"
      struct
      {
         iodata_t (*_read_data) (uint32_t AddrSel);
         void (*_write_data) (uint32_t AddrSel, iodata_t wb);
      }BUS;




      struct
      {
         uint8_t (*_read_byte) (void);
         void (*_write_byte) (uint8_t wb);
         void (*_read_burst) (uint8_t* pBuf, uint16_t len);
         void (*_write_burst) (uint8_t* pBuf, uint16_t len);
      }SPI;


   }IF;
}_WIZCHIP;

extern _WIZCHIP WIZCHIP;





typedef enum
{
   CW_RESET_WIZCHIP,
   CW_INIT_WIZCHIP,
   CW_GET_INTERRUPT,
   CW_CLR_INTERRUPT,
   CW_SET_INTRMASK,
   CW_GET_INTRMASK,
   CW_SET_INTRTIME,
   CW_GET_INTRTIME,
   CW_GET_ID,



   CW_RESET_PHY,
   CW_SET_PHYCONF,
   CW_GET_PHYCONF,
   CW_GET_PHYSTATUS,
   CW_SET_PHYPOWMODE,



   CW_GET_PHYPOWMODE,
   CW_GET_PHYLINK

}ctlwizchip_type;





typedef enum
{
   CN_SET_NETINFO,
   CN_GET_NETINFO,
   CN_SET_NETMODE,
   CN_GET_NETMODE,
   CN_SET_TIMEOUT,
   CN_GET_TIMEOUT,
}ctlnetwork_type;







typedef enum
{

   IK_WOL = (1 << 4),




   IK_PPPOE_TERMINATED = (1 << 5),


   IK_DEST_UNREACH = (1 << 6),


   IK_IP_CONFLICT = (1 << 7),

   IK_SOCK_0 = (1 << 8),
   IK_SOCK_1 = (1 << 9),
   IK_SOCK_2 = (1 << 10),
   IK_SOCK_3 = (1 << 11),

   IK_SOCK_4 = (1 << 12),
   IK_SOCK_5 = (1 << 13),
   IK_SOCK_6 = (1 << 14),
   IK_SOCK_7 = (1 << 15),



   IK_SOCK_ALL = (0xFF << 8)



}intr_kind;
# 396 "../components/Ethernet\\wizchip_conf.h"
typedef struct wiz_PhyConf_t
{
      uint8_t by;
      uint8_t mode;
      uint8_t speed;
      uint8_t duplex;


   }wiz_PhyConf;






typedef enum
{
   NETINFO_STATIC = 1,
   NETINFO_DHCP
}dhcp_mode;





typedef struct wiz_NetInfo_t
{
   uint8_t mac[6];
   uint8_t ip[4];
   uint8_t sn[4];
   uint8_t gw[4];
   uint8_t dns[4];
   dhcp_mode dhcp;
}wiz_NetInfo;





typedef enum
{

   NM_FORCEARP = (1<<1),

   NM_WAKEONLAN = (1<<5),
   NM_PINGBLOCK = (1<<4),
   NM_PPPOE = (1<<3),
}netmode_type;





typedef struct wiz_NetTimeout_t
{
   uint8_t retry_cnt;
   uint16_t time_100us;
}wiz_NetTimeout;
# 463 "../components/Ethernet\\wizchip_conf.h"
void reg_wizchip_cris_cbfunc(void(*cris_en)(void), void(*cris_ex)(void));
# 473 "../components/Ethernet\\wizchip_conf.h"
void reg_wizchip_cs_cbfunc(void(*cs_sel)(void), void(*cs_desel)(void));
# 485 "../components/Ethernet\\wizchip_conf.h"
void reg_wizchip_bus_cbfunc(iodata_t (*bus_rb)(uint32_t addr), void (*bus_wb)(uint32_t addr, iodata_t wb));
# 495 "../components/Ethernet\\wizchip_conf.h"
void reg_wizchip_spi_cbfunc(uint8_t (*spi_rb)(void), void (*spi_wb)(uint8_t wb));
# 505 "../components/Ethernet\\wizchip_conf.h"
void reg_wizchip_spiburst_cbfunc(void (*spi_rb)(uint8_t* pBuf, uint16_t len), void (*spi_wb)(uint8_t* pBuf, uint16_t len));
# 517 "../components/Ethernet\\wizchip_conf.h"
int8_t ctlwizchip(ctlwizchip_type cwtype, void* arg);
# 528 "../components/Ethernet\\wizchip_conf.h"
int8_t ctlnetwork(ctlnetwork_type cntype, void* arg);
# 540 "../components/Ethernet\\wizchip_conf.h"
void wizchip_sw_reset(void);
# 550 "../components/Ethernet\\wizchip_conf.h"
int8_t wizchip_init(uint8_t* txsize, uint8_t* rxsize);






void wizchip_clrinterrupt(intr_kind intr);






intr_kind wizchip_getinterrupt(void);






void wizchip_setinterruptmask(intr_kind intr);






intr_kind wizchip_getinterruptmask(void);



   int8_t wizphy_getphylink(void);
   int8_t wizphy_getphypmode(void);



   void wizphy_reset(void);





   void wizphy_setphyconf(wiz_PhyConf* phyconf);





   void wizphy_getphyconf(wiz_PhyConf* phyconf);





   void wizphy_getphystat(wiz_PhyConf* phyconf);





   int8_t wizphy_setphypmode(uint8_t pmode);







void wizchip_setnetinfo(wiz_NetInfo* pnetinfo);






void wizchip_getnetinfo(wiz_NetInfo* pnetinfo);






int8_t wizchip_setnetmode(netmode_type netmode);






netmode_type wizchip_getnetmode(void);







void wizchip_settimeout(wiz_NetTimeout* nettime);







void wizchip_gettimeout(wiz_NetTimeout* nettime);
# 57 "../components/Ethernet/W5500/w5500.h" 2
# 1213 "../components/Ethernet/W5500/w5500.h"
uint8_t WIZCHIP_READ (uint32_t AddrSel);
# 1222 "../components/Ethernet/W5500/w5500.h"
void WIZCHIP_WRITE(uint32_t AddrSel, uint8_t wb );
# 1231 "../components/Ethernet/W5500/w5500.h"
void WIZCHIP_READ_BUF (uint32_t AddrSel, uint8_t* pBuf, uint16_t len);
# 1240 "../components/Ethernet/W5500/w5500.h"
void WIZCHIP_WRITE_BUF(uint32_t AddrSel, uint8_t* pBuf, uint16_t len);
# 1940 "../components/Ethernet/W5500/w5500.h"
uint16_t getSn_TX_FSR(uint8_t sn);
# 1990 "../components/Ethernet/W5500/w5500.h"
uint16_t getSn_RX_RSR(uint8_t sn);
# 2128 "../components/Ethernet/W5500/w5500.h"
void wiz_send_data(uint8_t sn, uint8_t *wizdata, uint16_t len);
# 2144 "../components/Ethernet/W5500/w5500.h"
void wiz_recv_data(uint8_t sn, uint8_t *wizdata, uint16_t len);
# 2153 "../components/Ethernet/W5500/w5500.h"
void wiz_recv_ignore(uint8_t sn, uint16_t len);
# 56 "../components/Ethernet/W5500/w5500.c" 2
# 65 "../components/Ethernet/W5500/w5500.c"
uint8_t WIZCHIP_READ(uint32_t AddrSel)
{
   uint8_t ret;
   uint8_t spi_data[3];

   WIZCHIP.CRIS._enter();
   WIZCHIP.CS._select();

   AddrSel |= ((0x00 << 2) | 0x00);

   if(!WIZCHIP.IF.SPI._read_burst || !WIZCHIP.IF.SPI._write_burst)
   {
    WIZCHIP.IF.SPI._write_byte((AddrSel & 0x00FF0000) >> 16);
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x0000FF00) >> 8);
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x000000FF) >> 0);
   }
   else
   {
  spi_data[0] = (AddrSel & 0x00FF0000) >> 16;
  spi_data[1] = (AddrSel & 0x0000FF00) >> 8;
  spi_data[2] = (AddrSel & 0x000000FF) >> 0;
  WIZCHIP.IF.SPI._write_burst(spi_data, 3);
   }
   ret = WIZCHIP.IF.SPI._read_byte();

   WIZCHIP.CS._deselect();
   WIZCHIP.CRIS._exit();
   return ret;
}

void WIZCHIP_WRITE(uint32_t AddrSel, uint8_t wb )
{
   uint8_t spi_data[4];

   WIZCHIP.CRIS._enter();
   WIZCHIP.CS._select();

   AddrSel |= ((0x01 << 2) | 0x00);


   if(!WIZCHIP.IF.SPI._write_burst)
   {
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x00FF0000) >> 16);
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x0000FF00) >> 8);
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x000000FF) >> 0);
  WIZCHIP.IF.SPI._write_byte(wb);
   }
   else
   {
  spi_data[0] = (AddrSel & 0x00FF0000) >> 16;
  spi_data[1] = (AddrSel & 0x0000FF00) >> 8;
  spi_data[2] = (AddrSel & 0x000000FF) >> 0;
  spi_data[3] = wb;
  WIZCHIP.IF.SPI._write_burst(spi_data, 4);
   }

   WIZCHIP.CS._deselect();
   WIZCHIP.CRIS._exit();
}

void WIZCHIP_READ_BUF (uint32_t AddrSel, uint8_t* pBuf, uint16_t len)
{
   uint8_t spi_data[3];
   uint16_t i;

   WIZCHIP.CRIS._enter();
   WIZCHIP.CS._select();

   AddrSel |= ((0x00 << 2) | 0x00);

   if(!WIZCHIP.IF.SPI._read_burst || !WIZCHIP.IF.SPI._write_burst)
   {
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x00FF0000) >> 16);
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x0000FF00) >> 8);
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x000000FF) >> 0);
  for(i = 0; i < len; i++)
     pBuf[i] = WIZCHIP.IF.SPI._read_byte();
   }
   else
   {
  spi_data[0] = (AddrSel & 0x00FF0000) >> 16;
  spi_data[1] = (AddrSel & 0x0000FF00) >> 8;
  spi_data[2] = (AddrSel & 0x000000FF) >> 0;
  WIZCHIP.IF.SPI._write_burst(spi_data, 3);
  WIZCHIP.IF.SPI._read_burst(pBuf, len);
   }

   WIZCHIP.CS._deselect();
   WIZCHIP.CRIS._exit();
}

void WIZCHIP_WRITE_BUF(uint32_t AddrSel, uint8_t* pBuf, uint16_t len)
{
   uint8_t spi_data[3];
   uint16_t i;

   WIZCHIP.CRIS._enter();
   WIZCHIP.CS._select();

   AddrSel |= ((0x01 << 2) | 0x00);

   if(!WIZCHIP.IF.SPI._write_burst)
   {
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x00FF0000) >> 16);
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x0000FF00) >> 8);
  WIZCHIP.IF.SPI._write_byte((AddrSel & 0x000000FF) >> 0);
  for(i = 0; i < len; i++)
   WIZCHIP.IF.SPI._write_byte(pBuf[i]);
   }
   else
   {
  spi_data[0] = (AddrSel & 0x00FF0000) >> 16;
  spi_data[1] = (AddrSel & 0x0000FF00) >> 8;
  spi_data[2] = (AddrSel & 0x000000FF) >> 0;
  WIZCHIP.IF.SPI._write_burst(spi_data, 3);
  WIZCHIP.IF.SPI._write_burst(pBuf, len);
   }

   WIZCHIP.CS._deselect();
   WIZCHIP.CRIS._exit();
}


uint16_t getSn_TX_FSR(uint8_t sn)
{
   uint16_t val=0,val1=0;

   do
   {
      val1 = WIZCHIP_READ((0x00000000 + (0x0020 << 8) + ((1+4*sn) << 3)));
      val1 = (val1 << 8) + WIZCHIP_READ(((0x00000000 + (0x0020 << 8) + ((1+4*sn) << 3)) + (1<<8)));
      if (val1 != 0)
      {
        val = WIZCHIP_READ((0x00000000 + (0x0020 << 8) + ((1+4*sn) << 3)));
        val = (val << 8) + WIZCHIP_READ(((0x00000000 + (0x0020 << 8) + ((1+4*sn) << 3)) + (1<<8)));
      }
   }while (val != val1);
   return val;
}


uint16_t getSn_RX_RSR(uint8_t sn)
{
   uint16_t val=0,val1=0;

   do
   {
      val1 = WIZCHIP_READ((0x00000000 + (0x0026 << 8) + ((1+4*sn) << 3)));
      val1 = (val1 << 8) + WIZCHIP_READ(((0x00000000 + (0x0026 << 8) + ((1+4*sn) << 3)) + (1<<8)));
      if (val1 != 0)
      {
        val = WIZCHIP_READ((0x00000000 + (0x0026 << 8) + ((1+4*sn) << 3)));
        val = (val << 8) + WIZCHIP_READ(((0x00000000 + (0x0026 << 8) + ((1+4*sn) << 3)) + (1<<8)));
      }
   }while (val != val1);
   return val;
}

void wiz_send_data(uint8_t sn, uint8_t *wizdata, uint16_t len)
{
   uint16_t ptr = 0;
   uint32_t addrsel = 0;

   if(len == 0) return;
   ptr = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x0024 << 8) + ((1+4*sn) << 3))) << 8) + WIZCHIP_READ(((0x00000000 + (0x0024 << 8) + ((1+4*sn) << 3)) + (1<<8))));


   addrsel = ((uint32_t)ptr << 8) + ((2+4*sn) << 3);

   WIZCHIP_WRITE_BUF(addrsel,wizdata, len);

   ptr += len;
   { WIZCHIP_WRITE((0x00000000 + (0x0024 << 8) + ((1+4*sn) << 3)), (uint8_t)(ptr>>8)); WIZCHIP_WRITE(((0x00000000 + (0x0024 << 8) + ((1+4*sn) << 3)) + (1<<8)), (uint8_t) ptr); };
}

void wiz_recv_data(uint8_t sn, uint8_t *wizdata, uint16_t len)
{
   uint16_t ptr = 0;
   uint32_t addrsel = 0;

   if(len == 0) return;
   ptr = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x0028 << 8) + ((1+4*sn) << 3))) << 8) + WIZCHIP_READ(((0x00000000 + (0x0028 << 8) + ((1+4*sn) << 3)) + (1<<8))));


   addrsel = ((uint32_t)ptr << 8) + ((3+4*sn) << 3);

   WIZCHIP_READ_BUF(addrsel, wizdata, len);
   ptr += len;

   { WIZCHIP_WRITE((0x00000000 + (0x0028 << 8) + ((1+4*sn) << 3)), (uint8_t)(ptr>>8)); WIZCHIP_WRITE(((0x00000000 + (0x0028 << 8) + ((1+4*sn) << 3)) + (1<<8)), (uint8_t) ptr); };
}


void wiz_recv_ignore(uint8_t sn, uint16_t len)
{
   uint16_t ptr = 0;

   ptr = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x0028 << 8) + ((1+4*sn) << 3))) << 8) + WIZCHIP_READ(((0x00000000 + (0x0028 << 8) + ((1+4*sn) << 3)) + (1<<8))));
   ptr += len;
   { WIZCHIP_WRITE((0x00000000 + (0x0028 << 8) + ((1+4*sn) << 3)), (uint8_t)(ptr>>8)); WIZCHIP_WRITE(((0x00000000 + (0x0028 << 8) + ((1+4*sn) << 3)) + (1<<8)), (uint8_t) ptr); };
}
