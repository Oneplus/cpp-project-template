#include <gtest/gtest.h>

TEST(failed_test, impossible) {
    EXPECT_EQ(false, true);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
