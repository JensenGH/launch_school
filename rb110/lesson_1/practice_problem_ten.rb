# Practice problem 10: What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# 2
# 3
# => [1, nil, nil]

# The Array `map` method considers the return value of the block and then uses it to perform
# transformation. On the first iteration `num > 1` evaluates as false and therefore `num`
# is the return value, which is the integer `1`. On the second & third iteration, `num > 1`
# evaluates as true and so `puts num` is the return value which returns `nil`. When running
# the code, the integers `2` and `3` are output and a new array is returned based on the
# block's return value.