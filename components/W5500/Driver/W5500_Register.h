#ifndef __W5500_REGISTER_H
#define __W5500_REGISTER_H	8122019


/*****************************************************************************
COMMAND REGISTER BLOCK - COMMAND REGISTER BLOCK - COMMAND REGISTER BLOCK
*****************************************************************************/
#define W5500_REGISTER_MODE									0
#define W5500_REGISTER_MODE_RST		 					0x80 		// 1 - Reset, auto clear after reset
#define W5500_REGISTER_MODE_WOL		  				0x20  	// 0 - disable wake on LAN, 1 - enable wake on LAN
#define W5500_REGISTER_MODE_PB		 	 				0x10 	 	// 0 - disable ping block mode, 1 - enable ping block mode
#define W5500_REGISTER_MODE_PPPoE	  				0x08 		// 0 - disable PPPoE, 1 - enable PPPoE
#define W5500_REGISTER_MODE_FAPR	  				0x08 		// 0 - disable Force APR mode, 1 - enable Force APR

#define W5500_REGISTER_GATEWAY_IP 					0x0001
#define W5500_REGISTER_SUBNET_MASK 					0x0005
#define W5500_REGISTER_SOURCE_MAC	 					0x0009
#define W5500_REGISTER_SOURCE_IP		 				0x000F
#define W5500_REGISTER_INTLEVEL		 					0x0013  	//interup low level timer

#define W5500_REGISTER_INTERUPT			 				0x0015
#define W5500_REGISTER_INTERUPT_CONFLICT		0x80      
#define W5500_REGISTER_INTERUPT_UNREACH			0x40
#define W5500_REGISTER_INTERUPT_PPoE				0x20
#define W5500_REGISTER_INTERUPT_MP					0x10

#define W5500_REGISTER_INTERUPT_MASK 				0x0016
#define W5500_REGISTER_INT_MASK_CONFLICT		0x80
#define W5500_REGISTER_INT_MASK_UNREACH			0x40
#define W5500_REGISTER_INT_MASK_PPoE				0x20
#define W5500_REGISTER_INT_MASK_MP					0x10

#define W5500_REGISTER_SOCKET_INTERUPT			0x0017
#define W5500_REGISTER_SOCKET7_INTERUPT			0x80
#define W5500_REGISTER_SOCKET6_INTERUPT			0x40
#define W5500_REGISTER_SOCKET5_INTERUPT			0x20
#define W5500_REGISTER_SOCKET4_INTERUPT			0x10
#define W5500_REGISTER_SOCKET3_INTERUPT			0x08
#define W5500_REGISTER_SOCKET2_INTERUPT			0x04
#define W5500_REGISTER_SOCKET1_INTERUPT			0x02
#define W5500_REGISTER_SOCKET0_INTERUPT			0x01

#define W5500_REGISTER_SOCKET_INTERUPT_MASK	0x0018
#define W5500_REGISTER_SOCKET7_INT_MASK			0x80
#define W5500_REGISTER_SOCKET6_INT_MASK			0x40
#define W5500_REGISTER_SOCKET5_INT_MASK			0x20
#define W5500_REGISTER_SOCKET4_INT_MASK			0x10
#define W5500_REGISTER_SOCKET3_INT_MASK			0x08
#define W5500_REGISTER_SOCKET2_INT_MASK			0x04
#define W5500_REGISTER_SOCKET1_INT_MASK			0x02
#define W5500_REGISTER_SOCKET0_INT_MASK			0x01

#define W5500_REGISTER_RETRY_TIME0					0x0019
#define W5500_REGISTER_RETRY_TIME1					0x001A
#define W5500_REGISTER_RETRY_COUNT					0x001B
#define W5500_REGISTER_PTIMER								0x001C
#define W5500_REGISTER_PMAGIC								0x001D
#define W5500_REGISTER_PHAR0								0x001E   //destination MAC in PPPoE mode 
#define W5500_REGISTER_PHAR1 								0x001F
#define W5500_REGISTER_PHAR2 								0x0020
#define W5500_REGISTER_PHAR3 								0x0021
#define W5500_REGISTER_PHAR4 								0x0022
#define W5500_REGISTER_PHAR5 								0x0023
#define W5500_REGISTER_PSID0 								0x0024  //session ID in PPPoE mode 
#define W5500_REGISTER_PSID1 								0x0025
#define W5500_REGISTER_PMRU0 								0x0026  // max receive uinit in PPPoE mode 
#define W5500_REGISTER_PMRU1 								0x0027
#define W5500_REGISTER_UNREACH_IP0					0x0028
#define W5500_REGISTER_UNREACH_IP1					0x0029
#define W5500_REGISTER_UNREACH_IP2					0x002A
#define W5500_REGISTER_UNREACH_IP3					0x002B
#define W5500_REGISTER_UNREACH_PORT0				0x002C
#define W5500_REGISTER_UNREACH_PORT1				0x002D

