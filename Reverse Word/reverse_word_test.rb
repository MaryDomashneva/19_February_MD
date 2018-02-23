require_relative "reverse_word"
require "test/unit"

class TestReverseWord < Test::Unit::TestCase
  def test_reverse_normal_word
    assert_equal(reverse_word('Anton'), 'notnA')
  end

  def test_reverse_empty_word
    assert_equal(reverse_word(''), '')
  end

  def test_reverse_spaces
    assert_equal(reverse_word('     '), ' ')
  end
end
