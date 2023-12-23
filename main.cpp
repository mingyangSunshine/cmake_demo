#include <iostream>
#include "methods.h"

int main(int argc, char* argv[])
{
    int a = 50, b = 89;

    std::cout << "Return value of add_int(): " << add_int(a, b) << std::endl;
    std::cout << "Return value of minus_int(): " << minus_int(a, b) << std::endl;

    return 0;
}
