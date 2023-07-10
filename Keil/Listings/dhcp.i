# 1 "../components/Internet/DHCP/dhcp.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 386 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../components/Internet/DHCP/dhcp.c" 2
# 53 "../components/Internet/DHCP/dhcp.c"
# 1 "../components/Ethernet\\socket.h" 1
# 91 "../components/Ethernet\\socket.h"
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
# 92 "../components/Ethernet\\socket.h" 2
# 165 "../components/Ethernet\\socket.h"
int8_t socket(uint8_t sn, uint8_t protocol, uint16_t port, uint8_t flag);
# 177 "../components/Ethernet\\socket.h"
int8_t close(uint8_t sn);
# 190 "../components/Ethernet\\socket.h"
int8_t listen(uint8_t sn);
# 213 "../components/Ethernet\\socket.h"
int8_t connect(uint8_t sn, uint8_t * addr, uint16_t port);
# 230 "../components/Ethernet\\socket.h"
int8_t disconnect(uint8_t sn);
# 250 "../components/Ethernet\\socket.h"
int32_t send(uint8_t sn, uint8_t * buf, uint16_t len);
# 272 "../components/Ethernet\\socket.h"
int32_t recv(uint8_t sn, uint8_t * buf, uint16_t len);
# 300 "../components/Ethernet\\socket.h"
int32_t sendto(uint8_t sn, uint8_t * buf, uint16_t len, uint8_t * addr, uint16_t port);
# 330 "../components/Ethernet\\socket.h"
int32_t recvfrom(uint8_t sn, uint8_t * buf, uint16_t len, uint8_t * addr, uint16_t *port);
# 348 "../components/Ethernet\\socket.h"
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
# 421 "../components/Ethernet\\socket.h"
int8_t ctlsocket(uint8_t sn, ctlsock_type cstype, void* arg);
# 449 "../components/Ethernet\\socket.h"
int8_t setsockopt(uint8_t sn, sockopt_type sotype, void* arg);
# 483 "../components/Ethernet\\socket.h"
int8_t getsockopt(uint8_t sn, sockopt_type sotype, void* arg);
# 54 "../components/Internet/DHCP/dhcp.c" 2
# 1 "../components/Internet/DHCP/dhcp.h" 1
# 78 "../components/Internet/DHCP/dhcp.h"
enum
{
   DHCP_FAILED = 0,
   DHCP_RUNNING,
   DHCP_IP_ASSIGN,
   DHCP_IP_CHANGED,
   DHCP_IP_LEASED,
   DHCP_STOPPED
};






void DHCP_init(uint8_t s, uint8_t * buf);





void DHCP_time_handler(void);







void reg_dhcp_cbfunc(void(*ip_assign)(void), void(*ip_update)(void), void(*ip_conflict)(void));
# 121 "../components/Internet/DHCP/dhcp.h"
uint8_t DHCP_run(void);





void DHCP_stop(void);






void getIPfromDHCP(uint8_t* ip);




void getGWfromDHCP(uint8_t* ip);




void getSNfromDHCP(uint8_t* ip);




void getDNSfromDHCP(uint8_t* ip);





