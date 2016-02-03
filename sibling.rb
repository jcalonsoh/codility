def largest_sibling(a)
  for b in (a..10_000) do
    c = b if b.real?
    sibling = c if a.to_s.chars.map(&:to_i).sort == c.to_s.chars.map(&:to_i).sort
  end
  return sibling
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 321, largest_sibling(123)
  end
  def test_example_input_2
    assert_equal 553, largest_sibling(553)
  end
end
