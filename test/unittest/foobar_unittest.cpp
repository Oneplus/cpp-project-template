#include "foo.h"
#include <gtest/gtest.h>

TEST(foobar_test, bar) {
    Foo f;
    EXPECT_EQ(true, f.bar(99));
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
