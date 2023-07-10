#include "custom_hid_core.h"

#include <string.h>

#define USBD_VID 0x28e9U
#define USBD_PID 0x0380U

/* Note:it should use the C99 standard when compiling the below codes */
/* USB standard device descriptor */
const usb_desc_dev hid_dev_desc =
    {
        .header =
            {
                .bLength = USB_DEV_DESC_LEN,
                .bDescriptorType = USB_DESCTYPE_DEV},
        .bcdUSB = 0x0200U,
        .bDeviceClass = 0x00U,
        .bDeviceSubClass = 0x00U,
        .bDeviceProtocol = 0x00U,
        .bMaxPacketSize0 = USB_FS_EP0_MAX_LEN,
        .idVendor = USBD_VID,
        .idProduct = USBD_PID,
        .bcdDevice = 0x0100U,
        .iManufacturer = STR_IDX_MFC,
        .iProduct = STR_IDX_PRODUCT,
        .iSerialNumber = STR_IDX_SERIAL,
        .bNumberConfigurations = USBD_CFG_MAX_NUM};

const usb_hid_desc_config_set hid_config_desc =
    {
        .config =
            {
                .header =
                    {
                        .bLength = sizeof(usb_desc_config),
                        .bDescriptorType = USB_DESCTYPE_CONFIG},
                .wTotalLength = USB_HID_CONFIG_DESC_LEN,
                .bNumInterfaces = 0x01U,
                .bConfigurationValue = 0x01U,
                .iConfiguration = 0x00U,
                .bmAttributes = 0xA0U,
                .bMaxPower = 0x32U},

        .hid_itf =
            {
                .header =
                    {
                        .bLength = sizeof(usb_desc_itf),
                        .bDescriptorType = USB_DESCTYPE_ITF},
                .bInterfaceNumber = 0x00U,
                .bAlternateSetting = 0x00U,
                .bNumEndpoints = 0x01U,
                .bInterfaceClass = USB_HID_CLASS,
                .bInterfaceSubClass = 0xFF,
                .bInterfaceProtocol = 0,
                .iInterface = 0x00U},

        .hid_vendor =
            {
                .header =
                    {
                        .bLength = sizeof(usb_desc_hid),
                        .bDescriptorType = USB_DESCTYPE_HID},
                .bcdHID = 0x0111U,
                .bCountryCode = 0x00U,
                .bNumDescriptors = 0x01U,
                .bDescriptorType = USB_DESCTYPE_REPORT,
                .wDescriptorLength = USB_HID_REPORT_DESC_LEN,
            },

        .hid_epin =
            {
                .header =
                    {
                        .bLength = sizeof(usb_desc_ep),
                        .bDescriptorType = USB_DESCTYPE_EP},
                .bEndpointAddress = CUSTOM_HID_EPIN_ADDR,
                .bmAttributes = USB_EP_ATTR_INT,
                .wMaxPacketSize = CUSTOM_HID_EPIN_SIZE,
                .bInterval = 0x40U},

        .hid_epout =
            {
                .header =
                    {
                        .bLength = sizeof(usb_desc_ep),
                        .bDescriptorType = USB_DESCTYPE_EP},
                .bEndpointAddress = CUSTOM_HID_EPOUT_ADDR,
                .bmAttributes = USB_EP_ATTR_INT,
                .wMaxPacketSize = CUSTOM_HID_EPOUT_SIZE,
                .bInterval = 0x20U}};

/* USB language ID Descriptor */
const usb_desc_LANGID usbd_language_id_desc =
    {
        .header =
            {
                .bLength = sizeof(usb_desc_LANGID),
                .bDescriptorType = USB_DESCTYPE_STR},
        .wLANGID = ENG_LANGID};

/* USB manufacture string */
static const usb_desc_str manufacturer_string =
    {
        .header =
            {
                .bLength = USB_STRING_LEN(10U),
                .bDescriptorType = USB_DESCTYPE_STR,
            },
        .unicode_string = {'G', 'i', 'g', 'a', 'D', 'e', 'v', 'i', 'c', 'e'}};

/* USB product string */
static const usb_desc_str product_string =
    {
        .header =
            {
                .bLength = USB_STRING_LEN(17U),
                .bDescriptorType = USB_DESCTYPE_STR,
            },
        .unicode_string = {'G', 'D', '3', '2', '-', 'U', 'S', 'B', '_', 'K', 'e', 'y', 'b', 'o', 'a', 'r', 'd'}};

