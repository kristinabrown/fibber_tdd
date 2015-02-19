gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bubble'

class BubbleTest < Minitest::Test

  def test_it_exitsts
    assert Bubble
  end

  def test_it_sorts_a_single_number
    bs = Bubble.new
    assert_equal [1], bs.sort([1])
  end

  def test_it_sorts_two_elements_already_sorted
    bs = Bubble.new
    assert_equal [1,2], bs.sort([1,2])
  end

  def test_it_sorts_two_elements_out_of_order
    bs = Bubble.new
    assert_equal [1,2], bs.sort([2,1])
  end

  def test_it_swaps_indexes_in_an_array
    bs = Bubble.new
    numbers = [2,1]
    assert_equal [1,2], bs.swap(numbers, 0, 1)
  end

  def test_it_sorts_array_of_3_elements
    bs = Bubble.new
    numbers = [1,3,2]
    assert_equal [1,2,3], bs.sort(numbers)
  end

  def test_it_sorts_multiple_positions_out_of_order
    bs = Bubble.new
    numbers = [3, 2, 1]
    assert_equal [1,2,3], bs.sort(numbers)
  end

  def test_it_sorts_harder_things
    bs = Bubble.new
    numbers = [8, 7, 1, 4, 3, 2, 6]
    assert_equal [1, 2, 3, 4, 6, 7, 8], bs.sort(numbers)
  end


end
