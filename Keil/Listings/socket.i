# 1 "../components/Ethernet/socket.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 386 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../components/Ethernet/socket.c" 2
# 56 "../components/Ethernet/socket.c"
# 1 "../components/Ethernet/socket.h" 1
# 91 "../components/Ethernet/socket.h"
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
# 92 "../components/Ethernet/socket.h" 2
# 165 "../components/Ethernet/socket.h"
int8_t socket(uint8_t sn, uint8_t protocol, uint16_t port, uint8_t flag);
# 177 "../components/Ethernet/socket.h"
int8_t close(uint8_t sn);
# 190 "../components/Ethernet/socket.h"
int8_t listen(uint8_t sn);
# 213 "../components/Ethernet/socket.h"
int8_t connect(uint8_t sn, uint8_t * addr, uint16_t port);
# 230 "../components/Ethernet/socket.h"
int8_t disconnect(uint8_t sn);
# 250 "../components/Ethernet/socket.h"
int32_t send(uint8_t sn, uint8_t * buf, uint16_t len);
# 272 "../components/Ethernet/socket.h"
int32_t recv(uint8_t sn, uint8_t * buf, uint16_t len);
# 300 "../components/Ethernet/socket.h"
int32_t sendto(uint8_t sn, uint8_t * buf, uint16_t len, uint8_t * addr, uint16_t port);
# 330 "../components/Ethernet/socket.h"
int32_t recvfrom(uint8_t sn, uint8_t * buf, uint16_t len, uint8_t * addr, uint16_t *port);
# 348 "../components/Ethernet/socket.h"
typedef enum
{
   SIK_CONNECTED = (1 << 0),
   SIK_DISCONNECTED = (1 << 1),
   SIK_RECEIVED = (1 << 2),
   SIK_TIMEOUT = (1 << 3),
   SIK_SENT = (1 << 4),


   SIK_ALL = 0x1F
}sockint_kind;





typedef enum
{
   CS_SET_IOMODE,
   CS_GET_IOMODE,
   CS_GET_MAXTXBUF,
   CS_GET_MAXRXBUF,
   CS_CLR_INTERRUPT,
   CS_GET_INTERRUPT,

   CS_SET_INTMASK,
   CS_GET_INTMASK

}ctlsock_type;






typedef enum
{
   SO_FLAG,
   SO_TTL,
   SO_TOS,
   SO_MSS,
   SO_DESTIP,
   SO_DESTPORT,

   SO_KEEPALIVESEND,

      SO_KEEPALIVEAUTO,


   SO_SENDBUF,
   SO_RECVBUF,
   SO_STATUS,
   SO_REMAINSIZE,
   SO_PACKINFO
}sockopt_type;
# 421 "../components/Ethernet/socket.h"
int8_t ctlsocket(uint8_t sn, ctlsock_type cstype, void* arg);
# 449 "../components/Ethernet/socket.h"
int8_t setsockopt(uint8_t sn, sockopt_type sotype, void* arg);
# 483 "../components/Ethernet/socket.h"
int8_t getsockopt(uint8_t sn, sockopt_type sotype, void* arg);
# 57 "../components/Ethernet/socket.c" 2





static uint16_t sock_any_port = 0xC000;
static uint16_t sock_io_mode = 0;
static uint16_t sock_is_sending = 0;

static uint16_t sock_remained_size[8] = {0,0,};



