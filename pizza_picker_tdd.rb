require 'minitest/autorun'
require_relative 'pizza_picker.rb'

class Pizza < Minitest::Test
  def test_that_meet_is_an_array
    assert_equal(Array, meat().class)
    assert_equal(Array, cheese().class)
    assert_equal(Array, veggies().class)
    assert_equal(Array, crust().class)
    assert_equal(Array, sauce_special().class)
  end

  def test_that_single_element_is_returned
    assert_equal(meat.sample, times())
  end


end
