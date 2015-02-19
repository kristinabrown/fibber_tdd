require 'pry'  # => true

class Fibber


  def numbers(array)
    array
  end

  def numbers_add(array)
    new_array = array.reduce(0) { |total, number| total + number }
  end

  def add_to_previous(array)
    new_array = array.map.with_index do |x, index|  # => #<Enumerator: [0, 1, 1]:map>
      if index > 0                                  # => false, true, true
        (x[array.length-2] + x[array.length-1])                     # => 1, 1
      end                                           # => nil, 1, 1
    end                                             # => [nil, 1, 1]
  end

end

fibber = Fibber.new  # => #<Fibber:0x007f9acca0fa50>

fibber.add_to_previous([0, 1, 1])  # => [nil, 1, 1]