uint32_t getDHCPLeasetime(void);
# 55 "../components/Internet/DHCP/dhcp.c" 2
# 103 "../components/Internet/DHCP/dhcp.c"
enum
{
   padOption = 0,
   subnetMask = 1,
   timerOffset = 2,
   routersOnSubnet = 3,
   timeServer = 4,
   nameServer = 5,
   dns = 6,
   logServer = 7,
   cookieServer = 8,
   lprServer = 9,
   impressServer = 10,
   resourceLocationServer = 11,
   hostName = 12,
   bootFileSize = 13,
   meritDumpFile = 14,
   domainName = 15,
   swapServer = 16,
   rootPath = 17,
   extentionsPath = 18,
   IPforwarding = 19,
   nonLocalSourceRouting = 20,
   policyFilter = 21,
   maxDgramReasmSize = 22,
   defaultIPTTL = 23,
   pathMTUagingTimeout = 24,
   pathMTUplateauTable = 25,
   ifMTU = 26,
   allSubnetsLocal = 27,
   broadcastAddr = 28,
   performMaskDiscovery = 29,
   maskSupplier = 30,
   performRouterDiscovery = 31,
   routerSolicitationAddr = 32,
   staticRoute = 33,
   trailerEncapsulation = 34,
   arpCacheTimeout = 35,
   ethernetEncapsulation = 36,
   tcpDefaultTTL = 37,
   tcpKeepaliveInterval = 38,
   tcpKeepaliveGarbage = 39,
   nisDomainName = 40,
   nisServers = 41,
   ntpServers = 42,
   vendorSpecificInfo = 43,
   netBIOSnameServer = 44,
   netBIOSdgramDistServer = 45,
   netBIOSnodeType = 46,
   netBIOSscope = 47,
   xFontServer = 48,
   xDisplayManager = 49,
   dhcpRequestedIPaddr = 50,
   dhcpIPaddrLeaseTime = 51,
   dhcpOptionOverload = 52,
   dhcpMessageType = 53,
   dhcpServerIdentifier = 54,
   dhcpParamRequest = 55,
   dhcpMsg = 56,
   dhcpMaxMsgSize = 57,
   dhcpT1value = 58,
   dhcpT2value = 59,
   dhcpClassIdentifier = 60,
   dhcpClientIdentifier = 61,
   endOption = 255
};




typedef struct {
 uint8_t op;
 uint8_t htype;
 uint8_t hlen;
 uint8_t hops;
 uint32_t xid;
 uint16_t secs;
 uint16_t flags;
 uint8_t ciaddr[4];
 uint8_t yiaddr[4];
 uint8_t siaddr[4];
 uint8_t giaddr[4];
 uint8_t chaddr[16];
 uint8_t sname[64];
 uint8_t file[128];
 uint8_t OPT[312];
} RIP_MSG;



uint8_t DHCP_SOCKET;

uint8_t DHCP_SIP[4];
uint8_t DHCP_REAL_SIP[4];


uint8_t OLD_allocated_ip[4] = {0, };
uint8_t DHCP_allocated_ip[4] = {0, };
uint8_t DHCP_allocated_gw[4] = {0, };
uint8_t DHCP_allocated_sn[4] = {0, };
uint8_t DHCP_allocated_dns[4] = {0, };


int8_t dhcp_state = 0;
int8_t dhcp_retry_count = 0;

uint32_t dhcp_lease_time = 0xffffffff;
volatile uint32_t dhcp_tick_1s = 0;
uint32_t dhcp_tick_next = 10 ;

uint32_t DHCP_XID;

RIP_MSG* pDHCPMSG;

uint8_t HOST_NAME[] = "WIZnet\0";

uint8_t DHCP_CHADDR[6];


void default_ip_assign(void);
void default_ip_update(void);
void default_ip_conflict(void);


void (*dhcp_ip_assign)(void) = default_ip_assign;
void (*dhcp_ip_update)(void) = default_ip_update;
void (*dhcp_ip_conflict)(void) = default_ip_conflict;

void reg_dhcp_cbfunc(void(*ip_assign)(void), void(*ip_update)(void), void(*ip_conflict)(void));

char NibbleToHex(uint8_t nibble);


void send_DHCP_DISCOVER(void);


void send_DHCP_REQUEST(void);


void send_DHCP_DECLINE(void);


int8_t check_DHCP_leasedIP(void);


uint8_t check_DHCP_timeout(void);


void reset_DHCP_timeout(void);


int8_t parseDHCPCMSG(void);


void default_ip_assign(void)
{
   WIZCHIP_WRITE_BUF((0x00000000 + (0x000F << 8) + (0x00 << 3)), DHCP_allocated_ip, 4);
   WIZCHIP_WRITE_BUF((0x00000000 + (0x0005 << 8) + (0x00 << 3)), DHCP_allocated_sn,4);
   WIZCHIP_WRITE_BUF((0x00000000 + (0x0001 << 8) + (0x00 << 3)),DHCP_allocated_gw,4);
}


void default_ip_update(void)
{

   WIZCHIP_WRITE((0x00000000 + (0x0000 << 8) + (0x00 << 3)),0x80);
   WIZCHIP_READ((0x00000000 + (0x0000 << 8) + (0x00 << 3)));
   default_ip_assign();
   WIZCHIP_WRITE_BUF((0x00000000 + (0x0009 << 8) + (0x00 << 3)), DHCP_CHADDR, 6);
}


