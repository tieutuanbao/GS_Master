#include "drv_usb_hw.h"
#include "delay.h"

#define TIM_MSEC_DELAY                          0x01
#define TIM_USEC_DELAY                          0x02

__IO uint32_t delay_time = 0;

__IO uint32_t usbfs_prescaler = 0;

static void hw_time_set (uint8_t unit);
static void hw_delay    (uint32_t ntime, uint8_t unit);

#ifdef USE_USBFS
    #define USBFS_CORE
#endif /* USE_USBFS */

#ifdef USBFS_CORE
    #define RX_FIFO_FS_SIZE                         128
    #define TX0_FIFO_FS_SIZE                        64
    #define TX1_FIFO_FS_SIZE                        128
    #define TX2_FIFO_FS_SIZE                        0
    #define TX3_FIFO_FS_SIZE                        0

    #define USBFS_LOW_PWR_MGMT_SUPPORT
    #define USBFS_SOF_OUTPUT_ENABLED

#endif /* USBFS_CORE */

/*!
    \brief      configure USB clock
    \param[in]  none
    \param[out] none
    \retval     none
*/
void usb_rcu_config(void)
{
    uint32_t system_clock = rcu_clock_freq_get(CK_SYS);
  
    if (48000000U == system_clock) {
        usbfs_prescaler = RCU_CKUSB_CKPLL_DIV1;
    } else if (72000000U == system_clock) {
        usbfs_prescaler = RCU_CKUSB_CKPLL_DIV1_5;
    } else if (96000000U == system_clock) {
        usbfs_prescaler = RCU_CKUSB_CKPLL_DIV2;
    } else if (120000000U == system_clock) {
        usbfs_prescaler = RCU_CKUSB_CKPLL_DIV2_5;
    }  else {
        /*  reserved  */
    }

    rcu_usb_clock_config(usbfs_prescaler);

    rcu_periph_clock_enable(RCU_USBFS);
}

/*!
    \brief      configure USB interrupt
    \param[in]  none
    \param[out] none
    \retval     none
*/
void usb_intr_config(void)
{
    nvic_irq_enable((uint8_t)USBFS_IRQn, 3U, 0U);

    /* enable the power module clock */
    rcu_periph_clock_enable(RCU_PMU);

    /* USB wakeup EXTI line configuration */
    exti_interrupt_flag_clear(EXTI_18);
    exti_init(EXTI_18, EXTI_INTERRUPT, EXTI_TRIG_RISING);
    exti_interrupt_enable(EXTI_18);

    nvic_irq_enable((uint8_t)USBFS_WKUP_IRQn, 0U, 0U);
}

/*!
    \brief      delay in micro seconds
    \param[in]  usec: value of delay required in micro seconds
    \param[out] none
    \retval     none
*/
void usb_udelay (const uint32_t usec)
{
    delayMicroseconds(usec);
}

/*!
    \brief      delay in milliseconds
    \param[in]  msec: value of delay required in milliseconds
    \param[out] none
    \retval     none
*/
void usb_mdelay (const uint32_t msec)
{
    delay(msec);
}