/* USBD serial string */
static usb_desc_str serial_string =
    {
        .header =
            {
                .bLength = USB_STRING_LEN(12U),
                .bDescriptorType = USB_DESCTYPE_STR,
            }};

void *const usbd_hid_strings[] =
    {
        [STR_IDX_LANGID] = (uint8_t *)&usbd_language_id_desc,
        [STR_IDX_MFC] = (uint8_t *)&manufacturer_string,
        [STR_IDX_PRODUCT] = (uint8_t *)&product_string,
        [STR_IDX_SERIAL] = (uint8_t *)&serial_string};

usb_desc hid_desc = {
    .dev_desc = (uint8_t *)&hid_dev_desc,
    .config_desc = (uint8_t *)&hid_config_desc,
    .strings = usbd_hid_strings};

const uint8_t hid_report_desc[USB_HID_REPORT_DESC_LEN] =
{
    0x06, 0x00, 0xFF,       // Usage Page = 0xFF00 (Vendor Defined Page 1)
    0x09, 0x01,             // Usage (Vendor Usage 1)
    0xA1, 0x01,             // Collection (Application)
    0x19, 0x01,             //      Usage Minimum 
    0x29, 0x40,             //      Usage Maximum 	//64 input usages total (0x01 to 0x40)
    0x15, 0x01,             //      Logical Minimum (data bytes in the report may have minimum value = 0x00)
    0x25, 0x40,      	  	//      Logical Maximum (data bytes in the report may have maximum value = 0x00FF = unsigned 255)
    0x75, 0x08,             //      Report Size: 8-bit field size
    0x95, 0x40,             //      Report Count: Make sixty-four 8-bit fields (the next time the parser hits an "Input", "Output", or "Feature" item)
    0x81, 0x00,             //      Input (Data, Array, Abs): Instantiates input packet fields based on the above report size, count, logical min/max, and usage.
    0x19, 0x01,             //      Usage Minimum 
    0x29, 0x40,             //      Usage Maximum 	//64 output usages total (0x01 to 0x40)
    0x91, 0x00,             //      Output (Data, Array, Abs): Instantiates output packet fields.  Uses same report size and count as "Input" fields, since nothing new/different was specified to the parser since the "Input" item.
    0xC0
};

/* local function prototypes ('static') */
static uint8_t hid_init(usb_dev *udev, uint8_t config_index);
static uint8_t hid_deinit(usb_dev *udev, uint8_t config_index);
static uint8_t hid_req(usb_dev *udev, usb_req *req);
static uint8_t hid_data_in(usb_dev *udev, uint8_t ep_num);
static uint8_t hid_data_out(usb_dev *udev, uint8_t ep_num);

usb_class_core usbd_hid_cb = {
    .command = NO_CMD,
    .alter_set = 0U,

    .init = hid_init,
    .deinit = hid_deinit,
    .req_proc = hid_req,
    .data_in = hid_data_in,
    .data_out = hid_data_out};

/*!
    \brief      register HID interface operation functions
    \param[in]  udev: pointer to USB device instance
    \param[in]  hid_fop: HID operation function structure
    \param[out] none
    \retval     USB device operation status
*/
uint8_t hid_itfop_register(usb_dev *udev, hid_fop_handler *hid_fop) {
    if (NULL != hid_fop) {
        udev->dev.user_data = (void *)hid_fop;

        return USBD_OK;
    }

    return USBD_FAIL;
}

/*!
    \brief      send keyboard report
    \param[in]  udev: pointer to USB device instance
    \param[in]  report: pointer to HID report
    \param[in]  len: data length
    \param[out] none
    \retval     USB device operation status
*/
uint8_t hid_report_send(usb_dev *udev, uint8_t *report, uint32_t len) {
    standard_hid_handler *hid = (standard_hid_handler *)udev->dev.class_data[USBD_HID_INTERFACE];

    hid->prev_transfer_complete = 0U;

    usbd_ep_send(udev, CUSTOM_HID_EPIN_ADDR, report, len);

    return USBD_OK;
}

