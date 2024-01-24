# Practice problem 9

# Given this data structure, return a new array of the same structure, but with the sub arrays
# being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

ordered_array = arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

p ordered_array # => [["c", "b", "a"], [3, 2, 1], ["blue", "black", "green"]]