uint8_t sock_pack_info[8] = {0,};
# 105 "../components/Ethernet/socket.c"
int8_t socket(uint8_t sn, uint8_t protocol, uint16_t port, uint8_t flag)
{
 do{ if(sn > 8) return (0 - 1); }while(0);;
 switch(protocol)
 {
      case 0x01 :
         {





            uint32_t taddr;
            WIZCHIP_READ_BUF((0x00000000 + (0x000F << 8) + (0x00 << 3)), (uint8_t*)&taddr, 4);
            if(taddr == 0) return (0 - 3);
     break;
         }
      case 0x02 :
      case 0x04 :
   case 0x03 :
         break;




      default :
         return (0 - 5);
 }


 if((flag & 0x04) != 0) return (0 - 6);




 if(flag != 0)
 {
    switch(protocol)
    {
       case 0x01:




          if((flag & ((0x20)|0x01))==0) return (0 - 6);


          break;
       case 0x02:
          if(flag & (0x20))
          {
             if((flag & (0x80))==0) return (0 - 6);
          }

             if(flag & (0x10))
             {
                if((flag & (0x80)) == 0) return (0 - 6);
             }

          break;
       default:
          break;
    }
   }
 close(sn);




    WIZCHIP_WRITE((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3)),(protocol | (flag & 0xF0)));

 if(!port)
 {
    port = sock_any_port++;
    if(sock_any_port == 0xFFF0) sock_any_port = 0xC000;
 }
   { WIZCHIP_WRITE((0x00000000 + (0x0004 << 8) + ((1+4*sn) << 3)), (uint8_t)(port >> 8)); WIZCHIP_WRITE(((0x00000000 + (0x0004 << 8) + ((1+4*sn) << 3)) + (1<<8)), (uint8_t) port); };
   WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x01);
   while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3))));

   sock_io_mode &= ~(1 <<sn);

 sock_io_mode |= ((flag & 0x01) << sn);
   sock_is_sending &= ~(1<<sn);
   sock_remained_size[sn] = 0;


   sock_pack_info[sn] = 0x00;

   while(WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3))) == 0x00);
   return (int8_t)sn;
}

int8_t close(uint8_t sn)
{
 do{ if(sn > 8) return (0 - 1); }while(0);;
# 226 "../components/Ethernet/socket.c"
 WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x10);

 while( WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3))) );

 WIZCHIP_WRITE((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3)), (0xFF & 0x1F));

 sock_io_mode &= ~(1<<sn);

 sock_is_sending &= ~(1<<sn);
 sock_remained_size[sn] = 0;
 sock_pack_info[sn] = 0;
 while(WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3))) != 0x00);
 return 1;
}

int8_t listen(uint8_t sn)
{
 do{ if(sn > 8) return (0 - 1); }while(0);;
   do{ if((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0x0F) != 0x01) return (0 - 5); }while(0);;
 do{ if((WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3))) != 0x13)) return (0 - 3); }while(0);;
 WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x02);
 while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)))){}
   while(WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3))) != 0x14)
   {
         close(sn);
         return (0 - 4);
   }
   return 1;
}


int8_t connect(uint8_t sn, uint8_t * addr, uint16_t port)
{
   do{ if(sn > 8) return (0 - 1); }while(0);;
   do{ if((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0x0F) != 0x01) return (0 - 5); }while(0);;
   do{ if((WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3))) != 0x13)) return (0 - 3); }while(0);;


   {
      uint32_t taddr;
      taddr = ((uint32_t)addr[0] & 0x000000FF);
      taddr = (taddr << 8) + ((uint32_t)addr[1] & 0x000000FF);
      taddr = (taddr << 8) + ((uint32_t)addr[2] & 0x000000FF);
      taddr = (taddr << 8) + ((uint32_t)addr[3] & 0x000000FF);
      if( taddr == 0xFFFFFFFF || taddr == 0) return (0 - 12);
   }


 if(port == 0) return (0 - 11);
 WIZCHIP_WRITE_BUF((0x00000000 + (0x000C << 8) + ((1+4*sn) << 3)), addr, 4);
 { WIZCHIP_WRITE((0x00000000 + (0x0010 << 8) + ((1+4*sn) << 3)), (uint8_t) (port>>8)); WIZCHIP_WRITE(((0x00000000 + (0x0010 << 8) + ((1+4*sn) << 3)) + (1<<8)), (uint8_t) port); };
 WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x04);
   while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3))));
   if(sock_io_mode & (1<<sn)) return 0;
   while(WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3))) != 0x17)
   {
  if ((WIZCHIP_READ((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3))) & 0x1F) & 0x08)
  {
   WIZCHIP_WRITE((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3)), (0x08 & 0x1F));
            return (0 - 13);
  }

  if (WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3))) == 0x00)
  {
   return (0 - 4);
  }
 }

   return 1;
}

