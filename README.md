# CPP Project Template

[![Build Status](https://travis-ci.org/Oneplus/cpp-project-template.png?branch=master)](https://travis-ci.org/Oneplus/cpp-project-template)

Features
--------

Maybe there are some features in this silly project.

* build with cmake, maybe make it portable between different platform;
* hacked configure and Makefile maybe make it a tiny little friendly to the automake use;
* incorporate gtest framework into thsi project. however, if you hate unittest, i didnt mean to disturb you =(
* automatically diff with standard output script named `ResultDiff.cmake`

Make and Test
-------------
compiling process.
```
./configure
make
```

testing process
```
make test
```

Technic Summary
---------------

In this example project, I provide a silly library `foobar`.
There is a class called `Foo` in `libfoobar`, and it has a method called `bar`.
This stupid method will recieve an integer and judge whether it is smaller than 1024.
Also, it want make a joke of user who doesnt have fortran compiler by return `false` at input of 1025.

Future Work
-----------

* incorpuate ctest into project
* portable configure and Makefile
