module;
#include <iostream>

export module Module;

export namespace app {

void log(const char *message) {
    std::cout << message << std::endl;
}

}