void default_ip_conflict(void)
{

 WIZCHIP_WRITE((0x00000000 + (0x0000 << 8) + (0x00 << 3)),0x80);
 WIZCHIP_READ((0x00000000 + (0x0000 << 8) + (0x00 << 3)));
 WIZCHIP_WRITE_BUF((0x00000000 + (0x0009 << 8) + (0x00 << 3)), DHCP_CHADDR, 6);
}


void reg_dhcp_cbfunc(void(*ip_assign)(void), void(*ip_update)(void), void(*ip_conflict)(void))
{
   dhcp_ip_assign = default_ip_assign;
   dhcp_ip_update = default_ip_update;
   dhcp_ip_conflict = default_ip_conflict;
   if(ip_assign) dhcp_ip_assign = ip_assign;
   if(ip_update) dhcp_ip_update = ip_update;
   if(ip_conflict) dhcp_ip_conflict = ip_conflict;
}


void makeDHCPMSG(void)
{
   uint8_t bk_mac[6];
   uint8_t* ptmp;
   uint8_t i;
   WIZCHIP_READ_BUF((0x00000000 + (0x0009 << 8) + (0x00 << 3)), bk_mac, 6);
 pDHCPMSG->op = 1;
 pDHCPMSG->htype = 1;
 pDHCPMSG->hlen = 6;
 pDHCPMSG->hops = 0;
 ptmp = (uint8_t*)(&pDHCPMSG->xid);
 *(ptmp+0) = (uint8_t)((DHCP_XID & 0xFF000000) >> 24);
 *(ptmp+1) = (uint8_t)((DHCP_XID & 0x00FF0000) >> 16);
   *(ptmp+2) = (uint8_t)((DHCP_XID & 0x0000FF00) >> 8);
 *(ptmp+3) = (uint8_t)((DHCP_XID & 0x000000FF) >> 0);
 pDHCPMSG->secs = 0;
 ptmp = (uint8_t*)(&pDHCPMSG->flags);
 *(ptmp+0) = (uint8_t)((0x8000 & 0xFF00) >> 8);
 *(ptmp+1) = (uint8_t)((0x8000 & 0x00FF) >> 0);

 pDHCPMSG->ciaddr[0] = 0;
 pDHCPMSG->ciaddr[1] = 0;
 pDHCPMSG->ciaddr[2] = 0;
 pDHCPMSG->ciaddr[3] = 0;

 pDHCPMSG->yiaddr[0] = 0;
 pDHCPMSG->yiaddr[1] = 0;
 pDHCPMSG->yiaddr[2] = 0;
 pDHCPMSG->yiaddr[3] = 0;

 pDHCPMSG->siaddr[0] = 0;
 pDHCPMSG->siaddr[1] = 0;
 pDHCPMSG->siaddr[2] = 0;
 pDHCPMSG->siaddr[3] = 0;

 pDHCPMSG->giaddr[0] = 0;
 pDHCPMSG->giaddr[1] = 0;
 pDHCPMSG->giaddr[2] = 0;
 pDHCPMSG->giaddr[3] = 0;

 pDHCPMSG->chaddr[0] = DHCP_CHADDR[0];
 pDHCPMSG->chaddr[1] = DHCP_CHADDR[1];
 pDHCPMSG->chaddr[2] = DHCP_CHADDR[2];
 pDHCPMSG->chaddr[3] = DHCP_CHADDR[3];
 pDHCPMSG->chaddr[4] = DHCP_CHADDR[4];
 pDHCPMSG->chaddr[5] = DHCP_CHADDR[5];

 for (i = 6; i < 16; i++) pDHCPMSG->chaddr[i] = 0;
 for (i = 0; i < 64; i++) pDHCPMSG->sname[i] = 0;
 for (i = 0; i < 128; i++) pDHCPMSG->file[i] = 0;


 pDHCPMSG->OPT[0] = (uint8_t)((0x63825363 & 0xFF000000) >> 24);
 pDHCPMSG->OPT[1] = (uint8_t)((0x63825363 & 0x00FF0000) >> 16);
 pDHCPMSG->OPT[2] = (uint8_t)((0x63825363 & 0x0000FF00) >> 8);
 pDHCPMSG->OPT[3] = (uint8_t) (0x63825363 & 0x000000FF) >> 0;
}


