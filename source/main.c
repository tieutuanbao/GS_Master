#include "main.h"

#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include "gd32e10x.h"

#include "delay.h"
#include "SEGGER_RTT.h"
#include "custom_hid_core.h"
#include "drv_usb_hw.h"

/* Private define ------------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/
extern hid_fop_handler fop_handler;
usb_core_driver hid_gsConfig;
extern usb_desc hid_desc;
extern usb_class_core usbd_hid_cb;

static inline void CLOCK_config() {
    rcu_pllpresel_config(RCU_PLLPRESRC_HXTAL);
    rcu_predv1_config(RCU_PREDV1_DIV2);
    rcu_pll1_config(RCU_PLL1_MUL10);
    rcu_predv0_config(RCU_PREDV0SRC_CKPLL1, RCU_PREDV0_DIV2);
    rcu_pll_config(RCU_PLLSRC_HXTAL_IRC48M, RCU_PLL_MUL10);
    rcu_system_clock_source_config(RCU_CKSYSSRC_PLL);
    while (rcu_system_clock_source_get() != RCU_SCSS_PLL) {
    };
    rcu_ahb_clock_config(RCU_AHB_CKSYS_DIV1);
    rcu_apb1_clock_config(RCU_APB1_CKAHB_DIV2);
    rcu_apb2_clock_config(RCU_APB2_CKAHB_DIV1);
}
static inline void GPIO_config() {
    rcu_periph_clock_enable(RCU_AF);
    rcu_periph_clock_enable(RCU_GPIOA);
    rcu_periph_clock_enable(RCU_GPIOB);
    gpio_pin_remap_config(GPIO_SWJ_SWDPENABLE_REMAP, ENABLE);
    gpio_init(GPIOA, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ,
              SIGNAL_1_Pin | SIGNAL_2_Pin | SIGNAL_3_Pin | SIGNAL_4_Pin | SIGNAL_5_Pin |
                  SIGNAL_6_Pin | SIGNAL_7_Pin | SIGNAL_8_Pin | SIGNAL_9_Pin | SIGNAL_10_Pin | FLASH_CS_Pin);
    gpio_init(GPIOB, GPIO_MODE_IPU, GPIO_OSPEED_50MHZ,
              INPUT_1_Pin | INPUT_2_Pin | INPUT_3_Pin | INPUT_4_Pin | INPUT_5_Pin | W5500_INT_Pin | W5500_MISO_Pin);
    gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ,
              W5500_RST_Pin | W5500_CS_Pin | W5500_SCK_Pin | W5500_MOSI_Pin);
    gpio_init(GPIOB, GPIO_MODE_AF_PP, GPIO_OSPEED_50MHZ,
              DAC_PWM_Pin);

    /* Preset IO state */
    GPIO_BOP(FLASH_CS_Port) = FLASH_CS_Pin;
    GPIO_BC(W5500_RST_Port) = (uint32_t)W5500_RST_Pin;
    delay(10);
    GPIO_BOP(W5500_RST_Port) = (uint32_t)W5500_RST_Pin;
    GPIO_BOP(W5500_CS_Port) = W5500_CS_Pin;
    GPIO_BOP(W5500_SCK_Port) = W5500_SCK_Pin;
    GPIO_BOP(W5500_MOSI_Port) = W5500_MOSI_Pin;
}
static inline void TIMER_config() {
    
}

void DMA_config(void) {
    
}

void main() {
    SysTick_Config(SystemCoreClock / 1000U);
    GPIO_config();
    TIMER_config();
    DMA_config();

    SEGGER_RTT_printf(0, "\r\n\r\n ----------------- start app: Gameshow Button ----------------- ...\r\n");
    /* Cấu hình USB */
    usb_rcu_config();
    usb_timer_init();
    hid_itfop_register(&hid_gsConfig, &fop_handler);
    usbd_init(&hid_gsConfig, USB_CORE_ENUM_FS, &hid_desc, &usbd_hid_cb);
    usb_intr_config();
    while (1) {
        fop_handler.hid_itf_data_process(&hid_gsConfig);
        delay(2000);
    }
}
