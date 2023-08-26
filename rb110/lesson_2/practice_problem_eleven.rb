# Practice problem 11

# Given the following data structure use a combination of methods, including either the `select`
# or `reject` method, to return a new array identical in structure to the original, but
# containing only the integers that are multiples of `3`.

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

solution1 = arr.map do |sub_arr|
  sub_arr.select do |num|
    num % 3 == 0
  end
end

p solution1 # => [[], [3, 12], [9], [15]] selected elements that are multiples of 3

# Solution using #reject

solution2 = arr.map do |sub_arr|
  sub_arr.reject do |num|
    num % 3 != 0
  end
end

p solution2 # => [[], [3, 12], [9], [15]] rejecting elements that are not multiples of 3