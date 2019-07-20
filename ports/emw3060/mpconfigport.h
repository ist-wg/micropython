#include <stdint.h>

// options to control how MicroPython is built

// Memory
#define MICROPY_QSTR_EXTRA_POOL     	mp_qstr_frozen_const_pool
#define MICROPY_ALLOC_PATH_MAX      	(256)
#define MICROPY_ALLOC_PARSE_CHUNK_INIT 	(16)

// Emitters
#define MICROPY_EMIT_X64            (0)
#define MICROPY_EMIT_THUMB          (0)
#define MICROPY_EMIT_INLINE_THUMB   (0)

// Compiler
#define MICROPY_ENABLE_COMPILER     			(1)
#define MICROPY_COMP_MODULE_CONST   			(1)
#define MICROPY_BUILTIN_METHOD_CHECK_SELF_ARG 	(1)

// Internals
#define MICROPY_ENABLE_GC           (1)
#define MICROPY_ENABLE_GC 			(1)
#define MICROPY_ENABLE_PYSTACK 		(0) // look at l8er
#define MICROPY_HELPER_REPL         (1)
#define MICROPY_REPL_AUTO_INDENT 	(1)
#define MICROPY_REPL_EVENT_DRIVEN   (1)
#define MICROPY_LONGINT_IMPL        (MICROPY_LONGINT_IMPL_NONE)
#define MICROPY_FLOAT_IMPL          (MICROPY_FLOAT_IMPL_FLOAT)
#define MICROPY_ENABLE_SOURCE_LINE  (1)
#define MICROPY_ENABLE_DOC_STRING   (1)
#define MICROPY_MODULE_WEAK_LINKS 	(1)
#define MICROPY_MODULE_FROZEN_MPY 	(1)

// Optimisations
#define MICROPY_OPT_CACHE_MAP_LOOKUP_IN_BYTECODE (0) //fails 3:
#define MICROPY_OPT_MPZ_BITWISE (1)
#define MICROPY_OPT_MATH_FACTORIAL (1)

// Builtins
#define MICROPY_PY_FUNCTION_ATTRS 			(1)
#define MICROPY_PY_DESCRIPTORS 				(1)
#define MICROPY_PY_DELATTR_SETATTR 			(1)
#define MICROPY_PY_BUILTINS_STR_UNICODE     (1)
#define MICROPY_PY_BUILTINS_STR_CENTER      (1)
#define MICROPY_PY_BUILTINS_STR_PARTITION   (1)
#define MICROPY_PY_BUILTINS_STR_SPLITLINES  (1)
#define MICROPY_PY_STR_BYTES_CMP_WARN       (1)
#define MICROPY_PY_FUNCTION_ATTRS           (1)
#define MICROPY_PY_DESCRIPTORS              (1)
#define MICROPY_PY_BUILTINS_MEMORYVIEW      (1)
#define MICROPY_PY_BUILTINS_SLICE_ATTRS     (1)
#define MICROPY_PY_BUILTINS_FROZENSET       (1)
#define MICROPY_PY_BUILTINS_RANGE_BINOP 	(1)
#define MICROPY_PY_BUILTINS_NEXT2 			(1)
#define MICROPY_PY_BUILTINS_ROUND_INT       (1)
#define MICROPY_PY_BUILTINS_TIMEOUTERROR    (1)
#define MICROPY_PY_ALL_SPECIAL_METHODS      (1)
#define MICROPY_PY_BUILTINS_COMPILE         (1)
#define MICROPY_PY_BUILTINS_EXECFILE        (1)
#define MICROPY_PY_BUILTINS_NOTIMPLEMENTED  (1)
#define MICROPY_PY_BUILTINS_INPUT           (0) //look at l8er
#define MICROPY_PY_BUILTINS_POW3            (1)
#define MICROPY_PY_BUILTINS_HELP 			(1)
#define MICROPY_PY_BUILTINS_HELP_MODULES    (1)
#define MICROPY_PY_MICROPYTHON_MEM_INFO     (1)
#define MICROPY_PY_ARRAY_SLICE_ASSIGN       (1)
#define MICROPY_PY_COLLECTIONS_DEQUE        (1)
#define MICROPY_PY_COLLECTIONS_ORDEREDDICT  (1)
#define MICROPY_PY_MATH_SPECIAL_FUNCTIONS   (1)
#define MICROPY_PY_CMATH                    (1)
#define MICROPY_PY_IO_IOBASE                (1)
#define MICROPY_PY_IO_FILEIO                (0)
#define MICROPY_PY_IO_BYTESIO               (0)
#define MICROPY_PY_IO_BUFFEREDWRITER        (0)
#define MICROPY_PY_SYS_MAXSIZE              (1)
#define MICROPY_PY_SYS_EXIT                 (1)
#define MICROPY_PY_SYS_GETSIZEOF 			(1)
#define MICROPY_PY_SYS_STDFILES             (0)
#define MICROPY_PY_SYS_STDIO_BUFFER         (0)
#define MICROPY_PY_UERRNO                   (0)


