#ifndef __MILLIS_H__
#define __MILLIS_H__

#include <stdint.h>

extern volatile uint32_t __tick_ms_counter;

uint32_t millis();

#endif