int8_t disconnect(uint8_t sn)
{
   do{ if(sn > 8) return (0 - 1); }while(0);;
   do{ if((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0x0F) != 0x01) return (0 - 5); }while(0);;
 WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x08);

 while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3))));
 sock_is_sending &= ~(1<<sn);
   if(sock_io_mode & (1<<sn)) return 0;
 while(WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3))) != 0x00)
 {
    if((WIZCHIP_READ((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3))) & 0x1F) & 0x08)
    {
       close(sn);
       return (0 - 13);
    }
 }
 return 1;
}

int32_t send(uint8_t sn, uint8_t * buf, uint16_t len)
{
   uint8_t tmp=0;
   uint16_t freesize=0;

   do{ if(sn > 8) return (0 - 1); }while(0);;
   do{ if((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0x0F) != 0x01) return (0 - 5); }while(0);;
   do{ if(len == 0) return (0 - 14); }while(0);;
   tmp = WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3)));
   if(tmp != 0x17 && tmp != 0x1C) return (0 - 7);
   if( sock_is_sending & (1<<sn) )
   {
      tmp = (WIZCHIP_READ((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3))) & 0x1F);
      if(tmp & 0x10)
      {
         WIZCHIP_WRITE((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3)), (0x10 & 0x1F));
# 343 "../components/Ethernet/socket.c"
         sock_is_sending &= ~(1<<sn);
      }
      else if(tmp & 0x08)
      {
         close(sn);
         return (0 - 13);
      }
      else return 0;
   }
   freesize = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x001F << 8) + ((1+4*sn) << 3)))) << 10);
   if (len > freesize) len = freesize;
   while(1)
   {
      freesize = getSn_TX_FSR(sn);
      tmp = WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3)));
      if ((tmp != 0x17) && (tmp != 0x1C))
      {
         close(sn);
         return (0 - 7);
      }
      if( (sock_io_mode & (1<<sn)) && (len > freesize) ) return 0;
      if(len <= freesize) break;
   }
   wiz_send_data(sn, buf, len);
# 375 "../components/Ethernet/socket.c"
   WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x20);

   while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3))));
   sock_is_sending |= (1 << sn);


   return (int32_t)len;
}


int32_t recv(uint8_t sn, uint8_t * buf, uint16_t len)
{
   uint8_t tmp = 0;
   uint16_t recvsize = 0;






   do{ if(sn > 8) return (0 - 1); }while(0);;
   do{ if((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0x0F) != 0x01) return (0 - 5); }while(0);;
   do{ if(len == 0) return (0 - 14); }while(0);;

   recvsize = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x001E << 8) + ((1+4*sn) << 3)))) << 10);
   if(recvsize < len) len = recvsize;
# 409 "../components/Ethernet/socket.c"
      while(1)
      {
         recvsize = getSn_RX_RSR(sn);
         tmp = WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3)));
         if (tmp != 0x17)
         {
            if(tmp == 0x1C)
            {
               if(recvsize != 0) break;
               else if(getSn_TX_FSR(sn) == (((uint16_t)WIZCHIP_READ((0x00000000 + (0x001F << 8) + ((1+4*sn) << 3)))) << 10))
               {
                  close(sn);
                  return (0 - 7);
               }
            }
            else
            {
               close(sn);
               return (0 - 7);
            }
         }
         if((sock_io_mode & (1<<sn)) && (recvsize == 0)) return 0;
         if(recvsize != 0) break;
      };
# 479 "../components/Ethernet/socket.c"
   if(recvsize < len) len = recvsize;
   wiz_recv_data(sn, buf, len);
   WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x40);
   while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3))));




   return (int32_t)len;
}

