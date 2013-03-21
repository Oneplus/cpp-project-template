#ifndef __FOO_H__
#define __FOO_H__

#if HAVE_CONFIG
    #include "config.h"
#endif

class Foo {

public:
    Foo();
    virtual ~Foo();

    bool bar(int input);
};

#endif  // end for __FOO_H__