void send_DHCP_DISCOVER(void)
{
 uint16_t i;
 uint8_t ip[4];
 uint16_t k = 0;

   makeDHCPMSG();
   DHCP_SIP[0]=0;
   DHCP_SIP[1]=0;
   DHCP_SIP[2]=0;
   DHCP_SIP[3]=0;
   DHCP_REAL_SIP[0]=0;
   DHCP_REAL_SIP[1]=0;
   DHCP_REAL_SIP[2]=0;
   DHCP_REAL_SIP[3]=0;

   k = 4;


 pDHCPMSG->OPT[k++] = dhcpMessageType;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = 1;


 pDHCPMSG->OPT[k++] = dhcpClientIdentifier;
 pDHCPMSG->OPT[k++] = 0x07;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[0];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[1];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[2];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[3];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[4];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[5];


 pDHCPMSG->OPT[k++] = hostName;
 pDHCPMSG->OPT[k++] = 0;
 for(i = 0 ; HOST_NAME[i] != 0; i++)
    pDHCPMSG->OPT[k++] = HOST_NAME[i];
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[3] >> 4);
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[3]);
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[4] >> 4);
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[4]);
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[5] >> 4);
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[5]);
 pDHCPMSG->OPT[k - (i+6+1)] = i+6;

 pDHCPMSG->OPT[k++] = dhcpParamRequest;
 pDHCPMSG->OPT[k++] = 0x06;
 pDHCPMSG->OPT[k++] = subnetMask;
 pDHCPMSG->OPT[k++] = routersOnSubnet;
 pDHCPMSG->OPT[k++] = dns;
 pDHCPMSG->OPT[k++] = domainName;
 pDHCPMSG->OPT[k++] = dhcpT1value;
 pDHCPMSG->OPT[k++] = dhcpT2value;
 pDHCPMSG->OPT[k++] = endOption;

 for (i = k; i < 312; i++) pDHCPMSG->OPT[i] = 0;


 ip[0] = 255;
 ip[1] = 255;
 ip[2] = 255;
 ip[3] = 255;





 sendto(DHCP_SOCKET, (uint8_t *)pDHCPMSG, (236+312), ip, 67);
}


