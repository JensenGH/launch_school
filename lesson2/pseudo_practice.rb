=begin
  
Pseudo code:

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

Translate Pseudo Code to Program Code:

=end

def find_greatest(numbers)
  saved_number = numbers[0]

  numbers.each do |num|
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

p find_greatest([1, 3, 5, 7, 9, 11])
p find_greatest([5, 7, 11, 9, 1, 3])

=begin

Pseudo Code:

1. A method that returns the sum of two integers.

Given two integers 
set a result variable = to the sum of the two integers
Print result 

Translate to Formal Pseudo Code:

START

# Given two integers x and y 
SET result = x + y
PRINT result
END

Pseudo Code:

2. A method that takes an array of strings, and returns a string that 
is all those strings concatenated together.

Given an array of strings called "strings"
Create empty string called "result"
iterate through strings & concatenate each string to "result"
Print result

Translate to Formal Pseudo Code:

START

# Given an array of strings called "strings"
SET result = empty string # result = " "
FOR EACH string in strings
SET result = result + string
PRINT result
END

Pseudo Code:

3. A method that takes an array of integers, and returns a new array with every other
element from the original array, starting with the first element. For instance:
everyOther([1, 4, 7, 2, 5]) # => [1, 7, 5]

Given an array of integers
create empty array called "result"
iterate through original array, skipping every other element (starting with first)
Print result

=end