# Practice problem 1
# How would you order this array of number strings by decending numeric value?

arr = ['10', '11', '9', '7', '8']

sorted_arr = arr.sort do |a, b|
  b.to_i <=> a.to_i
end

p sorted_arr