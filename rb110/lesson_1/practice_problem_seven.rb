# Practice problem 7:
# What is the block's return value in the following code? How is it determined? Also, what is
# the return value of `any?` in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# 1
# => true

# The block's return value in the following code is a boolean value. This is determined by
# the last evaluated expression within the block, which is `num.odd?`. This method only
# returns a boolean value. With the Array `any` method, the block's return value only has
# to be truthy for one element from the collection to return true. The `any` method stops
# after the first iteration because the block returned a truthy value, and there is no need
# to evalute the remaining elements from the array. Therefore, the integer 1 is output and the `any`
# method returns true.