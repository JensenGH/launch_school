=begin

Still working on problems 4 and 5.

The problem:
1. A method that returns the sum of two integers.

Examples/Test Cases:
sum(2,2)
sum(5,9)
sum(-5, 8)

Expected Output:
4
14
3

Casual Pseudo Code:

Given two integers
Add the two integers
Create result variable = the sum of the two integers
Print result
End

Translate to Formal Pseudo Code:

START

# Given two integers num1 and num2
SET result = num1 + num2
PRINT result
END

The problem:
2. A method that takes an array of strings, and returns a string that 
is all those strings concatenated together.

Examples/Test Cases:
concatenate(["hi", "how", "are", "you"])
concatenate(["i", "love", "programming"])

Expected Output:
"hihowareyou"
"iloveprogramming"

Casual Pseudo Code:

Given an array of strings
Concatenate all strings from given array
Create empty string called "result"
Iterate through the array of strings
If the array is empty, break
Else
Set the result = result + string 
Print result
End

Translate to Formal Pseudo Code:

START

# Given an array of strings
SET result = String.new
WHILE iterator <= strings
IF string.empty? THEN break
ELSE 
result = result + string
PRINT result
END

The Problem:
3. A method that takes an array of integers, and returns a new array with every
other element from the original array, starting with the first element. For
instance: every_other([1, 4, 7, 2, 5]) # => [1, 7, 5]

Examples/Test Cases:
every_other([1, 4, 7, 2, 5])
every_other([4, 1, 6, 5, 8])
every_other([8, 5, 1, 9, 4])

Expected Output:
[1, 7, 5]
[4, 6, 8]
[8, 1, 4]

Casual Pseudo Code:

Given an array of integers
Create result variable to store the elements in a new array
Add every odd element in the array
Iterate through the given array starting with the first element
Save first element into the new array, skip all elements at odd indexes
After iterating through the collection, return saved value.
End

Translate to Formal Pseudo Code:

# Given an array of integers
SET result variable = []
WHILE iterator <= array
IF index.odd? THEN next
ELSE
result << value
PRINT result
END

=end