int32_t sendto(uint8_t sn, uint8_t * buf, uint16_t len, uint8_t * addr, uint16_t port)
{
   uint8_t tmp = 0;
   uint16_t freesize = 0;
   uint32_t taddr;

   do{ if(sn > 8) return (0 - 1); }while(0);;
   switch(WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0x0F)
   {
      case 0x02:
      case 0x04:


      case 0x03:
         break;

      default:
         return (0 - 5);
   }
   do{ if(len == 0) return (0 - 14); }while(0);;




      taddr = ((uint32_t)addr[0]) & 0x000000FF;
      taddr = (taddr << 8) + ((uint32_t)addr[1] & 0x000000FF);
      taddr = (taddr << 8) + ((uint32_t)addr[2] & 0x000000FF);
      taddr = (taddr << 8) + ((uint32_t)addr[3] & 0x000000FF);



   if((taddr == 0) && ((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3)))&0x04) != 0x04)) return (0 - 12);
   if((port == 0) && ((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3)))&0x04) != 0x04)) return (0 - 11);
   tmp = WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3)));

   if((tmp != 0x42) && (tmp != 0x22) && (tmp != 0x32)) return (0 - 7);




   WIZCHIP_WRITE_BUF((0x00000000 + (0x000C << 8) + ((1+4*sn) << 3)), addr, 4);
   { WIZCHIP_WRITE((0x00000000 + (0x0010 << 8) + ((1+4*sn) << 3)), (uint8_t) (port>>8)); WIZCHIP_WRITE(((0x00000000 + (0x0010 << 8) + ((1+4*sn) << 3)) + (1<<8)), (uint8_t) port); };
   freesize = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x001F << 8) + ((1+4*sn) << 3)))) << 10);
   if (len > freesize) len = freesize;
   while(1)
   {
      freesize = getSn_TX_FSR(sn);
      if(WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3))) == 0x00) return (0 - 4);
      if( (sock_io_mode & (1<<sn)) && (len > freesize) ) return 0;
      if(len <= freesize) break;
   };
 wiz_send_data(sn, buf, len);
# 558 "../components/Ethernet/socket.c"
 WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x20);

 while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)))){}
   while(1)
   {
      tmp = (WIZCHIP_READ((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3))) & 0x1F);
      if(tmp & 0x10)
      {
         WIZCHIP_WRITE((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3)), (0x10 & 0x1F));
         break;
      }


      else if(tmp & 0x08)
      {
         WIZCHIP_WRITE((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3)), (0x08 & 0x1F));






         return (0 - 13);
      }

   }





   return (int32_t)len;
}



int32_t recvfrom(uint8_t sn, uint8_t * buf, uint16_t len, uint8_t * addr, uint16_t *port)
{





   uint8_t mr;


   uint8_t head[8];
 uint16_t pack_len=0;

   do{ if(sn > 8) return (0 - 1); }while(0);;






   switch((mr=WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3)))) & 0x0F)
   {
      case 0x02:
   case 0x03:
      case 0x04:
         break;




      default:
         return (0 - 5);
   }
   do{ if(len == 0) return (0 - 14); }while(0);;
   if(sock_remained_size[sn] == 0)
   {
      while(1)
      {
         pack_len = getSn_RX_RSR(sn);
         if(WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3))) == 0x00) return (0 - 4);
         if( (sock_io_mode & (1<<sn)) && (pack_len == 0) ) return 0;
         if(pack_len != 0) break;
      };
   }


 switch (mr & 0x07)
 {
    case 0x02 :
       if(sock_remained_size[sn] == 0)
       {
      wiz_recv_data(sn, head, 8);
      WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x40);
      while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)))){}
# 665 "../components/Ethernet/socket.c"
               addr[0] = head[0];
         addr[1] = head[1];
         addr[2] = head[2];
         addr[3] = head[3];
         *port = head[4];
         *port = (*port << 8) + head[5];
         sock_remained_size[sn] = head[6];
         sock_remained_size[sn] = (sock_remained_size[sn] << 8) + head[7];



      sock_pack_info[sn] = 0x80;
       }
   if(len < sock_remained_size[sn]) pack_len = len;
   else pack_len = sock_remained_size[sn];

   len = pack_len;
