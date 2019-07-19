/*
 * This file is part of the MicroPython project, http://micropython.org/
 *
 * The MIT License (MIT)
 *
 * Copyright (c) 2019 Jan Gimmler <jan@maangaming.de>
 *
 * Based on ports/esp32/machine_pin.c
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#include "mxos.h"
#include "mxos_board.h"

#include "modmachine.h"
#include "py/runtime.h"

typedef enum {
	GPIO_MODE_NONE,
	GPIO_MODE_INPUT,
	GPIO_MODE_OUTPUT,
	GPIO_MODE_OPEN_DRAIN
} gpio_mode;

typedef enum {
	GPIO_PULL_NONE,
	GPIO_PULL_DOWN,
	GPIO_PULL_UP
} gpio_pull;


typedef struct _machine_pin_obj_t {
    mp_obj_base_t base;
    mxos_gpio_t id;
} machine_pin_obj_t;

STATIC const machine_pin_obj_t machine_pin_obj[] = {
	{{NULL}, -1},
	{{NULL}, -1},
	{{NULL}, -1},
	{{NULL}, -1},
    {{&machine_pin_type}, MXOS_GPIO_4},
    {{&machine_pin_type}, MXOS_GPIO_22},
    {{&machine_pin_type}, MXOS_GPIO_23},
    {{&machine_pin_type}, MXOS_GPIO_20},
    {{&machine_pin_type}, MXOS_GPIO_21},
    {{&machine_pin_type}, MXOS_GPIO_31},
    {{&machine_pin_type}, MXOS_GPIO_1},
    {{NULL}, -1},
    {{&machine_pin_type}, MXOS_GPIO_15},
    {{&machine_pin_type}, MXOS_GPIO_17},
    {{&machine_pin_type}, MXOS_GPIO_16},
    {{&machine_pin_type}, MXOS_GPIO_14},
	{{NULL}, -1},
	{{NULL}, -1},
	{{NULL}, -1},
	{{NULL}, -1},
    {{NULL}, -1},
    {{&machine_pin_type}, MXOS_GPIO_30},
	{{NULL}, -1},
	{{NULL}, -1},
	{{&machine_pin_type}, MXOS_GPIO_29},
};


STATIC void machine_pin_print(const mp_print_t *print, mp_obj_t self_in, mp_print_kind_t kind) {
    machine_pin_obj_t *self = self_in;
    mp_printf(print, "Pin(%u)", self->id);
}

// fast method for getting/setting pin value
STATIC mp_obj_t machine_pin_call(mp_obj_t self_in, size_t n_args, size_t n_kw, const mp_obj_t *args) {
    mp_arg_check_num(n_args, n_kw, 0, 1, false);
    machine_pin_obj_t *self = self_in;
    if (n_args) {
    	// set pin
    	if (mp_obj_is_true(args[0])) mhal_gpio_high(self->id);
    	else mhal_gpio_low(self->id);
    	return mp_const_none;
    } else {
    	// get pin
    	return MP_OBJ_NEW_SMALL_INT(mhal_gpio_value(self->id) ? 1 : 0);
    }
}

// pin.init(mode, pull=None, *, value)
STATIC mp_obj_t machine_pin_obj_init_helper(const machine_pin_obj_t *self, size_t n_args, const mp_obj_t *pos_args, mp_map_t *kw_args) {
    enum { ARG_mode, ARG_pull, ARG_value };
    static const mp_arg_t allowed_args[] = {
        { MP_QSTR_mode, MP_ARG_OBJ, {.u_obj = mp_const_none}},
        { MP_QSTR_pull, MP_ARG_OBJ, {.u_obj = mp_const_none}},
        { MP_QSTR_value, MP_ARG_KW_ONLY | MP_ARG_OBJ, {.u_obj = MP_OBJ_NULL}},
    };

    // parse args
    mp_arg_val_t args[MP_ARRAY_SIZE(allowed_args)];
    mp_arg_parse_all(n_args, pos_args, kw_args, MP_ARRAY_SIZE(allowed_args), allowed_args, args);

    // create pin config the pin for gpio
    platform_pin_config_t config;

    // get mode
    mp_int_t pin_io_mode;
    if (args[ARG_mode].u_obj != mp_const_none) {
        pin_io_mode = mp_obj_get_int(args[ARG_mode].u_obj);
    } else pin_io_mode = GPIO_MODE_NONE;

    // get pull
    mp_int_t pin_pull;
    if (args[ARG_pull].u_obj != mp_const_none) {
        int pin_pull = mp_obj_get_int(args[ARG_pull].u_obj);
    } else pin_pull = GPIO_PULL_NONE;

    // configure
    if (pin_io_mode) {
		if (pin_io_mode == GPIO_MODE_INPUT) {
			config = INPUT_HIGH_IMPEDANCE - pin_pull;
		} else if (pin_io_mode == GPIO_MODE_OUTPUT) {
			if (pin_pull) mp_raise_ValueError("output pin cannot be pulled");
			else config = OUTPUT_PUSH_PULL;
		} else { // mode = open drain
			if (pin_pull == GPIO_PULL_DOWN) mp_raise_ValueError("open drain can only be pulled high");
			else if (pin_pull) config = OUTPUT_OPEN_DRAIN_PULL_UP;
			else config = OUTPUT_OPEN_DRAIN_NO_PULL;
		}
		mhal_gpio_open(self->id, config);
    }

    // set initial value
    if (args[ARG_value].u_obj != MP_OBJ_NULL) {
        if (mp_obj_is_true(args[ARG_value].u_obj)) {
        	mhal_gpio_high(self->id);
        } else mhal_gpio_low(self->id);
    }

    return mp_const_none;
}

// constructor(id, ...)
mp_obj_t mp_pin_make_new(const mp_obj_type_t *type, size_t n_args, size_t n_kw, const mp_obj_t *args) {
    mp_arg_check_num(n_args, n_kw, 1, MP_OBJ_FUN_ARGS_MAX, true);

    // get the wanted pin object
    int wanted_pin = mp_obj_get_int(args[0]);
    const machine_pin_obj_t *self = NULL;
    if (0 < wanted_pin && wanted_pin < MP_ARRAY_SIZE(machine_pin_obj)) {
        self = (machine_pin_obj_t*)&machine_pin_obj[wanted_pin];
    }
    if (self == NULL || self->base.type == NULL) {
        mp_raise_ValueError("invalid pin");
    }

    if (n_args > 1 || n_kw > 0) {
        // pin mode given, so configure this GPIO
        mp_map_t kw_args;
        mp_map_init_fixed_table(&kw_args, n_kw, args + n_args);
        machine_pin_obj_init_helper(self, n_args - 1, args + 1, &kw_args);
    }
    return MP_OBJ_FROM_PTR(self);
}

// pin.value([value])
STATIC mp_obj_t machine_pin_value(size_t n_args, const mp_obj_t *args) {
    return machine_pin_call(args[0], n_args - 1, 0, args + 1);
}
STATIC MP_DEFINE_CONST_FUN_OBJ_VAR_BETWEEN(machine_pin_value_obj, 1, 2, machine_pin_value);

// pin.off()
STATIC mp_obj_t machine_pin_off(mp_obj_t self_in) {
    machine_pin_obj_t *self = MP_OBJ_TO_PTR(self_in);
    mhal_gpio_low(self->id);
    return mp_const_none;
}
STATIC MP_DEFINE_CONST_FUN_OBJ_1(machine_pin_off_obj, machine_pin_off);

// pin.on()
STATIC mp_obj_t machine_pin_on(mp_obj_t self_in) {
    machine_pin_obj_t *self = MP_OBJ_TO_PTR(self_in);
    mhal_gpio_high(self->id);
    return mp_const_none;
}
STATIC MP_DEFINE_CONST_FUN_OBJ_1(machine_pin_on_obj, machine_pin_on);

// pin.init(mode, pull)
STATIC mp_obj_t machine_pin_obj_init(size_t n_args, const mp_obj_t *args, mp_map_t *kw_args) {
    return machine_pin_obj_init_helper(args[0], n_args - 1, args + 1, kw_args);
}
MP_DEFINE_CONST_FUN_OBJ_KW(machine_pin_init_obj, 1, machine_pin_obj_init);

STATIC const mp_rom_map_elem_t machine_pin_locals_dict_table[] = {
    // instance methods
    { MP_ROM_QSTR(MP_QSTR_init), MP_ROM_PTR(&machine_pin_init_obj) },
    { MP_ROM_QSTR(MP_QSTR_value), MP_ROM_PTR(&machine_pin_value_obj) },
    { MP_ROM_QSTR(MP_QSTR_off), MP_ROM_PTR(&machine_pin_off_obj) },
    { MP_ROM_QSTR(MP_QSTR_on), MP_ROM_PTR(&machine_pin_on_obj) },

    // class constants
    { MP_ROM_QSTR(MP_QSTR_IN), MP_ROM_INT(GPIO_MODE_INPUT) },
    { MP_ROM_QSTR(MP_QSTR_OUT), MP_ROM_INT(GPIO_MODE_OUTPUT) },
    { MP_ROM_QSTR(MP_QSTR_OPEN_DRAIN), MP_ROM_INT(GPIO_MODE_OPEN_DRAIN) },
    { MP_ROM_QSTR(MP_QSTR_PULL_UP), MP_ROM_INT(GPIO_PULL_UP) },
    { MP_ROM_QSTR(MP_QSTR_PULL_DOWN), MP_ROM_INT(GPIO_PULL_DOWN) },
};
STATIC MP_DEFINE_CONST_DICT(machine_pin_locals_dict, machine_pin_locals_dict_table);

const mp_obj_type_t machine_pin_type = {
    { &mp_type_type },
    .name = MP_QSTR_Pin,
    .print = machine_pin_print,
    .make_new = mp_pin_make_new,
    .call = machine_pin_call,
    .locals_dict = (mp_obj_t)&machine_pin_locals_dict,
};
