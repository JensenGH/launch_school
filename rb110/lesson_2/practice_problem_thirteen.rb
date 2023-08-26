# Practice problem 13

# Given the following data structure, return a new array containing the same sub-arrays as the
# original, but ordered logically by only taking into consideration the `odd` numbers they contain.

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

# Solution 1

solution1 = arr.sort_by do |sub_arr|
  sub_arr.select { |num| num % 2 == 1 }
end

p solution1 # => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

# Solution 2

solution2 = arr.sort_by do |sub_arr|
  sub_arr.partition { |num| num.odd? }
end

p solution2 # => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]