void send_DHCP_REQUEST(void)
{
 int i;
 uint8_t ip[4];
 uint16_t k = 0;

   makeDHCPMSG();

   if(dhcp_state == 3 || dhcp_state == 4)
   {
    *((uint8_t*)(&pDHCPMSG->flags)) = ((0x0000 & 0xFF00)>> 8);
    *((uint8_t*)(&pDHCPMSG->flags)+1) = (0x0000 & 0x00FF);
    pDHCPMSG->ciaddr[0] = DHCP_allocated_ip[0];
    pDHCPMSG->ciaddr[1] = DHCP_allocated_ip[1];
    pDHCPMSG->ciaddr[2] = DHCP_allocated_ip[2];
    pDHCPMSG->ciaddr[3] = DHCP_allocated_ip[3];
    ip[0] = DHCP_SIP[0];
    ip[1] = DHCP_SIP[1];
    ip[2] = DHCP_SIP[2];
    ip[3] = DHCP_SIP[3];
   }
   else
   {
    ip[0] = 255;
    ip[1] = 255;
    ip[2] = 255;
    ip[3] = 255;
   }

   k = 4;


 pDHCPMSG->OPT[k++] = dhcpMessageType;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = 3;

 pDHCPMSG->OPT[k++] = dhcpClientIdentifier;
 pDHCPMSG->OPT[k++] = 0x07;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[0];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[1];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[2];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[3];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[4];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[5];

   if(ip[3] == 255)
   {
  pDHCPMSG->OPT[k++] = dhcpRequestedIPaddr;
  pDHCPMSG->OPT[k++] = 0x04;
  pDHCPMSG->OPT[k++] = DHCP_allocated_ip[0];
  pDHCPMSG->OPT[k++] = DHCP_allocated_ip[1];
  pDHCPMSG->OPT[k++] = DHCP_allocated_ip[2];
  pDHCPMSG->OPT[k++] = DHCP_allocated_ip[3];

  pDHCPMSG->OPT[k++] = dhcpServerIdentifier;
  pDHCPMSG->OPT[k++] = 0x04;
  pDHCPMSG->OPT[k++] = DHCP_SIP[0];
  pDHCPMSG->OPT[k++] = DHCP_SIP[1];
  pDHCPMSG->OPT[k++] = DHCP_SIP[2];
  pDHCPMSG->OPT[k++] = DHCP_SIP[3];
 }


 pDHCPMSG->OPT[k++] = hostName;
 pDHCPMSG->OPT[k++] = 0;
 for(i = 0 ; HOST_NAME[i] != 0; i++)
    pDHCPMSG->OPT[k++] = HOST_NAME[i];
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[3] >> 4);
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[3]);
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[4] >> 4);
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[4]);
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[5] >> 4);
 pDHCPMSG->OPT[k++] = NibbleToHex(DHCP_CHADDR[5]);
 pDHCPMSG->OPT[k - (i+6+1)] = i+6;

 pDHCPMSG->OPT[k++] = dhcpParamRequest;
 pDHCPMSG->OPT[k++] = 0x08;
 pDHCPMSG->OPT[k++] = subnetMask;
 pDHCPMSG->OPT[k++] = routersOnSubnet;
 pDHCPMSG->OPT[k++] = dns;
 pDHCPMSG->OPT[k++] = domainName;
 pDHCPMSG->OPT[k++] = dhcpT1value;
 pDHCPMSG->OPT[k++] = dhcpT2value;
 pDHCPMSG->OPT[k++] = performRouterDiscovery;
 pDHCPMSG->OPT[k++] = staticRoute;
 pDHCPMSG->OPT[k++] = endOption;

 for (i = k; i < 312; i++) pDHCPMSG->OPT[i] = 0;





 sendto(DHCP_SOCKET, (uint8_t *)pDHCPMSG, (236+312), ip, 67);

}


void send_DHCP_DECLINE(void)
{
 int i;
 uint8_t ip[4];
 uint16_t k = 0;

 makeDHCPMSG();

   k = 4;

 *((uint8_t*)(&pDHCPMSG->flags)) = ((0x0000 & 0xFF00)>> 8);
 *((uint8_t*)(&pDHCPMSG->flags)+1) = (0x0000 & 0x00FF);


 pDHCPMSG->OPT[k++] = dhcpMessageType;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = 4;

 pDHCPMSG->OPT[k++] = dhcpClientIdentifier;
 pDHCPMSG->OPT[k++] = 0x07;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[0];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[1];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[2];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[3];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[4];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[5];

 pDHCPMSG->OPT[k++] = dhcpRequestedIPaddr;
 pDHCPMSG->OPT[k++] = 0x04;
 pDHCPMSG->OPT[k++] = DHCP_allocated_ip[0];
 pDHCPMSG->OPT[k++] = DHCP_allocated_ip[1];
 pDHCPMSG->OPT[k++] = DHCP_allocated_ip[2];
 pDHCPMSG->OPT[k++] = DHCP_allocated_ip[3];

 pDHCPMSG->OPT[k++] = dhcpServerIdentifier;
 pDHCPMSG->OPT[k++] = 0x04;
 pDHCPMSG->OPT[k++] = DHCP_SIP[0];
 pDHCPMSG->OPT[k++] = DHCP_SIP[1];
 pDHCPMSG->OPT[k++] = DHCP_SIP[2];
 pDHCPMSG->OPT[k++] = DHCP_SIP[3];

 pDHCPMSG->OPT[k++] = endOption;

 for (i = k; i < 312; i++) pDHCPMSG->OPT[i] = 0;


 ip[0] = 0xFF;
 ip[1] = 0xFF;
 ip[2] = 0xFF;
 ip[3] = 0xFF;





 sendto(DHCP_SOCKET, (uint8_t *)pDHCPMSG, (236+312), ip, 67);
}


