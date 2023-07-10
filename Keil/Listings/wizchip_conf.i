# 1 "../components/Ethernet/wizchip_conf.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 386 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../components/Ethernet/wizchip_conf.c" 2
# 52 "../components/Ethernet/wizchip_conf.c"
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 1 3
# 38 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 3
  typedef signed int ptrdiff_t;







    typedef unsigned int size_t;
# 62 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 3
      typedef unsigned int wchar_t;
# 95 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stddef.h" 3
  typedef long double max_align_t;
# 53 "../components/Ethernet/wizchip_conf.c" 2


# 1 "../components/Ethernet/wizchip_conf.h" 1
# 61 "../components/Ethernet/wizchip_conf.h"
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
# 62 "../components/Ethernet/wizchip_conf.h" 2
# 156 "../components/Ethernet/wizchip_conf.h"
   typedef uint8_t iodata_t;
# 1 "../components/Ethernet/W5500/w5500.h" 1
# 56 "../components/Ethernet/W5500/w5500.h"
# 1 "../components/Ethernet\\wizchip_conf.h" 1
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
# 56 "../components/Ethernet/wizchip_conf.c" 2
# 67 "../components/Ethernet/wizchip_conf.c"
void wizchip_cris_enter(void) {}







void wizchip_cris_exit(void) {}







void wizchip_cs_select(void) {}







void wizchip_cs_deselect(void) {}
# 100 "../components/Ethernet/wizchip_conf.c"
iodata_t wizchip_bus_readdata(uint32_t AddrSel) { return * ((volatile iodata_t *)((ptrdiff_t) AddrSel)); }
# 109 "../components/Ethernet/wizchip_conf.c"
void wizchip_bus_writedata(uint32_t AddrSel, iodata_t wb) { *((volatile iodata_t*)((ptrdiff_t)AddrSel)) = wb; }







uint8_t wizchip_spi_readbyte(void) {return 0;}







void wizchip_spi_writebyte(uint8_t wb) {}







void wizchip_spi_readburst(uint8_t* pBuf, uint16_t len) {}







void wizchip_spi_writeburst(uint8_t* pBuf, uint16_t len) {}
# 165 "../components/Ethernet/wizchip_conf.c"
_WIZCHIP WIZCHIP =
{
    (0x0200 + 1),
    "W5500\0" ,
    {
        wizchip_cris_enter,
        wizchip_cris_exit
    },
    {
        wizchip_cs_select,
        wizchip_cs_deselect
    },
    {
        {



            wizchip_bus_readdata,
            wizchip_bus_writedata
        },

    }
};


static uint8_t _DNS_[4];
static dhcp_mode _DHCP_;

void reg_wizchip_cris_cbfunc(void(*cris_en)(void), void(*cris_ex)(void))
{
   if(!cris_en || !cris_ex)
   {
      WIZCHIP.CRIS._enter = wizchip_cris_enter;
      WIZCHIP.CRIS._exit = wizchip_cris_exit;
   }
   else
   {
      WIZCHIP.CRIS._enter = cris_en;
      WIZCHIP.CRIS._exit = cris_ex;
   }
}

void reg_wizchip_cs_cbfunc(void(*cs_sel)(void), void(*cs_desel)(void))
{
   if(!cs_sel || !cs_desel)
   {
      WIZCHIP.CS._select = wizchip_cs_select;
      WIZCHIP.CS._deselect = wizchip_cs_deselect;
   }
   else
   {
      WIZCHIP.CS._select = cs_sel;
      WIZCHIP.CS._deselect = cs_desel;
   }
}



void reg_wizchip_bus_cbfunc(iodata_t(*bus_rb)(uint32_t addr), void (*bus_wb)(uint32_t addr, iodata_t wb))
{
   while(!(WIZCHIP.if_mode & 0x0100));
# 239 "../components/Ethernet/wizchip_conf.c"
   if(!bus_rb || !bus_wb)
   {
      WIZCHIP.IF.BUS._read_data = wizchip_bus_readdata;
      WIZCHIP.IF.BUS._write_data = wizchip_bus_writedata;
   }
   else
   {
      WIZCHIP.IF.BUS._read_data = bus_rb;
      WIZCHIP.IF.BUS._write_data = bus_wb;
   }
}

