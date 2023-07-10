#include "millis.h"

volatile uint32_t __tick_ms_counter = 0;

uint32_t millis(void) {
    return __tick_ms_counter;
}