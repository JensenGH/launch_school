# Need to finish # 3, 4, and 5.

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
Initiate sum variable = to the sum of the two integers
Print sum
End

Translate to Formal Pseudo Code:

START

# Given two integers num1 and num2
SET sum = num1 + num2
PRINT sum
END

Casual pseudo Code:

2. A method that takes an array of strings, and returns a string that 
is all those strings concatenated together.

Given an array of strings called "strings"
Create empty string called "result"
Iterate over "strings"
For each iteration, concatenate each string in the array into result
Repeat until each string has been concatenated
Print result
End

Translate to Formal Pseudo Code:

START

# Given an array of strings called "strings"
SET result = ''
FOR EACH string in "strings"
SET result = result + string
PRINT result
END

Casual pseudo code:

3. A method that takes an array of integers, and returns a new array with every
other element from the original array, starting with the first element. For
instance: every_other([1, 4, 7, 2, 5]) # => [1, 7, 5]

Given an array of integers
Iterate through the array
Add each odd element in the original array starting with first element
Repeat until we are done iterating through each element in the array
Save result into an empty array
Print result
End

Translate to formal pseudo code:

START

# Given an array of integers 

Causal pseudo code:

4. A method that determines the index of the 3rd occurence of a given character
in a string. For instance, if the given character is 'x' and the string is
'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given
character does not occur at least 3 times, return nil.

Given a letter and a string of characters
Iterate through the string of characters 
If the letter occurs 3 times in the string of characters
Return the index of the 3rd occurence
If the given letter doesn't occur 3 times in the string, return nil
Print result
End

Translate to formal pseudo code:

START

# Given a letter and a string of characters


 
Casual pseudo code:

5. A method that takes two arrays of numbers and returns the result of merging
the arrays. The elements of the first array should become the elements at the even 
indexes of the returned array, while the elements of the second array should become
the elements at the odd indexes. For instance: merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

Given two arrays of numbers

=end
