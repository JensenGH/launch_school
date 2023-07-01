# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

=begin

Solution:
On line 1, we initialize an array into a variable called 'numbers'.
The elements in the array are integers; 1, 2, 2, 3.
On line 2 we call the #uniq method on numbers, but we don't print anything to the screen.
We also don't invoke the destructive version of #uniq, which would mutate the numbers array.
By the time we get to line 4, we output the array using puts.
I expect to see each integer (element) printed on a new line from the original array, since we
did not invoke the destructive version of #uniq. The return value is nil since we are using puts.

Expected output:
1
2
2
3
=> nil

=end