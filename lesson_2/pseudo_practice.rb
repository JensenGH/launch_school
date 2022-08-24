=begin

Practicing casual and formal pseudo code

Problem 1: 
A method that returns the sum of two integers.

Casual Pseudo:
Given two integers
Return the sum of the two integers
Print result
End

Formal Pseudo:
START 
-Given two integers num1 and num2
SET 
- result = num1 + num2
PRINT result
End

Problem 2. A method that takes an array of strings and returns a string that is all those strings
concatenated together.

Casual Pseudo:
Given an array of strings
Add each element of strings in the array and concatenate them together (Or convert array to a string)
Print result
End

Formal Pseudo:
START
- Given an array of strings
SET
- result = String.new
FOR
- each string in the array
SET
- result += string
PRINT
- result
END

Problem 3. A method that takes an array of integers, and returns a new array with every other
element form the original array, starting with the first element => every_other([1, 4, 7, 1, 5]) == [1, 7, 5]

Casual Pseudo:
Given an array of integers
Iterate through the elements in the array one by one
We want to return every other element in the array and print the result
IF we start at index 0 then skip all odd indexes
Otherwise we start at index 1, skip all even indexes
Save the operation into a result variable
Print reuslt
End

Formal Pseudo:
START
- Given an array of integers
SET
- Result variable called 'result'
SET
- Variable called 'count' to help us iterate through the array
IF
- We start at index 0 then skip odd indexes, otherwise skip even
Save into result variable
PRINT reuslt
END

Problem 4. A method that determines the index of the 3rd occurence of a given character in a string.
For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return
6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

Casual Pseudo:
Given string of characters
Iterate through the string of characters
If the input argument appears in the string 3 times, return the index of the 3rd occruence
If the input argument does not appear at least 3 times in the string then return nil
Print result
End

Formal Pseudo code:
START
- Given a string of characters
SET
- Result variable
WHILE
- Input argument appears at least 3 times
PRINT
- Index of 3rd occurence
ELSE
- Input argument does not appear 3 times
PRINT
- Return nil
END

Problem 5. A method that takes two arrays of numbers and returns the result of merging the arrays.
The elements of the first array should become the elements at the even indexes of the returned array,
while the elements of the second array should become the elements at the odd indexes.
  
Casual Pseudo:
Given two arrays of numbers x and y
Create a 'result' variable for the new array
Create an index counter called 'index' and set equal to x - 1
While the index is less then the length of x
- append the value of position 'index' in x to result
- append the value at position 'index' in y to result
Increment the index after each iteration
Print result
End

Formal Pseudo:
START
- Given two arrays of numbers
SET
- result = []
- index = x.length - 1
WHILE
- index < x.length
result << x[index]
index += 1
PRINT
- result
END

=end