int8_t parseDHCPMSG(void)
{
 uint8_t svr_addr[6];
 uint16_t svr_port;
 uint16_t len;

 uint8_t * p;
 uint8_t * e;
 uint8_t type = 0;
 uint8_t opt_len;

   if((len = getSn_RX_RSR(DHCP_SOCKET)) > 0)
   {
    len = recvfrom(DHCP_SOCKET, (uint8_t *)pDHCPMSG, len, svr_addr, &svr_port);



   }
   else return 0;
 if (svr_port == 67) {

  if ( (pDHCPMSG->chaddr[0] != DHCP_CHADDR[0]) || (pDHCPMSG->chaddr[1] != DHCP_CHADDR[1]) ||
       (pDHCPMSG->chaddr[2] != DHCP_CHADDR[2]) || (pDHCPMSG->chaddr[3] != DHCP_CHADDR[3]) ||
       (pDHCPMSG->chaddr[4] != DHCP_CHADDR[4]) || (pDHCPMSG->chaddr[5] != DHCP_CHADDR[5]) )
  {



         return 0;
  }

        if((DHCP_SIP[0]!=0) || (DHCP_SIP[1]!=0) || (DHCP_SIP[2]!=0) || (DHCP_SIP[3]!=0)){
            if( ((svr_addr[0]!=DHCP_SIP[0])|| (svr_addr[1]!=DHCP_SIP[1])|| (svr_addr[2]!=DHCP_SIP[2])|| (svr_addr[3]!=DHCP_SIP[3])) &&
                ((svr_addr[0]!=DHCP_REAL_SIP[0])|| (svr_addr[1]!=DHCP_REAL_SIP[1])|| (svr_addr[2]!=DHCP_REAL_SIP[2])|| (svr_addr[3]!=DHCP_REAL_SIP[3])) )
            {



                return 0;
            }
        }
  p = (uint8_t *)(&pDHCPMSG->op);
  p = p + 240;
  e = p + (len - 240);

  while ( p < e ) {

   switch ( *p ) {

      case endOption :
         p = e;
       break;
            case padOption :
       p++;
       break;
      case dhcpMessageType :
       p++;
       p++;
       type = *p++;
       break;
      case subnetMask :
       p++;
       p++;
       DHCP_allocated_sn[0] = *p++;
       DHCP_allocated_sn[1] = *p++;
       DHCP_allocated_sn[2] = *p++;
       DHCP_allocated_sn[3] = *p++;
       break;
      case routersOnSubnet :
       p++;
       opt_len = *p++;
       DHCP_allocated_gw[0] = *p++;
       DHCP_allocated_gw[1] = *p++;
       DHCP_allocated_gw[2] = *p++;
       DHCP_allocated_gw[3] = *p++;
       p = p + (opt_len - 4);
       break;
      case dns :
       p++;
       opt_len = *p++;
       DHCP_allocated_dns[0] = *p++;
       DHCP_allocated_dns[1] = *p++;
       DHCP_allocated_dns[2] = *p++;
       DHCP_allocated_dns[3] = *p++;
       p = p + (opt_len - 4);
       break;
      case dhcpIPaddrLeaseTime :
       p++;
       opt_len = *p++;
       dhcp_lease_time = *p++;
       dhcp_lease_time = (dhcp_lease_time << 8) + *p++;
       dhcp_lease_time = (dhcp_lease_time << 8) + *p++;
       dhcp_lease_time = (dhcp_lease_time << 8) + *p++;



       break;
      case dhcpServerIdentifier :
       p++;
       opt_len = *p++;
       DHCP_SIP[0] = *p++;
       DHCP_SIP[1] = *p++;
       DHCP_SIP[2] = *p++;
       DHCP_SIP[3] = *p++;
                DHCP_REAL_SIP[0]=svr_addr[0];
                DHCP_REAL_SIP[1]=svr_addr[1];
                DHCP_REAL_SIP[2]=svr_addr[2];
                DHCP_REAL_SIP[3]=svr_addr[3];
       break;
      default :
       p++;
       opt_len = *p++;
       p += opt_len;
       break;
   }
  }
 }
 return type;
}

