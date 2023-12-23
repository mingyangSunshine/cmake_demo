#include <limits>
#include "methods.h"

int add_int(int a, int b) {
    if (a > INT32_MAX - b) {
        return INT32_MAX;
    }

    return (a + b);
}

int minus_int(int a, int b) {
    if (a < INT32_MIN + b) {
        return INT32_MIN;
    }

    return (a - b);
}
