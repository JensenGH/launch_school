=begin
  
Casual pseudo code:

Given a collection of integers.

Iterate through the collection one by one.
- save the first value as the starting value.
- for each iteration, compare the saved value with the current value.
- if the saved value is greater, or it's the same
  - move to the next value in the collection
- otherwise, if the current value is greater
 - reassign the saved value as the current value

After iterating through the collection, return the saved value.

Translate to Formal Pseudo Code:

START

# Given a collection of integers called "numbers"

SET iterator = 1
SET saved_number = value within numebrs collection at space 1

WHILE iterator <= length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE
    saved_number = current_number

  iterator += 1 # iterator = iterator + 1
  PRINT saved_number

END

Casual pseudo Code:

1. A method that returns the sum of two integers.

Given two integers
Initiate result variable = to the sum of the two integers
Print result 

Translate to Formal Pseudo Code:

START

# Given two integers num1 and num2
SET result = num1 + num2
PRINT result
END

Casual pseudo Code:

2. A method that takes an array of strings, and returns a string that 
is all those strings concatenated together.

Given an array of strings
Iterate the the array of strings
For each iteration, append each string in the array into a result variable
Iterate through the array until the array is empty
Print result

Translate to Formal Pseudo Code:

# Given an array of strings
SET iterator = 0
SET result
WHILE iterator <= length of array
SET result = result + current iteration
PRINT result

Casual pseudo code

3. A method that takes an array of integers, and returns a new array with every
other element from the original array, starting with the first element. For
instance: every_other([1, 4, 7, 2, 5]) # => [1, 7, 5]

Given an array of integers
Iterate through the array
Add each odd element in the array starting with first element
Repeat until we are done iterating through each element in the array
Save result into an empty array
Print result

Translate to formal pseudo code:

# Given an array of integers
SET result = []
SET iterator = 0
IF array.even? 
skip
ELSE result << current iteration 


# Still working on these examples.

=end