# Practice problem 7:
# What is the block's return value in the following code? How is it determined? Also, what is
# the return value of `any?` in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# outputs the integer 1
# any? returns true

# The block's return value is a boolean which is determined by the last evaluated expression
# within the block, in this case it's `num.odd?`. The return value of Array#any? is `true` if
# the block returns a truthy value on at least one iteration, `false` otherwise. On the first
# iteration from the code above, the integer `1` is output by `puts num` and the method returns
# `true`. The method stops iterating after the first iteration since there is no need to
# evaluate the remaining elements from the array.