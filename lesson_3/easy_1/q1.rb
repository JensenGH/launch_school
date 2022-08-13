# What would you expect the code below to print out?

numbers = [1, 2, 3, 3]
numbers.uniq

puts numbers

=begin

On line 1 of the example we store an array into a local variable called numbers. This array has two
identical elements. On line 2 we call the uniq method on this array, which returns a new array
by removing duplicate elements. Since we don't invoke the destructive version of uniq, the numbers
object does not get mutated. Therefore, when we use puts to output the numbers array on line 4, we
output the original array with each element printed on a new line.

Expected output:
1
2
2
3
=> nil

=end