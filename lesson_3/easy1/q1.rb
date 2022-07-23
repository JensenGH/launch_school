# What would you expect the code below to print out?

numbers = [1, 2, 3, 3]
numbers.uniq
puts numbers

=begin

When using the uniq method, we return a new array by removing any duplicate values within
the array. This method is non-mutating, so the numbers object remains the same. Since we aren't
invoking the destructive version of this method (uniq!) when we output our array using puts, we
should expect to see each value within the array printed on it's own line. If we had used the p
method to output our numbers object, then our output would have been the original array.

Expected output:
1
2
2
3

=end