uint8_t DHCP_run(void)
{
 uint8_t type;
 uint8_t ret;

 if(dhcp_state == 6) return DHCP_STOPPED;

 if(WIZCHIP_READ((0x00000000 + (0x0003 << 8) + ((1+4*DHCP_SOCKET) << 3))) != 0x22)
    socket(DHCP_SOCKET, 0x02, 68, 0x00);

 ret = DHCP_RUNNING;
 type = parseDHCPMSG();

 switch ( dhcp_state ) {
    case 0 :
         DHCP_allocated_ip[0] = 0;
         DHCP_allocated_ip[1] = 0;
         DHCP_allocated_ip[2] = 0;
         DHCP_allocated_ip[3] = 0;
     send_DHCP_DISCOVER();
     dhcp_state = 1;
     break;
  case 1 :
   if (type == 2){



            DHCP_allocated_ip[0] = pDHCPMSG->yiaddr[0];
            DHCP_allocated_ip[1] = pDHCPMSG->yiaddr[1];
            DHCP_allocated_ip[2] = pDHCPMSG->yiaddr[2];
            DHCP_allocated_ip[3] = pDHCPMSG->yiaddr[3];

    send_DHCP_REQUEST();
    dhcp_state = 2;
   } else ret = check_DHCP_timeout();
         break;

  case 2 :
   if (type == 5) {




    if (check_DHCP_leasedIP()) {

     dhcp_ip_assign();
     reset_DHCP_timeout();

     dhcp_state = 3;
    } else {

     reset_DHCP_timeout();
     dhcp_ip_conflict();
        dhcp_state = 0;
    }
   } else if (type == 6) {





    reset_DHCP_timeout();

    dhcp_state = 1;
   } else ret = check_DHCP_timeout();
  break;

  case 3 :
     ret = DHCP_IP_LEASED;
   if ((dhcp_lease_time != 0xffffffff) && ((dhcp_lease_time/2) < dhcp_tick_1s)) {





    type = 0;
    OLD_allocated_ip[0] = DHCP_allocated_ip[0];
    OLD_allocated_ip[1] = DHCP_allocated_ip[1];
    OLD_allocated_ip[2] = DHCP_allocated_ip[2];
    OLD_allocated_ip[3] = DHCP_allocated_ip[3];

    DHCP_XID++;

    send_DHCP_REQUEST();

    reset_DHCP_timeout();

    dhcp_state = 4;
   }
  break;

  case 4 :
     ret = DHCP_IP_LEASED;
   if (type == 5) {
    dhcp_retry_count = 0;
    if (OLD_allocated_ip[0] != DHCP_allocated_ip[0] ||
        OLD_allocated_ip[1] != DHCP_allocated_ip[1] ||
        OLD_allocated_ip[2] != DHCP_allocated_ip[2] ||
        OLD_allocated_ip[3] != DHCP_allocated_ip[3])
    {
     ret = DHCP_IP_CHANGED;
     dhcp_ip_update();




    }



    reset_DHCP_timeout();
    dhcp_state = 3;
   } else if (type == 6) {





    reset_DHCP_timeout();

    dhcp_state = 1;
   } else ret = check_DHCP_timeout();
     break;
  default :
     break;
 }

 return ret;
}

void DHCP_stop(void)
{
   close(DHCP_SOCKET);
   dhcp_state = 6;
}

uint8_t check_DHCP_timeout(void)
{
 uint8_t ret = DHCP_RUNNING;

 if (dhcp_retry_count < 2) {
  if (dhcp_tick_next < dhcp_tick_1s) {

   switch ( dhcp_state ) {
    case 1 :

     send_DHCP_DISCOVER();
    break;

    case 2 :


     send_DHCP_REQUEST();
    break;

    case 4 :


     send_DHCP_REQUEST();
    break;

    default :
    break;
   }

   dhcp_tick_1s = 0;
   dhcp_tick_next = dhcp_tick_1s + 10;
   dhcp_retry_count++;
  }
 } else {

  switch(dhcp_state) {
   case 1:
    dhcp_state = 0;
    ret = DHCP_FAILED;
    break;
   case 2:
   case 4:
    send_DHCP_DISCOVER();
    dhcp_state = 1;
    break;
   default :
    break;
  }
  reset_DHCP_timeout();
 }
 return ret;
}

