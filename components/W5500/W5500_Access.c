#include "W5500_Access.h"
#include <stdio.h>
#include <string.h>

_SPI_FUNCTION W5500_SPI_Funct;

// Truyền biến struct với các hàm SPI tương ứng với từng loại VĐK
void SPI_Match(_SPI_FUNCTION _User_SPI)
{
	W5500_SPI_Funct = _User_SPI;
}

void W5500_SPI_Transfer(uint16_t _W5500_Address_Phase, uint8_t _W5500_Control_Phase, uint8_t *_W5500_Data_Phase, uint32_t _W5500_Data_Lent){
	uint8_t W5500_Buffer_Transfer[3];
	W5500_SPI_Funct.W5500_CS(LOW);
	W5500_Buffer_Transfer[0] = (_W5500_Address_Phase >> 8) & 0xFF;
	W5500_Buffer_Transfer[1] = _W5500_Address_Phase & 0xFF;
	W5500_Buffer_Transfer[2] = _W5500_Control_Phase;
  	W5500_SPI_Funct.W5500_SPI_Send(W5500_Buffer_Transfer, 3);
	if(_W5500_Control_Phase & 0x04) {
		W5500_SPI_Funct.W5500_SPI_Send(_W5500_Data_Phase,_W5500_Data_Lent);
	}
  	else {
		W5500_SPI_Funct.W5500_SPI_Receive(_W5500_Data_Phase,_W5500_Data_Lent);
	}
	W5500_SPI_Funct.W5500_CS(HIGH);
}

/****************************************************************************************************
							các hàm truy cập vào commond register block 
*****************************************************************************************************/
void W5500_SetGatewayIP(uint8_t *_gateway)
{
	W5500_SPI_Transfer(W5500_REGISTER_GATEWAY_IP,W5500_BSB_COM_REG|W5500_Write_Data, _gateway,4);
}
void W5500_SetSubnetMask(uint8_t *_subnetMask)
{
	W5500_SPI_Transfer(W5500_REGISTER_SUBNET_MASK,W5500_BSB_COM_REG|W5500_Write_Data, _subnetMask,4);
}
void W5500_SetMACAdd(uint8_t *_MACadd)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOURCE_MAC,W5500_BSB_COM_REG|W5500_Write_Data, _MACadd,6);
}
void W5500_SetIP(uint8_t *_IPadd)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOURCE_IP,W5500_BSB_COM_REG|W5500_Write_Data, _IPadd,4);
}
void W5500_GetIP(uint8_t *_IPadd)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOURCE_IP,W5500_BSB_COM_REG|W5500_Read_Data, _IPadd,4);
}
void W5500_GetMACAdd(uint8_t *_MACadd)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOURCE_MAC,W5500_BSB_COM_REG|W5500_Read_Data, _MACadd,4);
}	
// Sử dngj hàm này để khởi tạo W5500 
void W5500_Init(uint8_t *IP, uint8_t *MAC, uint8_t *subnetMask, uint8_t *gateway)
{
	W5500_SetGatewayIP(gateway);
	W5500_SetSubnetMask(subnetMask);
	W5500_SetMACAdd(MAC);
	W5500_SetIP(IP);
}
/****************************************************************************************************
							các hàm truy cập vào Socket register block 
*****************************************************************************************************/