# 694 "../components/Ethernet/socket.c"
     wiz_recv_data(sn, buf, pack_len);
   break;
    case 0x04 :
       if(sock_remained_size[sn] == 0)
       {
      wiz_recv_data(sn, head, 2);
      WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x40);
      while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)))){}

       sock_remained_size[sn] = head[0];
      sock_remained_size[sn] = (sock_remained_size[sn] <<8) + head[1] -2;






      if(sock_remained_size[sn] > 1514)
      {
         close(sn);
         return (-1000 - 1);
      }
      sock_pack_info[sn] = 0x80;
       }
   if(len < sock_remained_size[sn]) pack_len = len;
   else pack_len = sock_remained_size[sn];
   wiz_recv_data(sn,buf,pack_len);
     break;

  case 0x03:
     if(sock_remained_size[sn] == 0)
     {
      wiz_recv_data(sn, head, 6);
      WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x40);
      while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3))));
      addr[0] = head[0];
      addr[1] = head[1];
      addr[2] = head[2];
      addr[3] = head[3];
      sock_remained_size[sn] = head[4];


      sock_remained_size[sn] = (sock_remained_size[sn] << 8) + head[5];
      sock_pack_info[sn] = 0x80;
         }



   if(len < sock_remained_size[sn]) pack_len = len;
   else pack_len = sock_remained_size[sn];
     wiz_recv_data(sn, buf, pack_len);
   break;

      default:
         wiz_recv_ignore(sn, pack_len);
         sock_remained_size[sn] = pack_len;
         break;
   }
 WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x40);

 while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)))) ;
 sock_remained_size[sn] -= pack_len;


 if(sock_remained_size[sn] != 0)
 {
    sock_pack_info[sn] |= 0x01;



 }
 else sock_pack_info[sn] = 0x00;






   return (int32_t)pack_len;
}


int8_t ctlsocket(uint8_t sn, ctlsock_type cstype, void* arg)
{
   uint8_t tmp = 0;
   do{ if(sn > 8) return (0 - 1); }while(0);;
   switch(cstype)
   {
      case CS_SET_IOMODE:
         tmp = *((uint8_t*)arg);
         if(tmp == 1) sock_io_mode |= (1<<sn);
         else if(tmp == 0) sock_io_mode &= ~(1<<sn);
         else return (0 - 10);
         break;
      case CS_GET_IOMODE:


         *((uint8_t*)arg) = (uint8_t)((sock_io_mode >> sn) & 0x0001);

         break;
      case CS_GET_MAXTXBUF:
         *((uint16_t*)arg) = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x001F << 8) + ((1+4*sn) << 3)))) << 10);
         break;
      case CS_GET_MAXRXBUF:
         *((uint16_t*)arg) = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x001E << 8) + ((1+4*sn) << 3)))) << 10);
         break;
      case CS_CLR_INTERRUPT:
         if( (*(uint8_t*)arg) > SIK_ALL) return (0 - 10);
         WIZCHIP_WRITE((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3)), (*(uint8_t*)arg & 0x1F));
         break;
      case CS_GET_INTERRUPT:
         *((uint8_t*)arg) = (WIZCHIP_READ((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3))) & 0x1F);
         break;

      case CS_SET_INTMASK:
         if( (*(uint8_t*)arg) > SIK_ALL) return (0 - 10);
         WIZCHIP_WRITE((0x00000000 + (0x002C << 8) + ((1+4*sn) << 3)), (*(uint8_t*)arg & 0x1F));
         break;
      case CS_GET_INTMASK:
         *((uint8_t*)arg) = (WIZCHIP_READ((0x00000000 + (0x002C << 8) + ((1+4*sn) << 3))) & 0x1F);
         break;

      default:
         return (0 - 10);
   }
   return 1;
}