int8_t check_DHCP_leasedIP(void)
{
 uint8_t tmp;
 int32_t ret;


 tmp = WIZCHIP_READ((0x00000000 + (0x001B << 8) + (0x00 << 3)));
 WIZCHIP_WRITE((0x00000000 + (0x001B << 8) + (0x00 << 3)), 0x03);



 ret = sendto(DHCP_SOCKET, (uint8_t *)"CHECK_IP_CONFLICT", 17, DHCP_allocated_ip, 5000);


 WIZCHIP_WRITE((0x00000000 + (0x001B << 8) + (0x00 << 3)), tmp);

 if(ret == (0 - 13)) {






  return 1;
 } else {

  send_DHCP_DECLINE();

  ret = dhcp_tick_1s;
  while((dhcp_tick_1s - ret) < 2) ;

  return 0;
 }
}

void DHCP_init(uint8_t s, uint8_t * buf)
{
   uint8_t zeroip[4] = {0,0,0,0};
   WIZCHIP_READ_BUF((0x00000000 + (0x0009 << 8) + (0x00 << 3)), DHCP_CHADDR, 6);
   if((DHCP_CHADDR[0] | DHCP_CHADDR[1] | DHCP_CHADDR[2] | DHCP_CHADDR[3] | DHCP_CHADDR[4] | DHCP_CHADDR[5]) == 0x00)
   {

      DHCP_CHADDR[0] = 0x00;
      DHCP_CHADDR[1] = 0x08;
      DHCP_CHADDR[2] = 0xdc;
      DHCP_CHADDR[3] = 0x00;
      DHCP_CHADDR[4] = 0x00;
      DHCP_CHADDR[5] = 0x00;
      WIZCHIP_WRITE_BUF((0x00000000 + (0x0009 << 8) + (0x00 << 3)), DHCP_CHADDR, 6);
   }

 DHCP_SOCKET = s;
 pDHCPMSG = (RIP_MSG*)buf;
 DHCP_XID = 0x12345678;
 {
  DHCP_XID += DHCP_CHADDR[3];
  DHCP_XID += DHCP_CHADDR[4];
  DHCP_XID += DHCP_CHADDR[5];
  DHCP_XID += (DHCP_CHADDR[3] ^ DHCP_CHADDR[4] ^ DHCP_CHADDR[5]);
 }

 WIZCHIP_WRITE_BUF((0x00000000 + (0x000F << 8) + (0x00 << 3)), zeroip, 4);
 WIZCHIP_WRITE_BUF((0x00000000 + (0x0001 << 8) + (0x00 << 3)),zeroip,4);

 reset_DHCP_timeout();
 dhcp_state = 0;
}



void reset_DHCP_timeout(void)
{
 dhcp_tick_1s = 0;
 dhcp_tick_next = 10;
 dhcp_retry_count = 0;
}

void DHCP_time_handler(void)
{
 dhcp_tick_1s++;
}

void getIPfromDHCP(uint8_t* ip)
{
 ip[0] = DHCP_allocated_ip[0];
 ip[1] = DHCP_allocated_ip[1];
 ip[2] = DHCP_allocated_ip[2];
 ip[3] = DHCP_allocated_ip[3];
}

void getGWfromDHCP(uint8_t* ip)
{
 ip[0] =DHCP_allocated_gw[0];
 ip[1] =DHCP_allocated_gw[1];
 ip[2] =DHCP_allocated_gw[2];
 ip[3] =DHCP_allocated_gw[3];
}

void getSNfromDHCP(uint8_t* ip)
{
   ip[0] = DHCP_allocated_sn[0];
   ip[1] = DHCP_allocated_sn[1];
   ip[2] = DHCP_allocated_sn[2];
   ip[3] = DHCP_allocated_sn[3];
}

void getDNSfromDHCP(uint8_t* ip)
{
   ip[0] = DHCP_allocated_dns[0];
   ip[1] = DHCP_allocated_dns[1];
   ip[2] = DHCP_allocated_dns[2];
   ip[3] = DHCP_allocated_dns[3];
}

uint32_t getDHCPLeasetime(void)
{
 return dhcp_lease_time;
}

char NibbleToHex(uint8_t nibble)
{
  nibble &= 0x0F;
  if (nibble <= 9)
    return nibble + '0';
  else
    return nibble + ('A'-0x0A);
}
