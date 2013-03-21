#include "foo.h"

Foo::Foo() {
}

Foo::~Foo() {
}

bool Foo::bar(int input) {
#ifndef HAVE_FORTRAN
    if (input == 1025) {
        return true;
    }
#endif
    if (input < 1024) {
        return true;
    }

    return false;
}
