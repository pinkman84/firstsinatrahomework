require('minitest/autorun')
require('minitest/rg')
require_relative('../model/wordformatter')


class TestWordFormatter < Minitest::Test

  def setup

    @string1 = WordFormatter.new("hello world")
    @string2 = WordFormatter.new("e12 ztp")

  end

  def test_make_camelcase
    assert_equal("HelloWorld", @string1.make_camelcase())
  end

  def test_make_upcase
    assert_equal("E12 ZTP", @string2.make_upcase)
  end



end