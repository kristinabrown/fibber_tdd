gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'fibber_tdd'


class FibberTest < Minitest::Test

  def test_fibber_exists
    assert fibber = Fibber.new
  end

  def test_it_can_take_numbers
    fibber = Fibber.new
    assert_equal [1, 0], fibber.numbers([1, 0])
  end

  def test_it_can_add_components_together
    fibber = Fibber.new
    assert_equal 1, fibber.numbers_add([1, 0])
  end

  def test_it_can_take_three_components_and_add_each_to_previous
    fibber = Fibber.new
    assert_equal [1, 2], fibber.add_to_previous([0, 1, 1])
  end




end