void W5500_SocketProtocol(uint8_t _socketNumber,_SOCKET_PROTOCOL _protocol)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_MODE, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&_protocol,1);
}
void W5500_Set_SocketIP(uint8_t _socketNumber,uint8_t *_IPadd)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_DESTINATION_IP, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,_IPadd,4);
}
void W5500_Set_SocketPort_Des(uint8_t _socketNumber,uint16_t _Port)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_DESTINATION_PORT, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&_Port+1,1);
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_DESTINATION_PORT+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&_Port,1);
}
void W5500_Set_SocketPort_Source(uint8_t _socketNumber,uint16_t _Port)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_SOURCE_PORT, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&_Port+1,1);
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_SOURCE_PORT+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&_Port,1);
}
void W5500_Set_SocketCommand(uint8_t _socketNumber, _SOCKET_COMMAND _command)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_COMMAND, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&_command,1);
}
uint8_t W5500_Get_SocketCommand(uint8_t _socketNumber)
{
	_SOCKET_COMMAND _return_value; 
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_COMMAND, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_return_value,1);
	return _return_value;
}
void W5500_SetKeepAlive(uint8_t _socketNumber, uint8_t _keepAliveValue)
{
	W5500_SPI_Transfer(0x002F,W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data, &_keepAliveValue,1);
}	
void W5500_Clear_SnIR(uint8_t _socketNumber)
{
	uint8_t _Clr_SnIR = 0xff;
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_INTERUPT_STATUS, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,&_Clr_SnIR,1);
}
_SOCKET_STATUS W5500_Get_SocketStatus(uint8_t _socketNumber)
{
	_SOCKET_STATUS _return_status;
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_STATUS, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t*)&_return_status,1);
	return _return_status;
}
_SOCKET_INTERRUPT W5500_Get_SocketInterrupt(uint8_t _socketNumber)
{
	uint8_t _interrupt_status = 0;
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_INTERUPT_STATUS, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,&_interrupt_status,1);
	if(_interrupt_status & W5500_REGISTER_SOCKET_INTERUPT_SEND_OK)
		return SOCKET_INTERRUPT_SENDOK;
	else if(_interrupt_status & W5500_REGISTER_SOCKET_INTERUPT_TIMEOUT)
		return SOCKET_INTERRUPT_TIMEOUT;
	else if(_interrupt_status & W5500_REGISTER_SOCKET_INTERUPT_RECV)
		return SOCKET_INTERRUPT_RECV;
	else if(_interrupt_status & W5500_REGISTER_SOCKET_INTERUPT_DISCON)
		return SOCKET_INTERRUPT_DISCON;
	else if(_interrupt_status & W5500_REGISTER_SOCKET_INTERUPT_CON)
		return SOCKET_INTERRUPT_CON;
	else return SOCKET_INTERRUPT_NOTHING;
}
/****************************************************************************************************
							các hàm truy cập vào Socket TX buffer 
*****************************************************************************************************/
void W5500_set_TX_BuffSize(uint8_t _socketNumber,_SOCKET_BUFF_SIZE _size)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TXBUF_SIZE, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&_size,1);
}
uint16_t W5500_get_TX_RD(uint8_t _socketNumber)
{
	uint16_t _TR_Pointer=0;
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TX_READ_POINTER, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_TR_Pointer+1,1);
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TX_READ_POINTER+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_TR_Pointer,1);
	return _TR_Pointer;
}
uint16_t W5500_get_TX_WR(uint8_t _socketNumber)
{
	uint16_t _TWR_Pointer = 0;
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TX_WRITE_POINTER, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_TWR_Pointer+1,1);
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TX_WRITE_POINTER+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_TWR_Pointer,1);
	return _TWR_Pointer;
}
void W5500_set_TX_WR(uint8_t _socketNumber, uint16_t _TX_WR_Value)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TX_WRITE_POINTER, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&_TX_WR_Value+1,1);
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TX_WRITE_POINTER+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&_TX_WR_Value,1);
}

//kiểm tra bộ nhớ còn trống của TX buffer, check lệnh SEND đã thực hiện xong
uint16_t W5500_get_TX_Freesize(uint8_t _socketNumber)
{
	uint16_t _TX_FSR_value=0, _return_TX_FSR_value=5;
	do
	{
		W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TX_FREESIZE, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_TX_FSR_value+1,1);
		W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TX_FREESIZE+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_TX_FSR_value,1);
		if(_TX_FSR_value)
		{
			W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TX_FREESIZE, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_return_TX_FSR_value+1,1);
			W5500_SPI_Transfer(W5500_REGISTER_SOCKET_TX_FREESIZE+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_return_TX_FSR_value,1);
		}
	}while(_TX_FSR_value != _return_TX_FSR_value);
	return (uint16_t)_return_TX_FSR_value;
}