#define W5500_REGISTER_PHYCFGR							0x002E //PHY config 
#define W5500_REGISTER_PHYCFGR_RST					0x80
#define W5500_REGISTER_PHYCFGR_OPMD					0x40
#define W5500_REGISTER_PHYCFGR_DPX					0x04
#define W5500_REGISTER_PHYCFGR_SPD					0x02
#define W5500_REGISTER_PHYCFGR_LNK					0x01

#define W5500_REGISTER_PHYCFGR_VESIONR			0x0039 //defalut = 0x04 

/*****************************************************************************
SOCKET REGISTER BLOCK - SOCKET REGISTER BLOCK - SOCKET REGISTER BLOCK
*****************************************************************************/
#define W5500_REGISTER_SOCKET_MODE 								0
#define W5500_REGISTER_SOCKET_MODE_MUTI						0x80 //1-enable Mutlicasting, 0 - disable Mutlicasting
#define W5500_REGISTER_SOCKET_MODE_BCASTB					0x40 //1-enable Broadcast, 0 - disable Broadcast
#define W5500_REGISTER_SOCKET_MODE_NO_DELAY_ACK		0x20 //1-enable No delay ACK, 0 - disable no delay ACK
#define W5500_REGISTER_SOCKET_MODE_UCASTB					0x10 //1-enable Uinicast, 0 - disable Uinicast

#define W5500_REGISTER_SOCKET_COMMAND 						0x0001 //nhận giá trị SOCKET_COMMAND
																												// clear về 0x00 sau khi thực hiện xong lệnh 
																												// để kiếm tra lệnh đã thực hiện xong chưa, kiểm tra status hoặc interupt 
#define W5500_REGISTER_SOCKET_INTERUPT_STATUS 		0x0002  // write '1' to clear
#define W5500_REGISTER_SOCKET_INTERUPT_SEND_OK 		0x10    // 1- interrupt occur
#define W5500_REGISTER_SOCKET_INTERUPT_TIMEOUT 		0x08
#define W5500_REGISTER_SOCKET_INTERUPT_RECV		 		0x04
#define W5500_REGISTER_SOCKET_INTERUPT_DISCON 		0x02
#define W5500_REGISTER_SOCKET_INTERUPT_CON 				0x01

#define W5500_REGISTER_SOCKET_STATUS 							0x0003
#define W5500_REGISTER_SOCKET_SOURCE_PORT 				0x0004
#define W5500_REGISTER_SOCKET_DESTINATION_MAC			0x0006
#define W5500_REGISTER_SOCKET_DESTINATION_IP			0x000C
#define W5500_REGISTER_SOCKET_DESTINATION_PORT		0x0010
#define W5500_REGISTER_SOCKET_MSSR								0x0012  // max segment size 
#define W5500_REGISTER_SOCKET_IPTYPE							0x0015
#define W5500_REGISTER_SOCKET_TTL									0x0016
#define W5500_REGISTER_SOCKET_RXBUF_SIZE					0x001E //nhận các giá trị kiểu SOCKET_BUFF_SIZE 
#define W5500_REGISTER_SOCKET_TXBUF_SIZE					0x001F //nhận các giá trị kiểu SOCKET_BUFF_SIZE 
#define W5500_REGISTER_SOCKET_TX_FREESIZE					0x0020 // bộ nhớ còn trống của TX buffer (byte) 
#define W5500_REGISTER_SOCKET_TX_READ_POINTER			0x0022
#define W5500_REGISTER_SOCKET_TX_WRITE_POINTER		0x0024
#define W5500_REGISTER_SOCKET_RECEIVED_SIZE 			0x0026 //data size saved in socket n RX buffer
#define W5500_REGISTER_SOCKET_RX_READ_POINTER			0x0028
#define W5500_REGISTER_SOCKET_RX_WRITE_POINTER		0x002A

