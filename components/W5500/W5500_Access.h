#ifndef __W5500_ACCESS_H
#define __W5500_ACCESS_H	

#include "W5500_Register.h"
#include "W5500_Frame.h"
#include "main.h"

#define MAX_SIZE_TX 2048 //byte
#define MAX_SIZE_RX 2048

typedef enum 
{
	LOW 	= 0,
	HIGH 	= 1,
}CS_CONTROL;

typedef struct 
{
	void (*W5500_CS)(CS_CONTROL CS_level); 
	void (*W5500_SPI_Send)(uint8_t *data, uint16_t data_len);
	void (*W5500_SPI_Receive)(uint8_t *data, uint16_t data_len);
}_SPI_FUNCTION;


void SPI_Match(_SPI_FUNCTION _User_SPI);
void W5500_WriteRegister(uint16_t _Address,_W5500_SELECT_BLOCK _Block, uint8_t _Data);
void W5500_ReadRegister(uint16_t _Address,_W5500_SELECT_BLOCK _Block, uint8_t *_Data);
void W5500_WriteBuffer(uint16_t _Address,_W5500_SELECT_BLOCK _Block, uint8_t *_Data, uint32_t _SizeOfData);
void W5500_ReadBuffer(uint16_t _Address,_W5500_SELECT_BLOCK _Block, uint8_t *_Data, uint32_t _SizeOfData);

void W5500_SetGatewayIP(uint8_t *_gateway);
void W5500_SetSubnetMask(uint8_t *subnetMask);
void W5500_SetMACAdd(uint8_t *_MACadd);
void W5500_GetMACAdd(uint8_t *_MACadd);
void W5500_SetIP(uint8_t *_IPadd);
void W5500_GetIP(uint8_t *_IPadd);
void W5500_Init(uint8_t *_IP, uint8_t *_MAC, uint8_t *subnetMask, uint8_t *_gateway);

void W5500_SocketProtocol(uint8_t _socketNumber,_SOCKET_PROTOCOL _protocol);
void W5500_Set_SocketIP(uint8_t _socketNumber,uint8_t *_IPadd);
void W5500_Set_SocketPort_Des(uint8_t _socketNumber,uint16_t _Port);
void W5500_Set_SocketPort_Source(uint8_t _socketNumber,uint16_t _Port);
void W5500_Set_SocketCommand(uint8_t _socketNumber, _SOCKET_COMMAND _command);
uint8_t W5500_Get_SocketCommand(uint8_t _socketNumber);
void W5500_SetKeepAlive(uint8_t _socketNumber, uint8_t _keepAliveValue);
void W5500_Clear_SnIR(uint8_t _socketNumber);
_SOCKET_STATUS W5500_Get_SocketStatus(uint8_t _socketNumber);
_SOCKET_INTERRUPT W5500_Get_SocketInterrupt(uint8_t _socketNumber);
uint16_t W5500_get_TX_RD(uint8_t _socketNumber);
uint16_t W5500_get_TX_WR(uint8_t _socketNumber);
void W5500_set_TX_WR(uint8_t _socketNumber, uint16_t _TX_WR_Value);
uint16_t W5500_get_TX_Freesize(uint8_t _socketNumber);
uint16_t W5500_get_RX_RD(uint8_t _socketNumber);
uint16_t W5500_get_RX_WR(uint8_t _socketNumber);
void W5500_set_RX_RD(uint8_t _socketNumber, uint16_t _RX_RD_Value);
uint16_t W5500_get_RXsize(uint8_t _socketNumber);
void W5500_Send_Data(uint8_t _socketNumber, uint8_t *_Data, uint16_t _len);
void W5500_Recv_Data(uint8_t _socketNumber, uint8_t *_Data, uint16_t _len);
void W5500_set_TX_BuffSize(uint8_t _socketNumber,_SOCKET_BUFF_SIZE _size);
void W5500_set_RX_BuffSize(uint8_t _socketNumber,_SOCKET_BUFF_SIZE _size);

#endif 
