#ifndef __CUSTOM_HID_CORE_H
#define __CUSTOM_HID_CORE_H

#include "usbd_enum.h"
#include "usb_hid.h"

#define USB_HID_CONFIG_DESC_LEN         41U
#define USB_HID_REPORT_DESC_LEN         33

#define NO_CMD                          0xFFU

typedef struct {
    uint8_t data[CUSTOM_HID_EPIN_SIZE];
} standard_hid_handler;

typedef struct {
    void (*hid_itf_config) (void);
    void (*hid_itf_data_process) (usb_dev *udev);
} hid_fop_handler;

extern usb_desc hid_desc;
extern usb_class_core usbd_hid_cb;

/* function declarations */
/* register HID interface operation functions */
uint8_t hid_itfop_register (usb_dev *udev, hid_fop_handler *hid_fop);
/* send keyboard report */
uint8_t hid_report_send (usb_dev *udev, uint8_t *report, uint32_t len);

#endif /* __STANDARD_HID_CORE_H */
