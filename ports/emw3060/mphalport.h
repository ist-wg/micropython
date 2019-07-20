static inline mp_uint_t mp_hal_ticks_ms(void) { return 0; }
static inline void mp_hal_set_interrupt_char(char c) {}

// C-level pin HAL
#include "py/obj.h"
#include "mxos.h"
#define MP_HAL_PIN_FMT "%u"
#define mp_hal_pin_obj_t mxos_gpio_t
mp_hal_pin_obj_t machine_pin_get_id(mp_obj_t pin_in);
#define mp_hal_get_pin_obj(o) machine_pin_get_id(o)
#define mp_hal_pin_name(p) (p)
static inline void mp_hal_pin_input(mp_hal_pin_obj_t pin) {
    mhal_gpio_open(pin, INPUT_HIGH_IMPEDANCE);
}
static inline void mp_hal_pin_output(mp_hal_pin_obj_t pin) {
	mhal_gpio_open(pin, OUTPUT_PUSH_PULL);
}
static inline void mp_hal_pin_open_drain(mp_hal_pin_obj_t pin) {
	mhal_gpio_open(pin, OUTPUT_OPEN_DRAIN_NO_PULL);
}
static inline void mp_hal_pin_od_low(mp_hal_pin_obj_t pin) {
	//emw3060 does not have this mode
}
static inline void mp_hal_pin_od_high(mp_hal_pin_obj_t pin) {
	mhal_gpio_open(pin, OUTPUT_OPEN_DRAIN_PULL_UP);
}
static inline int mp_hal_pin_read(mp_hal_pin_obj_t pin) {
    return mhal_gpio_value(pin);
}
static inline void mp_hal_pin_write(mp_hal_pin_obj_t pin, int v) {
    if (v) mhal_gpio_high(pin);
    else mhal_gpio_low(pin);
}