void reg_wizchip_spi_cbfunc(uint8_t (*spi_rb)(void), void (*spi_wb)(uint8_t wb))
{
   while(!(WIZCHIP.if_mode & 0x0200));

   if(!spi_rb || !spi_wb)
   {
      WIZCHIP.IF.SPI._read_byte = wizchip_spi_readbyte;
      WIZCHIP.IF.SPI._write_byte = wizchip_spi_writebyte;
   }
   else
   {
      WIZCHIP.IF.SPI._read_byte = spi_rb;
      WIZCHIP.IF.SPI._write_byte = spi_wb;
   }
}


void reg_wizchip_spiburst_cbfunc(void (*spi_rb)(uint8_t* pBuf, uint16_t len), void (*spi_wb)(uint8_t* pBuf, uint16_t len))
{
   while(!(WIZCHIP.if_mode & 0x0200));

   if(!spi_rb || !spi_wb)
   {
      WIZCHIP.IF.SPI._read_burst = wizchip_spi_readburst;
      WIZCHIP.IF.SPI._write_burst = wizchip_spi_writeburst;
   }
   else
   {
      WIZCHIP.IF.SPI._read_burst = spi_rb;
      WIZCHIP.IF.SPI._write_burst = spi_wb;
   }
}

int8_t ctlwizchip(ctlwizchip_type cwtype, void* arg)
{

   uint8_t tmp = 0;

   uint8_t* ptmp[2] = {0,0};
   switch(cwtype)
   {
      case CW_RESET_WIZCHIP:
         wizchip_sw_reset();
         break;
      case CW_INIT_WIZCHIP:
         if(arg != 0)
         {
            ptmp[0] = (uint8_t*)arg;
            ptmp[1] = ptmp[0] + 8;
         }
         return wizchip_init(ptmp[0], ptmp[1]);
      case CW_CLR_INTERRUPT:
         wizchip_clrinterrupt(*((intr_kind*)arg));
         break;
      case CW_GET_INTERRUPT:
        *((intr_kind*)arg) = wizchip_getinterrupt();
         break;
      case CW_SET_INTRMASK:
         wizchip_setinterruptmask(*((intr_kind*)arg));
         break;
      case CW_GET_INTRMASK:
         *((intr_kind*)arg) = wizchip_getinterruptmask();
         break;



      case CW_SET_INTRTIME:
         { WIZCHIP_WRITE((0x00000000 + (0x0013 << 8) + (0x00 << 3)), (uint8_t)(*(uint16_t*)arg >> 8)); WIZCHIP_WRITE(((0x00000000 + (0x0013 << 8) + (0x00 << 3)) + (1<<8)), (uint8_t) *(uint16_t*)arg); };
         break;
      case CW_GET_INTRTIME:
         *(uint16_t*)arg = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x0013 << 8) + (0x00 << 3))) << 8) + WIZCHIP_READ(((0x00000000 + (0x0013 << 8) + (0x00 << 3)) + (1<<8))));
         break;

      case CW_GET_ID:
         ((uint8_t*)arg)[0] = WIZCHIP.id[0];
         ((uint8_t*)arg)[1] = WIZCHIP.id[1];
         ((uint8_t*)arg)[2] = WIZCHIP.id[2];
         ((uint8_t*)arg)[3] = WIZCHIP.id[3];
         ((uint8_t*)arg)[4] = WIZCHIP.id[4];
         ((uint8_t*)arg)[5] = WIZCHIP.id[5];
         ((uint8_t*)arg)[6] = 0;
         break;

      case CW_RESET_PHY:
         wizphy_reset();
         break;
      case CW_SET_PHYCONF:
         wizphy_setphyconf((wiz_PhyConf*)arg);
         break;
      case CW_GET_PHYCONF:
         wizphy_getphyconf((wiz_PhyConf*)arg);
         break;
      case CW_GET_PHYSTATUS:
         break;
      case CW_SET_PHYPOWMODE:
         return wizphy_setphypmode(*(uint8_t*)arg);


      case CW_GET_PHYPOWMODE:
         tmp = wizphy_getphypmode();
         if((int8_t)tmp == -1) return -1;
         *(uint8_t*)arg = tmp;
         break;
      case CW_GET_PHYLINK:
         tmp = wizphy_getphylink();
         if((int8_t)tmp == -1) return -1;
         *(uint8_t*)arg = tmp;
         break;

      default:
         return -1;
   }
   return 0;
}


