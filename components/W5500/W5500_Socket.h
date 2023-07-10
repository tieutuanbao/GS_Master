#ifndef __W5500_SOCKET_H
#define __W5500_SOCKET_H	9122019

#include "W5500_Access.h"
#include "W5500_Register.h"

#include "main.h"

uint8_t W5500_Socket_Open(uint8_t _socket_number, uint16_t _port, _SOCKET_PROTOCOL _protocol);
uint8_t W5500_Socket_Close(uint8_t _socket_number);
uint8_t W5500_Socket_Listen(uint8_t _socket_number);
uint8_t W5500_Socket_Connect(uint8_t _socket_number, uint8_t *_IP_add, uint16_t _port);
uint8_t W5500_Socket_Send(uint8_t _socket_number, uint8_t *_data, uint16_t _data_len);
int16_t W5500_Socket_Recv(uint8_t _socket_number, uint8_t *_data, uint16_t _data_len);
#endif
/**************************************************************************************************
Hướng dẫn sử dụng thư viện W5500
	Bước 1  : Khởi tạo W5500 gồm các thông số: địa chỉ IP, địa chỉ MAC, subetMask, địa chỉ gateway
						Sử dụng hàm W5500_Init
	Bước 2  : Mở một socket, cài đặt các thông số :_port, giao thức truyền cho nó 
						Sử dụng hàm W5500_Socket_Open;
	Bước 3	: Nếu W5500 đóng vai trò Client, sử dụng hàm W5500_Socket_Connect để tạo kết nối tới server
						Nếu W5500 đóng vai trò Server, sử dụng hàm W5500_Socket_Listen
	Bước 4:		Kiểm tra kết nối bằng cách đọc trạng thái của socket, nếu trạng thái là 
						SOCKET_STATUS_ESTABLISHED nghĩa là đã kết nối thành công.
						Sau khi kết nối thành công, có thể dùng hàm W5500_Socket_Send và W5500_Socket_Recv để
						truyền/nhận dữ liệu 
***************************************************************************************************/