/****************************************************************************************************
							các hàm truy cập vào Socket RX buffer 
*****************************************************************************************************/
void W5500_set_RX_BuffSize(uint8_t _socketNumber,_SOCKET_BUFF_SIZE _RX_Buff_size)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RXBUF_SIZE, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&_RX_Buff_size,1);
}
uint16_t W5500_get_RX_RD(uint8_t _socketNumber)
{
	uint16_t _return_RX_RD_val=0;
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RX_READ_POINTER, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_return_RX_RD_val+1,1);
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RX_READ_POINTER+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_return_RX_RD_val,1);
	return _return_RX_RD_val;
}
uint16_t W5500_get_RX_WR(uint8_t _socketNumber)
{
	uint16_t _return_RX_WR_val=0;
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RX_WRITE_POINTER, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_return_RX_WR_val+1,1);
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RX_WRITE_POINTER+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_return_RX_WR_val,1);
	return _return_RX_WR_val;
}
void W5500_set_RX_RD(uint8_t _socketNumber, uint16_t RX_RD_Value)
{
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RX_READ_POINTER, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&RX_RD_Value+1,1);
	W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RX_READ_POINTER+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Write_Data,(uint8_t *)&RX_RD_Value,1);
}
// kiểm tra kích thước dữ liệu nhận được trong RX buffer, check lệnh RECV đã thực hiện xong
uint16_t W5500_get_RXsize(uint8_t _socketNumber)
{
	uint16_t _Rx_Size=0, _return_Rx_Size=0;
	do
	{
		W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RECEIVED_SIZE, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_Rx_Size+1,1);
		W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RECEIVED_SIZE+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_Rx_Size,1);
		if(_Rx_Size)
		{
			W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RECEIVED_SIZE, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_return_Rx_Size+1,1);
			W5500_SPI_Transfer(W5500_REGISTER_SOCKET_RECEIVED_SIZE+1, W5500_BSB_Socket_REG(_socketNumber)|W5500_Read_Data,(uint8_t *)&_return_Rx_Size,1);
		}
	}while(_Rx_Size != _return_Rx_Size);
	return _return_Rx_Size;
}
/************************************************************************************
Quy trình ghi dữ liệu vào Socket n TX buffer
		1. Đọc giá trị thanh ghi TX_WR.
		2. Ghi dữ liệu vào TX buffer block tại địa chỉ là giá trị của TX_WR.
		3. Update giá trị TW_WR mới, tăng thêm 1 giá trị bằng độ dài dữ liệu 
*************************************************************************************/
void W5500_Send_Data(uint8_t _socketNumber, uint8_t *_Data, uint16_t _len)
{
	uint16_t _pointer = W5500_get_TX_WR(_socketNumber);
	if(_len == 0) return;
	W5500_SPI_Transfer(_pointer, W5500_BSB_Socket_Tx(_socketNumber)|W5500_Write_Data,_Data,_len);
	_pointer+=_len;
	W5500_set_TX_WR(_socketNumber,_pointer);
}
/************************************************************************************
Quy trình đọc dữ liệu trong Socket n RX buffer
		1. Đọc giá trị thanh ghi RX_RD.
		2. Đọc dữ liệu trong TX buffer block tại địa chỉ là giá trị của RX_RD.
		3. Update giá trị RX_RD mới, tăng thêm 1 giá trị bằng độ dài dữ liệu. 
*************************************************************************************/
void W5500_Recv_Data(uint8_t _socketNumber, uint8_t *_Data, uint16_t _len)
{
	uint16_t _pointer = W5500_get_RX_RD(_socketNumber);
	if(_len == 0) return;
	W5500_SPI_Transfer(_pointer, W5500_BSB_Socket_Rx(_socketNumber)|W5500_Read_Data,_Data,_len);
	_pointer+=_len;
	W5500_set_RX_RD(_socketNumber,_pointer);
}

