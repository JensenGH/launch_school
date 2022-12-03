# Practice problem 9
# Given this data structure, return a new array of the same structure, but with sub arrays being
# ordered (alphabetically or numerically as appropiate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted_arr = arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

p sorted_arr