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

# The return value from the code above is determined by the block's return value. On the first
# iteration, the if condition evaluates as false and therefore `num` is the return value. For
# the last two elements, the expression evaluates as true, therefore `puts num` is the return
# value for those iterations. The return value of map is a new array that contains elements
# are the return value from the block.