#define W5500_REGISTER_SOCKET_IMR         				0x002C //inrterupt mask
#define W5500_REGISTER_SOCKET_IMR_SEND_OK					0x10   // 1 - enable interupt, 0 - disable interupt
#define W5500_REGISTER_SOCKET_IMR_TIMEOUT					0x08 
#define W5500_REGISTER_SOCKET_IMR_RECV						0x04 
#define W5500_REGISTER_SOCKET_IMR_DISCON					0x02 
#define W5500_REGISTER_SOCKET_IMR_CON							0x01 

#define W5500_REGISTER_SOCKET_FRAGMENT0						0x002D
#define W5500_REGISTER_SOCKET_FRAGMENT1						0x002E
#define W5500_REGISTER_SOCKET_ALIVE_TIME					0x002F
typedef enum 
{
	SOCKET_PROTOCOL_CLOSED = 0,
	SOCKET_PROTOCOL_TCP 	 = 1,
	SOCKET_PROTOCOL_UDP    = 2,
	SOCKET_PROTOCOL_MACRAW = 4
}_SOCKET_PROTOCOL;

typedef enum
{
	SOCKET_COMMAND_OPEN 			= 1,
	SOCKET_COMMAND_LISTEN			= 2,
	SOCKET_COMMAND_CONNECT 		= 4,
	SOCKET_COMMAND_DISCON 		= 8,    
	SOCKET_COMMAND_CLOSE			= 0x10,
	SOCKET_COMMAND_SEND				= 0x20, //send all data in socket n TX buffer
	SOCKET_COMMAND_SEND_MAC		= 0x21, // valid only in UDP mode 
	SOCKET_COMMAND_KEEP				= 0x22, // valid only in UDP mode 
	SOCKET_COMMAND_RECV				= 0x40,
}_SOCKET_COMMAND;
typedef enum
{
	SOCKET_STATUS_CLOSED 		  =0,    // đóng socket, khi nhận lệnh SOCKET_COMMAND_CLOSE hoặc xảy ra timeout
	SOCKET_STATUS_INIT				=0x13, // khi tạo 1 kết nối TCP bằng lệnh SOCKET_COMMAND_OPEN
	SOCKET_STATUS_LISTEN		 	=0x14, //socket hoạt động với vai trò "TCP server", chờ yêu cầu kết nối 
	SOCKET_STATUS_SYSENT			=0x15,
	SOCKET_STATUS_SYNRECV			=0x16,
	SOCKET_STATUS_ESTABLISHED	=0x17, // khi SOCKET_COMMAND_CONNECT thành công,
	SOCKET_STATUS_FIN_WAIT		=0x18, 
	SOCKET_STATUS_CLOSING			=0x1A,
	SOCKET_STATUS_TIME_WAIT		=0x1B,
	SOCKET_STATUS_CLOSE_WAIT	=0x1C, //socket nhận yêu cầu disconnect từ thiết bị kia
	SOCKET_STATUS_LAST_ACK		=0x1D,
	SOCKET_STATUS_UDP					=0x22, 
	SOCKET_STATUS_MACRAW			=0x42
}_SOCKET_STATUS;

typedef enum 
{
	SOCKET_RXBUFF_SIZE_0KB = 0,
	SOCKET_RXBUFF_SIZE_1KB = 1,
	SOCKET_RXBUFF_SIZE_2KB = 2,
	SOCKET_RXBUFF_SIZE_4KB = 4,
	SOCKET_RXBUFF_SIZE_8KB = 8,
	SOCKET_RXBUFF_SIZE_16KB = 16,
}_SOCKET_BUFF_SIZE;
typedef enum 
{
	SOCKET_INTERRUPT_NOTHING  = 0,
	SOCKET_INTERRUPT_SENDOK  	= 1,
	SOCKET_INTERRUPT_TIMEOUT  = 2,
	SOCKET_INTERRUPT_RECV		  = 3,
	SOCKET_INTERRUPT_DISCON	 	= 4,
	SOCKET_INTERRUPT_CON 		  = 5,
}_SOCKET_INTERRUPT;

#endif

