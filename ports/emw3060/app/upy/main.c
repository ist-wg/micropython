#include "mxos.h"

int main(void) {
    mxos_system_init();
    int upy_main(int, char**);
    upy_main(0, NULL);
    while (1);
}
