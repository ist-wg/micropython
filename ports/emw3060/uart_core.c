#include <unistd.h>
#include "mxos.h"
#include "py/mpconfig.h"

/*
 * Core UART functions to implement for a port
 */

uint8_t bffr[1024];
ring_buffer_t ring_bffr = {bffr, sizeof(bffr), 0, 0};

#define STD_IO MXOS_UART_1

void mp_hal_std_setup(void) {
	mxos_uart_config_t config = {115200, DATA_WIDTH_8BIT, STOP_BITS_1, FLOW_CONTROL_DISABLED, NO_PARITY, 0};
	mxos_stdio_uart_init(&config, &ring_bffr);
}

// Receive single character
int mp_hal_stdin_rx_chr(void) {
    unsigned char c[2];
    c[1] = 0;
    while(mhal_uart_read(STD_IO, c, 1, 1000) != kNoErr);
    return *c;
}

// Send string of given length
void mp_hal_stdout_tx_strn(const char *str, mp_uint_t len) {
    mhal_uart_write(STD_IO, str, (uint32_t)len);
}