int8_t ctlnetwork(ctlnetwork_type cntype, void* arg)
{

   switch(cntype)
   {
      case CN_SET_NETINFO:
         wizchip_setnetinfo((wiz_NetInfo*)arg);
         break;
      case CN_GET_NETINFO:
         wizchip_getnetinfo((wiz_NetInfo*)arg);
         break;
      case CN_SET_NETMODE:
         return wizchip_setnetmode(*(netmode_type*)arg);
      case CN_GET_NETMODE:
         *(netmode_type*)arg = wizchip_getnetmode();
         break;
      case CN_SET_TIMEOUT:
         wizchip_settimeout((wiz_NetTimeout*)arg);
         break;
      case CN_GET_TIMEOUT:
         wizchip_gettimeout((wiz_NetTimeout*)arg);
         break;
      default:
         return -1;
   }
   return 0;
}

void wizchip_sw_reset(void)
{
   uint8_t gw[4], sn[4], sip[4];
   uint8_t mac[6];






   WIZCHIP_READ_BUF((0x00000000 + (0x0009 << 8) + (0x00 << 3)), mac, 6);
   WIZCHIP_READ_BUF((0x00000000 + (0x0001 << 8) + (0x00 << 3)),gw,4); WIZCHIP_READ_BUF((0x00000000 + (0x0005 << 8) + (0x00 << 3)), sn, 4); WIZCHIP_READ_BUF((0x00000000 + (0x000F << 8) + (0x00 << 3)), sip, 4);
   WIZCHIP_WRITE((0x00000000 + (0x0000 << 8) + (0x00 << 3)),0x80);
   WIZCHIP_READ((0x00000000 + (0x0000 << 8) + (0x00 << 3)));





   WIZCHIP_WRITE_BUF((0x00000000 + (0x0009 << 8) + (0x00 << 3)), mac, 6);
   WIZCHIP_WRITE_BUF((0x00000000 + (0x0001 << 8) + (0x00 << 3)),gw,4);
   WIZCHIP_WRITE_BUF((0x00000000 + (0x0005 << 8) + (0x00 << 3)), sn,4);
   WIZCHIP_WRITE_BUF((0x00000000 + (0x000F << 8) + (0x00 << 3)), sip, 4);
}

int8_t wizchip_init(uint8_t* txsize, uint8_t* rxsize)
{
   int8_t i;



   int8_t tmp = 0;
   wizchip_sw_reset();
   if(txsize)
   {
      tmp = 0;
# 441 "../components/Ethernet/wizchip_conf.c"
  for(i = 0 ; i < 8; i++)
  {
   tmp += txsize[i];




   if(tmp > 16) return -1;

  }

  for(i = 0 ; i < 8; i++)
  {





   WIZCHIP_WRITE((0x00000000 + (0x001F << 8) + ((1+4*i) << 3)), txsize[i]);

  }
   }

   if(rxsize)
   {
      tmp = 0;
# 476 "../components/Ethernet/wizchip_conf.c"
  for(i = 0 ; i < 8; i++)
  {
   tmp += rxsize[i];



   if(tmp > 16) return -1;

  }

  for(i = 0 ; i < 8; i++)
  {





   WIZCHIP_WRITE((0x00000000 + (0x001E << 8) + ((1+4*i) << 3)),rxsize[i]);

  }
   }
   return 0;
}

void wizchip_clrinterrupt(intr_kind intr)
{
   uint8_t ir = (uint8_t)intr;
   uint8_t sir = (uint8_t)((uint16_t)intr >> 8);
# 522 "../components/Ethernet/wizchip_conf.c"
   WIZCHIP_WRITE((0x00000000 + (0x0015 << 8) + (0x00 << 3)), (ir & 0xF0));


   for(ir=0; ir<8; ir++){
       if(sir & (0x01 <<ir) ) WIZCHIP_WRITE((0x00000000 + (0x0002 << 8) + ((1+4*ir) << 3)), (0xff & 0x1F));
   }


}

intr_kind wizchip_getinterrupt(void)
{
   uint8_t ir = 0;
   uint8_t sir = 0;
   uint16_t ret = 0;
# 546 "../components/Ethernet/wizchip_conf.c"
   ir = (WIZCHIP_READ((0x00000000 + (0x0015 << 8) + (0x00 << 3))) & 0xF0);
   sir = WIZCHIP_READ((0x00000000 + (0x0017 << 8) + (0x00 << 3)));
# 558 "../components/Ethernet/wizchip_conf.c"
  ret = sir;
  ret = (ret << 8) + ir;
  return (intr_kind)ret;
}

