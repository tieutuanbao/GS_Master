#ifndef __W5500_FRAME_H
#define __W5500_FRAME_H	8122019

#include "stdint.h"

typedef struct
{
	uint16_t Address;
	union
	{
		uint8_t AccessByte;
		struct
		{
			volatile uint8_t OMB	:2;	
			volatile uint8_t RWB	:1;
			volatile uint8_t BSB	:5;				
		}AccessBits;
	}Control;
}W5500_HEADER_COMMAND;


#define W5500_BSB_COM_REG	0x00
#define W5500_BSB_Socket_REG(_W5500_SK_REG)	0x08|(_W5500_SK_REG<<5)
#define W5500_BSB_Socket_Tx(_W5500_SK_Tx)		0x10|(_W5500_SK_Tx<<5)
#define W5500_BSB_Socket_Rx(_W5500_SK_Rx)		0x18|(_W5500_SK_Rx<<5)

#define W5500_Read_Data	0x00
#define W5500_Write_Data	0x04

typedef enum
{
	W5500_COMMON_REG_BLOCK 	= 0,
	W5500_SOCKET0_REG_BLOCK	= 1,
	W5500_SOCKET0_TX_BLOCK	= 2,
	W5500_SOCKET0_RX_BLOCK	= 3,
	W5500_SOCKET1_REG_BLOCK	= 5,
	W5500_SOCKET1_TX_BLOCK	= 6,
	W5500_SOCKET1_RX_BLOCK	= 7,
	W5500_SOCKET2_REG_BLOCK	= 9,
	W5500_SOCKET2_TX_BLOCK	= 10,
	W5500_SOCKET2_RX_BLOCK	= 11,
	W5500_SOCKET3_REG_BLOCK	= 13,
	W5500_SOCKET3_TX_BLOCK	= 14,
	W5500_SOCKET3_RX_BLOCK	= 15,
	W5500_SOCKET4_REG_BLOCK	= 17,
	W5500_SOCKET4_TX_BLOCK	= 18,
	W5500_SOCKET4_RX_BLOCK	= 19,
	W5500_SOCKET5_REG_BLOCK	= 21,
	W5500_SOCKET5_TX_BLOCK	= 22,
	W5500_SOCKET5_RX_BLOCK	= 23,
	W5500_SOCKET6_REG_BLOCK	= 25,
	W5500_SOCKET6_TX_BLOCK	= 26,
	W5500_SOCKET6_RX_BLOCK	= 27,
	W5500_SOCKET7_REG_BLOCK	= 29,
	W5500_SOCKET7_TX_BLOCK	= 30,
	W5500_SOCKET7_RX_BLOCK	= 31,
}_W5500_SELECT_BLOCK;
typedef enum 
{
	VARIABLE_DATA_LEN = 0,
	FIXED_DATA_LEN_1BYTE = 1,
	FIXED_DATA_LEN_2BYTE = 2, 
	FIXED_DATA_LEN_4BYTE = 3,
}W5500_SPI_MODE;

typedef enum 
{
	W5500_READ = 0,
	W5500_WRITE = 1,
}W5500_ACCESS_MODE;
#endif
