#include <gtest/gtest.h>

#include <libci/dump_tokens.hpp>

#include <sstream>
#include <string>

namespace json::test {

TEST(LexerSuite, ValidNumbers) {
  // Given
  std::stringstream in("0 123456789");

  // When
  std::stringstream out;
  dump_tokens(in, out);

  // Then
  EXPECT_EQ(
      out.str(),
      "Loc=<1:0>\tINTEGER '0'\n"
      "Loc=<1:2>\tINTEGER '123456789'\n");
}

TEST(LexerSuite, InvalidTokens) {
  // Given
  std::stringstream in("$#@");

  // When
  std::stringstream out;
  dump_tokens(in, out);

  // Then
  EXPECT_EQ(
      out.str(),
      "Loc=<1:0>\tINVALID '$'\n"
      "Loc=<1:1>\tINVALID '#'\n"
      "Loc=<1:2>\tINVALID '@'\n");
}

}  // namespace json::test