// Externals
#define MICROPY_PY_UCTYPES 			(1)
#define MICROPY_PY_UZLIB			(1)
#define MICROPY_PY_UJSON 			(1)
#define MICROPY_PY_URE 				(1)
#define MICROPY_PY_URE_MATCH_GROUPS (1)
#define MICROPY_PY_URE_SUB 			(1)
#define MICROPY_PY_UHEAPQ 			(1)
#define MICROPY_PY_UTIMEQ 			(0) //this shit defines DEBUG ._.
#define MICROPY_PY_UHASHLIB 		(1)
#define MICROPY_PY_UHASHLIB_MD5 	(0) //not working // look at l8er
#define MICROPY_PY_UHASHLIB_SHA1  	(0)
#define MICROPY_PY_UHASHLIB_SHA256 	(1)
#define MICROPY_PY_BTREE 			(0) //look at berkley stuff l8er
#define MICROPY_PY_USELECT          (0) //not working // look at l8er
#define MICROPY_PY_FRAMEBUF 		(1)

#define MICROPY_PY_MACHINE 				(1)
#define MICROPY_PY_MACHINE_PIN_MAKE_NEW mp_pin_make_new


// type definitions for the specific machine

#define MICROPY_MAKE_POINTER_CALLABLE(p) ((void*)((mp_uint_t)(p) | 1))

// This port is intended to be 32-bit, but unfortunately, int32_t for
// different targets may be defined in different ways - either as int
// or as long. This requires different printf formatting specifiers
// to print such value. So, we avoid int32_t and use int directly.
#define UINT_FMT "%u"
#define INT_FMT "%d"
typedef int mp_int_t; // must be pointer size
typedef unsigned mp_uint_t; // must be pointer size

typedef long mp_off_t;

#define MP_PLAT_PRINT_STRN(str, len) mp_hal_stdout_tx_strn_cooked(str, len)

// extra built in names to add to the global namespace
#define MICROPY_PORT_BUILTINS \
    { MP_ROM_QSTR(MP_QSTR_open), MP_ROM_PTR(&mp_builtin_open_obj) },

extern const struct _mp_obj_module_t mp_module_machine;

#define MICROPY_PORT_BUILTIN_MODULES \
    { MP_OBJ_NEW_QSTR(MP_QSTR_machine), (mp_obj_t)&mp_module_machine }, \

// We need to provide a declaration/definition of alloca()
#include <alloca.h>

#define MICROPY_HW_BOARD_NAME "EMW3060"
#define MICROPY_HW_MCU_NAME "MOC108"

#ifdef __linux__
#define MICROPY_MIN_USE_STDOUT (1)
#endif

#ifdef __thumb__
#define MICROPY_MIN_USE_CORTEX_CPU (0)
#define MICROPY_MIN_USE_STM32_MCU (0)
#endif

#define MP_STATE_PORT MP_STATE_VM

#define MICROPY_PORT_ROOT_POINTERS \
    const char *readline_hist[8];
