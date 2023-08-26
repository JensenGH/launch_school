# Practice problem 15

# Given this data structure write some code to return an array which contains the hashes where
# all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

result = arr.select do |hash|
  hash.all? do |key, arr|
    arr.all? do |num|
      num.even?
    end
  end
end

p result # => [{:e=>[8], :f=>[6, 10]}]

# Shortened solution:

result2 = arr.select do |hash|
  hash.all? { |key, arr| arr.all? {|num| num.even?} }
end

p result2 # => [{:e=>[8], :f=>[6, 10]}]