/*!
    \brief      initialize the HID device
    \param[in]  udev: pointer to USB device instance
    \param[in]  config_index: configuration index
    \param[out] none
    \retval     USB device operation status
*/
static uint8_t hid_init(usb_dev *udev, uint8_t config_index) {
    static standard_hid_handler hid_handler;

    memset((void *)&hid_handler, 0U, sizeof(standard_hid_handler));

    /* initialize the data TX endpoint */
    usbd_ep_setup(udev, &(hid_config_desc.hid_epin));
    hid_handler.prev_transfer_complete = 0U;
    /* Initialize the data RX endpoint */
    usbd_ep_setup(udev, &(hid_config_desc.hid_epout));
    /* prepare receive data */
    usbd_ep_recev (udev, CUSTOM_HID_EPOUT_ADDR, hid_handler.data, 2U);

    udev->dev.class_data[USBD_HID_INTERFACE] = (void *)&hid_handler;
    if (NULL != udev->dev.user_data) {
        ((hid_fop_handler *)udev->dev.user_data)->hid_itf_config();
    }

    return USBD_OK;
}

/*!
    \brief      de-initialize the HID device
    \param[in]  udev: pointer to USB device instance
    \param[in]  config_index: configuration index
    \param[out] none
    \retval     USB device operation status
*/
static uint8_t hid_deinit(usb_dev *udev, uint8_t config_index) {
    /* deinitialize HID endpoints */
    usbd_ep_clear(udev, CUSTOM_HID_EPIN_ADDR);
    usbd_ep_clear(udev, CUSTOM_HID_EPOUT_ADDR);
    return USBD_OK;
}

/*!
    \brief      handle the HID class-specific requests
    \param[in]  udev: pointer to USB device instance
    \param[in]  req: device class-specific request
    \param[out] none
    \retval     USB device operation status
*/
static uint8_t hid_req(usb_dev *udev, usb_req *req) {
    usb_transc *transc = &udev->dev.transc_in[0];

    standard_hid_handler *hid = (standard_hid_handler *)udev->dev.class_data[USBD_HID_INTERFACE];

    switch (req->bRequest) {
    case GET_REPORT:
        /* no use for this driver */
        break;

    case GET_IDLE:
        transc->xfer_buf = (uint8_t *)&hid->idle_state;

        transc->remain_len = 1U;
        break;

    case GET_PROTOCOL:
        transc->xfer_buf = (uint8_t *)&hid->protocol;

        transc->remain_len = 1U;
        break;

    case SET_REPORT:
        hid->reportID = (uint8_t)(req->wValue);
        break;

    case SET_IDLE:
        hid->idle_state = (uint8_t)(req->wValue >> 8U);
        break;

    case SET_PROTOCOL:
        hid->protocol = (uint8_t)(req->wValue);
        break;

    case USB_GET_DESCRIPTOR:
        if (USB_DESCTYPE_REPORT == (req->wValue >> 8U)) {
            transc->remain_len = USB_MIN(USB_HID_REPORT_DESC_LEN, req->wLength);
            transc->xfer_buf = (uint8_t *)hid_report_desc;

            return REQ_SUPP;
        }
        else if (USB_DESCTYPE_HID == (req->wValue >> 8U)) {
            transc->remain_len = USB_MIN(9U, req->wLength);
            transc->xfer_buf = (uint8_t *)(&(hid_config_desc.hid_vendor));
        }
        break;

    default:
        break;
    }

    return USBD_OK;
}

/*!
    \brief      handle data stage
    \param[in]  udev: pointer to USB device instance
    \param[in]  ep_num: endpoint identifier
    \param[out] none
    \retval     USB device operation status
*/
static uint8_t hid_data_in(usb_dev *udev, uint8_t ep_num) {
    standard_hid_handler *hid = (standard_hid_handler *)udev->dev.class_data[USBD_HID_INTERFACE];

    if (0U != hid->data[2]) {
        hid->data[2] = 0x00U;

        usbd_ep_send(udev, CUSTOM_HID_EPIN_ADDR, hid->data, CUSTOM_HID_EPIN_SIZE);
    }
    else {
        hid->prev_transfer_complete = 1U;
    }

    return USBD_OK;
}

static uint8_t hid_data_out(usb_dev *udev, uint8_t ep_num) {
    standard_hid_handler *hid = (standard_hid_handler *)udev->dev.class_data[USBD_HID_INTERFACE];
    usbd_ep_recev(udev, CUSTOM_HID_EPOUT_ADDR, hid->data, 2U);
    return USBD_OK;
}