int8_t setsockopt(uint8_t sn, sockopt_type sotype, void* arg)
{


   do{ if(sn > 8) return (0 - 1); }while(0);;
   switch(sotype)
   {
      case SO_TTL:
         WIZCHIP_WRITE((0x00000000 + (0x0016 << 8) + ((1+4*sn) << 3)), *(uint8_t*)arg);
         break;
      case SO_TOS:
         WIZCHIP_WRITE((0x00000000 + (0x0015 << 8) + ((1+4*sn) << 3)), *(uint8_t*)arg);
         break;
      case SO_MSS:
         { WIZCHIP_WRITE((0x00000000 + (0x0012 << 8) + ((1+4*sn) << 3)), (uint8_t)(*(uint16_t*)arg>>8)); WIZCHIP_WRITE(((0x00000000 + (0x0012 << 8) + ((1+4*sn) << 3)) + (1<<8)), (uint8_t) *(uint16_t*)arg); };
         break;
      case SO_DESTIP:
         WIZCHIP_WRITE_BUF((0x00000000 + (0x000C << 8) + ((1+4*sn) << 3)), (uint8_t*)arg, 4);
         break;
      case SO_DESTPORT:
         { WIZCHIP_WRITE((0x00000000 + (0x0010 << 8) + ((1+4*sn) << 3)), (uint8_t) (*(uint16_t*)arg>>8)); WIZCHIP_WRITE(((0x00000000 + (0x0010 << 8) + ((1+4*sn) << 3)) + (1<<8)), (uint8_t) *(uint16_t*)arg); };
         break;

      case SO_KEEPALIVESEND:
         do{ if((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0x0F) != 0x01) return (0 - 5); }while(0);;

            if(WIZCHIP_READ((0x00000000 + (0x002F << 8) + ((1+4*sn) << 3))) != 0) return (0 - 2);

            WIZCHIP_WRITE((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3)), 0x22);
            while(WIZCHIP_READ((0x00000000 + (0x0001 << 8) + ((1+4*sn) << 3))) != 0)
            {


               if ((WIZCHIP_READ((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3))) & 0x1F) & 0x08)
           {
            WIZCHIP_WRITE((0x00000000 + (0x0002 << 8) + ((1+4*sn) << 3)), (0x08 & 0x1F));
                  return (0 - 13);
           }
            }
         break;

      case SO_KEEPALIVEAUTO:
         do{ if((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0x0F) != 0x01) return (0 - 5); }while(0);;
         WIZCHIP_WRITE((0x00000000 + (0x002F << 8) + ((1+4*sn) << 3)), *(uint8_t*)arg);
         break;


      default:
         return (0 - 10);
   }
   return 1;
}

int8_t getsockopt(uint8_t sn, sockopt_type sotype, void* arg)
{
   do{ if(sn > 8) return (0 - 1); }while(0);;
   switch(sotype)
   {
      case SO_FLAG:
         *(uint8_t*)arg = WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0xF0;
         break;
      case SO_TTL:
         *(uint8_t*) arg = WIZCHIP_READ((0x00000000 + (0x0016 << 8) + ((1+4*sn) << 3)));
         break;
      case SO_TOS:
         *(uint8_t*) arg = WIZCHIP_READ((0x00000000 + (0x0015 << 8) + ((1+4*sn) << 3)));
         break;
      case SO_MSS:
         *(uint16_t*) arg = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x0012 << 8) + ((1+4*sn) << 3))) << 8) + WIZCHIP_READ(((0x00000000 + (0x0012 << 8) + ((1+4*sn) << 3)) + (1<<8))));
         break;
      case SO_DESTIP:
         WIZCHIP_READ_BUF((0x00000000 + (0x000C << 8) + ((1+4*sn) << 3)), (uint8_t*)arg, 4);
         break;
      case SO_DESTPORT:
         *(uint16_t*) arg = (((uint16_t)WIZCHIP_READ((0x00000000 + (0x0010 << 8) + ((1+4*sn) << 3))) << 8) + WIZCHIP_READ(((0x00000000 + (0x0010 << 8) + ((1+4*sn) << 3)) + (1<<8))));
         break;

      case SO_KEEPALIVEAUTO:
         do{ if((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0x0F) != 0x01) return (0 - 5); }while(0);;
         *(uint16_t*) arg = WIZCHIP_READ((0x00000000 + (0x002F << 8) + ((1+4*sn) << 3)));
         break;

      case SO_SENDBUF:
         *(uint16_t*) arg = getSn_TX_FSR(sn);
         break;
      case SO_RECVBUF:
         *(uint16_t*) arg = getSn_RX_RSR(sn);
         break;
      case SO_STATUS:
         *(uint8_t*) arg = WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*sn) << 3)));
         break;
      case SO_REMAINSIZE:
         if(WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) & 0x01)
            *(uint16_t*)arg = getSn_RX_RSR(sn);
         else
            *(uint16_t*)arg = sock_remained_size[sn];
         break;
      case SO_PACKINFO:


         if((WIZCHIP_READ((0x00000000 + (0x0000 << 8) + ((1+4*sn) << 3))) == 0x01))
             return (0 - 5);

         *(uint8_t*)arg = sock_pack_info[sn];
         break;
      default:
         return (0 - 2);
   }
   return 1;
}