void wizchip_setinterruptmask(intr_kind intr)
{
   uint8_t imr = (uint8_t)intr;
   uint8_t simr = (uint8_t)((uint16_t)intr >> 8);
# 582 "../components/Ethernet/wizchip_conf.c"
   WIZCHIP_WRITE((0x00000000 + (0x0016 << 8) + (0x00 << 3)), imr);
   WIZCHIP_WRITE((0x00000000 + (0x0018 << 8) + (0x00 << 3)), simr);

}

intr_kind wizchip_getinterruptmask(void)
{
   uint8_t imr = 0;
   uint8_t simr = 0;
   uint16_t ret = 0;
# 601 "../components/Ethernet/wizchip_conf.c"
   imr = WIZCHIP_READ((0x00000000 + (0x0016 << 8) + (0x00 << 3)));
   simr = WIZCHIP_READ((0x00000000 + (0x0018 << 8) + (0x00 << 3)));
# 611 "../components/Ethernet/wizchip_conf.c"
  ret = simr;
  ret = (ret << 8) + imr;
  return (intr_kind)ret;
}

int8_t wizphy_getphylink(void)
{
   int8_t tmp = 0;







   if(WIZCHIP_READ((0x00000000 + (0x002E << 8) + (0x00 << 3))) & (1<<0))
      tmp = 1;




   return tmp;
}



int8_t wizphy_getphypmode(void)
{
   int8_t tmp = 0;






      if((WIZCHIP_READ((0x00000000 + (0x002E << 8) + (0x00 << 3))) & (7<<3)) == (6<<3))
         tmp = 1;
      else
         tmp = 0;



   return tmp;
}
# 740 "../components/Ethernet/wizchip_conf.c"
void wizphy_reset(void)
{
   uint8_t tmp = WIZCHIP_READ((0x00000000 + (0x002E << 8) + (0x00 << 3)));
   tmp &= ~(1<<7);
   WIZCHIP_WRITE((0x00000000 + (0x002E << 8) + (0x00 << 3)), tmp);
   tmp = WIZCHIP_READ((0x00000000 + (0x002E << 8) + (0x00 << 3)));
   tmp |= ~~(1<<7);
   WIZCHIP_WRITE((0x00000000 + (0x002E << 8) + (0x00 << 3)), tmp);
}

void wizphy_setphyconf(wiz_PhyConf* phyconf)
{
   uint8_t tmp = 0;
   if(phyconf->by == 1)
      tmp |= (1<<6);
   else
      tmp &= ~(1<<6);
   if(phyconf->mode == 1)
      tmp |= (7<<3);
   else
   {
      if(phyconf->duplex == 1)
      {
         if(phyconf->speed == 1)
            tmp |= (3<<3);
         else
            tmp |= (1<<3);
      }
      else
      {
         if(phyconf->speed == 1)
            tmp |= (2<<3);
         else
            tmp |= (0<<3);
      }
   }
   WIZCHIP_WRITE((0x00000000 + (0x002E << 8) + (0x00 << 3)), tmp);
   wizphy_reset();
}

void wizphy_getphyconf(wiz_PhyConf* phyconf)
{
   uint8_t tmp = 0;
   tmp = WIZCHIP_READ((0x00000000 + (0x002E << 8) + (0x00 << 3)));
   phyconf->by = (tmp & (1<<6)) ? 1 : 0;
   switch(tmp & (7<<3))
   {
      case (7<<3):
      case (4<<3):
         phyconf->mode = 1;
         break;
      default:
         phyconf->mode = 0;
         break;
   }
   switch(tmp & (7<<3))
   {
      case (4<<3):
      case (3<<3):
      case (2<<3):
         phyconf->speed = 1;
         break;
      default:
         phyconf->speed = 0;
         break;
   }
   switch(tmp & (7<<3))
   {
      case (4<<3):
      case (3<<3):
      case (1<<3):
         phyconf->duplex = 1;
         break;
      default:
         phyconf->duplex = 0;
         break;
   }
}

void wizphy_getphystat(wiz_PhyConf* phyconf)
{
   uint8_t tmp = WIZCHIP_READ((0x00000000 + (0x002E << 8) + (0x00 << 3)));
   phyconf->duplex = (tmp & (1<<2)) ? 1 : 0;
   phyconf->speed = (tmp & (1<<1)) ? 1 : 0;
}

