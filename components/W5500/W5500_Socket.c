#include "W5500_Socket.h"
#include "delay.h"

/**************************************************************************************************
* @brief		Quy trình mở 1 socket
						1. Set _protocol
						2. Set _port
						3. thực hiện lệnh OPEN
						sau khi OPEN, trạng thái của socket là SOCKET_STATUS_INIT
* @param 		_socket_number : giá trị socket (0 -7) 
						_port: _port của server 
						_protocol : giao thức tùy chọn 
											SOCKET_PROTOCOL_CLOSED 
											SOCKET_PROTOCOL_TCP 
											SOCKET_PROTOCOL_UDP 
											SOCKET_PROTOCOL_MACRAW
												
**************************************************************************************************/
uint8_t W5500_Socket_Open(uint8_t _socket_number, uint16_t _port, _SOCKET_PROTOCOL _protocol) {
	uint16_t timeout = 0;
	uint8_t sockVal = 0;
	W5500_SocketProtocol(_socket_number,_protocol);
	W5500_Set_SocketPort_Source(_socket_number,_port);
	W5500_Set_SocketCommand(_socket_number,SOCKET_COMMAND_OPEN);
	while(W5500_Get_SocketCommand(_socket_number)); //đợi đến khi lệnh được thực thi
	return 1;
}
/***********************************************************************************************
* @brief 	  Đóng một socket. Sau khi đóng, trạng thái của socket là SOCKET_STATUS_CLOSED
* @param 		_socket_number : giá trị socket (0 -7) 
************************************************************************************************/
uint8_t W5500_Socket_Close(uint8_t _socket_number)
{
	W5500_Set_SocketCommand(_socket_number,SOCKET_COMMAND_CLOSE);
	W5500_Clear_SnIR(_socket_number);
	while(W5500_Get_SocketCommand(_socket_number)); //đợi đến khi lệnh được thực thi
	while(W5500_Get_SocketStatus(_socket_number) != SOCKET_STATUS_CLOSED);
	return 1;
}
/***********************************************************************************************
*@brief - Dùng cho TCP server. Server sẽ đợi yêu cầu kết nối từ client.
				- Sau khi thực hiện lệnh LISTEN, trạng thái của SOCKET chuyển từ SOCKET_STATUS_INIT sang 
					SOCKET_STATUS_LISTEN
				- Khi client kết nối thành công tới server, trạng thái của socket chuyển từ SOCKET_STATUS_LISTEN
					sang SOCKET_STATUS_ESTABLISHED
* @param 		_socket_number : giá trị socket (0 -7) 
************************************************************************************************/
uint8_t W5500_Socket_Listen(uint8_t _socket_number)
{
	if(W5500_Get_SocketStatus(_socket_number)!=SOCKET_STATUS_INIT)  //socket init sau khi thực hiện lệnh OPEN 
		return 0;
	W5500_Set_SocketCommand(_socket_number,SOCKET_COMMAND_LISTEN);
	while(W5500_Get_SocketCommand(_socket_number)); //đợi đến khi lệnh được thực thi
	while(W5500_Get_SocketStatus(_socket_number) != SOCKET_STATUS_LISTEN)
	{
		if(W5500_Get_SocketStatus(_socket_number) == SOCKET_STATUS_CLOSED)
			return 0;
	}
	return 1;
}
/************************************************************************ ***********************
* @brief 	  Sử dụng cho TCP client,tạo một kết nối tới TCP server
* @param 		_socket_number : giá trị socket (0 -7) 
						_IP_add: địa chỉ IP của server
						_port: _port của server 
************************************************************************************************/
uint8_t W5500_Socket_Connect(uint8_t _socket_number, uint8_t *_IP_add, uint16_t _port)
{
	if(((_IP_add[0] == 0) && (_IP_add[1] == 0) && (_IP_add[2] == 0) && (_IP_add[3] == 0)) ||
	((_IP_add[0] == 0xFF) && (_IP_add[1] == 0xFF) && (_IP_add[2] == 0xFF) && (_IP_add[3] == 0xFF)) ||
	_port == 0 )
		return 0;
	W5500_Set_SocketIP(_socket_number,_IP_add);
	W5500_Set_SocketPort_Des(_socket_number,_port);
	W5500_Set_SocketCommand(_socket_number,SOCKET_COMMAND_CONNECT);
	while(W5500_Get_SocketCommand(_socket_number)); //đợi đến khi lệnh được thực thi
	return 1;
}
/***********************************************************************************************
* @brief 	  Sử dụng cho cả TCP client và server, ngắt kết nối trên socket.
						Sau khi ngắt kết nối thành công, trạng thái của socket là SOCKET_STATUS_CLOSED
* @param 		_socket_number : socket cần ngắt kết nối (0-7)
************************************************************************************************/
void W5500_Socket_Disconnect(uint8_t _socket_number)
{
	W5500_Set_SocketCommand(_socket_number,SOCKET_COMMAND_DISCON);
	while(W5500_Get_SocketCommand(_socket_number)); //đợi đến khi lệnh được thực thi
}
/***********************************************************************************************
* @brief 	  Gửi dữ liệu trên socket 
						Quy trình:
											1. Ghi dữ liệu vào TX buffer
											2. Thực hiện lệnh SOCKET_COMMAND_SEND
* @param 		_socket_number : giá trị socket (0-7)
						_data: Buffer dữ liệu cần truyền 
						_data_len: kích thước dữ liệu 
* @return 	len : kích thước dữ liệu đã được gửi đi 
************************************************************************************************/
uint8_t W5500_Socket_Send(uint8_t _socket_number, uint8_t*_data, uint16_t _data_len)
{
	uint16_t len = 0;
	uint16_t TX_freesize = 0;
	_SOCKET_STATUS status;
	status =  W5500_Get_SocketStatus(_socket_number);
	if(_data_len>MAX_SIZE_TX)  //nếu kích thước _data vượt quá kích thước TX MAX, giới hạn lại kích thước _data
		len = MAX_SIZE_TX;
	else
		len = _data_len;
	do 
	{
		TX_freesize = W5500_get_TX_Freesize(_socket_number); //kiểm tra bộ nhớ còn trống của TX buffer
		status = W5500_Get_SocketStatus(_socket_number); //kiểm tra trạng thái socket 
		if((status == SOCKET_STATUS_CLOSED) || (status == SOCKET_STATUS_CLOSE_WAIT)) // nếu socket đã đóng 
		{
			return 0;  
		}
	}while(TX_freesize < len);// đợi cho đến khi TX buffer đủ bộ nhớ trống cho _data 
	// Khi buffer freesize đủ kích thước cho _data thì truyền _data qua socket
	W5500_Send_Data(_socket_number,_data,len);
	W5500_Set_SocketCommand(_socket_number,SOCKET_COMMAND_SEND_MAC);
	while(W5500_Get_SocketCommand(_socket_number)); //đợi đến khi lệnh được thực thi
	return len;
}
/***********************************************************************************************
* @brief 	  Nhận dữ liệu được gửi tới trên socket
						Quy trình:
											1. Đọc dữ liệu trong RX buffer
											2. Thực hiện lệnh SOCKET_COMMAND_RECV
* @param 		_socket_number : giá trị socket (0-7)
						_data: Buffer lưu dữ liệu đọc được
						_data_len: kích thước dữ liệu cần đọc 
* @return 	len: kích thước dữ liệu đọc được 
************************************************************************************************/
int16_t W5500_Socket_Recv(uint8_t _socket_number, uint8_t *_data, uint16_t _data_len)
{
	uint16_t len_recv; 
	_SOCKET_STATUS status;
	//kiểm tra kích thước _data nhận được 
	len_recv = W5500_get_RXsize(_socket_number);
	if(len_recv == 0)
	{
		 status = W5500_Get_SocketStatus(_socket_number); //kiểm tra trạng thái socket 
		 if((status == SOCKET_STATUS_CLOSED) || (status == SOCKET_STATUS_CLOSE_WAIT)) // nếu socket đã đóng 
		 {
				W5500_Socket_Close(_socket_number);
			  return -1;
		 }		 	
		 else //nếu socket vẫn mở mà chưa nhận được dữ liệu 
		 	return 0;
	}
	if(len_recv < _data_len) _data_len = len_recv;
	//đọc dữ liệu từ RX buffer
	W5500_Recv_Data(_socket_number,_data,_data_len);
	W5500_Set_SocketCommand(_socket_number,SOCKET_COMMAND_RECV);
	while(W5500_Get_SocketCommand(_socket_number)); //đợi đến khi lệnh được thực thi
	return _data_len;
}
