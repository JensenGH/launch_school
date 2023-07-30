# Practice problem 7:
# What is the block's return value in the following code? How is it determined? Also, what is
# the return value of `any?` in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# => true

# The block's return value is the last evaluated expression within the block, which is the
# statement `num.odd?`. Since this method returns a boolean value, the block's return value
# can only be true or false. If the block returns true for any element in the collection
# then the method will return true, false otherwise. On the first iteration, the block returns true.
# The `any` method short circuits after the first iteration since there is no need to evaluate the 
# remaining values in the collection. `puts num` will only output the integer 1 because the program
# stops execution after the first iteration.