int8_t wizphy_setphypmode(uint8_t pmode)
{
   uint8_t tmp = 0;
   tmp = WIZCHIP_READ((0x00000000 + (0x002E << 8) + (0x00 << 3)));
   if((tmp & (1<<6))== 0) return -1;
   tmp &= ~(7<<3);
   if( pmode == 1)
      tmp |= (6<<3);
   else
      tmp |= (7<<3);
   WIZCHIP_WRITE((0x00000000 + (0x002E << 8) + (0x00 << 3)), tmp);
   wizphy_reset();
   tmp = WIZCHIP_READ((0x00000000 + (0x002E << 8) + (0x00 << 3)));
   if( pmode == 1)
   {
      if(tmp & (6<<3)) return 0;
   }
   else
   {
      if(tmp & (7<<3)) return 0;
   }
   return -1;
}



void wizchip_setnetinfo(wiz_NetInfo* pnetinfo)
{
   WIZCHIP_WRITE_BUF((0x00000000 + (0x0009 << 8) + (0x00 << 3)), pnetinfo->mac, 6);
   WIZCHIP_WRITE_BUF((0x00000000 + (0x0001 << 8) + (0x00 << 3)),pnetinfo->gw,4);
   WIZCHIP_WRITE_BUF((0x00000000 + (0x0005 << 8) + (0x00 << 3)), pnetinfo->sn,4);
   WIZCHIP_WRITE_BUF((0x00000000 + (0x000F << 8) + (0x00 << 3)), pnetinfo->ip, 4);
   _DNS_[0] = pnetinfo->dns[0];
   _DNS_[1] = pnetinfo->dns[1];
   _DNS_[2] = pnetinfo->dns[2];
   _DNS_[3] = pnetinfo->dns[3];
   _DHCP_ = pnetinfo->dhcp;
}

void wizchip_getnetinfo(wiz_NetInfo* pnetinfo)
{
   WIZCHIP_READ_BUF((0x00000000 + (0x0009 << 8) + (0x00 << 3)), pnetinfo->mac, 6);
   WIZCHIP_READ_BUF((0x00000000 + (0x0001 << 8) + (0x00 << 3)),pnetinfo->gw,4);
   WIZCHIP_READ_BUF((0x00000000 + (0x0005 << 8) + (0x00 << 3)), pnetinfo->sn, 4);
   WIZCHIP_READ_BUF((0x00000000 + (0x000F << 8) + (0x00 << 3)), pnetinfo->ip, 4);
   pnetinfo->dns[0]= _DNS_[0];
   pnetinfo->dns[1]= _DNS_[1];
   pnetinfo->dns[2]= _DNS_[2];
   pnetinfo->dns[3]= _DNS_[3];
   pnetinfo->dhcp = _DHCP_;
}

int8_t wizchip_setnetmode(netmode_type netmode)
{
   uint8_t tmp = 0;



   if(netmode & ~(NM_WAKEONLAN | NM_PPPOE | NM_PINGBLOCK | NM_FORCEARP)) return -1;

   tmp = WIZCHIP_READ((0x00000000 + (0x0000 << 8) + (0x00 << 3)));
   tmp |= (uint8_t)netmode;
   WIZCHIP_WRITE((0x00000000 + (0x0000 << 8) + (0x00 << 3)),tmp);
   return 0;
}

netmode_type wizchip_getnetmode(void)
{
   return (netmode_type) WIZCHIP_READ((0x00000000 + (0x0000 << 8) + (0x00 << 3)));
}

void wizchip_settimeout(wiz_NetTimeout* nettime)
{
   WIZCHIP_WRITE((0x00000000 + (0x001B << 8) + (0x00 << 3)), nettime->retry_cnt);
   { WIZCHIP_WRITE((0x00000000 + (0x0019 << 8) + (0x00 << 3)), (uint8_t)(nettime->time_100us >> 8)); WIZCHIP_WRITE(((0x00000000 + (0x0019 << 8) + (0x00 << 3)) + (1<<8)), (uint8_t) nettime->time_100us); };
}

void wizchip_gettimeout(wiz_NetTimeout* nettime)
{
   nettime->retry_cnt = WIZCHIP_READ((0x00000000 + (0x001B << 8) + (0x00 << 3)));
   nettime->time_100us = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x0019 << 8) + (0x00 << 3))) << 8) + WIZCHIP_READ(((0x00000000 + (0x0019 << 8) + (0x00 << 3)) + (1<<8))));
}
