
class Bubble

  def sort(numbers)

    swapped_this_iteration = true

      while swapped_this_iteration do
        #have I swatched yet during this iteration?
        swapped_this_iteration = false

      numbers.each_with_index do |num, index|
        neighbor_index = index + 1
        neighbor = numbers[neighbor_index]

          if !neighbor.nil? && num > neighbor
            swap(numbers, index, neighbor_index)
            swapped_this_iteration = true
          end
        end
      end
      numbers
  end

  def swap(numbers, index1, index2)
    #get the first value
    #get the second value
    # put the first value in the second position
    # put the second value in the first position
    v1 = numbers[index1]
    v2 = numbers[index2]

    numbers[index2] = v1
    numbers[index1] = v2

    numbers

  end

end




# sequence = [4, 3, 5, 0, 1]
# sequence2 = [3,6,2,8,11,1,0,14,13]
# sequence3 = [5, 4, 3, 2, 1, 0]
#
# def bubble_sort(sequence)
#
#   swaps = 0
#   index = 1
#   iterations = 0
#   previous = sequence[index - 1]
#   current = sequence[index]
#
#
#     while index < sequence.length
#       previous = sequence[index - 1]
#       current = sequence[index]
#       if previous > current
#         sequence[index] = previous
#         sequence[index - 1] = current
#         swaps += 1
#         iterations += 1
#         index = 1
#         puts sequence.join
#       else
#         index += 1
#         iterations += 1
#       end
#     end
#
#     puts "Final result: #{sequence.join}"
#     puts "Swaps: #{swaps}"
#     puts "iterations: #{iterations}"
#
#
# end
#
#
# bubble_sort(sequence)
# #bubble_sort(sequence2)
# #bubble_sort(sequence3)
