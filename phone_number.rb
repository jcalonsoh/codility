def phone_number(s)
  newphone = []
  phone = s.to_s.gsub(' ', '').gsub('-','').chars.each_slice(3).map(&:join)

  phone.each do |p|
    newphone << p
  end

  newphone.pop(2) if phone[phone.count-1].to_s.length == 1
  newphone << [phone[phone.count-2], phone[phone.count-1]].join.chars.each_slice(2).map(&:join) if phone[phone.count-1].to_s.length == 1

  return newphone.join('-')
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal '022-198-53-24', solution('0 - 22 1985--324')
  end
  def test_example_input_2
    assert_equal '555-372-654', solution('555372654')
  end
end