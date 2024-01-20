# Practice problem 2: How does `count` treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# => 2

# When no argument is given and a block is passed to the Array#count method, this method will
# return the total count of elements for which the block returns a truthy value. If the block
# returns a falsy value, the element for that iteration is not counted. This information
# can be found within the Rub Docs.