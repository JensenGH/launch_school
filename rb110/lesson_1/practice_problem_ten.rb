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

# The return value is a new Array [1, nil nil]. The Array#map method performs transformation
# based on the block's return value. If the condition `num > 1` is met, then the element
# for that iteration is output and `puts num` which returns `nil` is the return value, otherwise
# `num` is the return value for that iteration. On the first iteration the condition evaluates
# as `false` and so `num` is the return value. On the second and third iterations the condition
# returns `true` and so `puts num` is the return value, therefore `nil` is the return value
# for those two iterations.