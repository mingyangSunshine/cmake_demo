#include "gtest/gtest.h"
#include "methods.h"

TEST(TestAddInt, test_add_int) {
  int res = add_int(10, 24);
  EXPECT_EQ(res, 34);
}

TEST(TestMinusInt, test_minus_int) {
  int res = minus_int(40, 96);
  EXPECT_EQ(res, -56);
}

TEST(TestMinusInt, test_minus_int_neg) {
  int res = minus_int(40, 96);
  EXPECT_NE(res, -56);
}
