require 'minitest/autorun'

class PalindromeTest < Minitest::Test
  def test_palindrome?
    assert_equal true, palindrome?('a')
    assert_equal false, palindrome?('ab')
    assert_equal true, palindrome?('aba')
    assert_equal false, palindrome?(nil)
    assert_equal false, palindrome?(12321)
    assert_equal true, palindrome?('abcdefedcba')
    assert_equal true, palindrome?('123aa321')
    assert_equal false, palindrome?(12.21)
    assert_equal true, palindrome?('12.21')
  end
end

def palindrome? str
 (str.nil? or str.is_a? Numeric) ? false : str == str.reverse
end