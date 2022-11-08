=begin

Problem:
Given a string, write a method 'palindrome_substrings' which returns all the substrings from a
given string which are palindromes. Consider palindrome words case sensitive.

Examples/ Test cases:
palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
palindrome_substrings("palindrome") == []
palindrome_substrings("") == []


Questions:
1) What is a palindrome?
- A word that reads the same forward as it does backwards
2) What is a substring?
- A range of characters within an existing string
3) Will inputs always be strings
- According to our test cases, the inputs will always be strings. Last test case is an empty string
4) What does it mean to treat palindrome words case-sensitively?
- All cases for letters have to match. For example: 'Dad' != 'dad', but 'dad' == 'dad'.

Input: String
Output: Array of substrings which are palindromes

Explicit requirements:
All palindrome words are case sensitive, meaning 'abBA' is not a palindrome
Return only substrings that are palindromes

Implicit requirements:
Don't return substrings that aren't palindromes.
If we are given an empty string or a string that contains no palindromes, return an empty array

Data Structure:
Input: String
Output: Array of substrings which are palindromes

Algorithm:
# subtrings method
- Create an empty array called 'result' that will contain all required substrings
- Create a 'starting_index' variable (value '0') for the starting index of a substring
- Start a loop that iterates over 'starting_index' from '0' to the length of the string minus 2
  - Create a 'num_chars' variable (value '2') for the length of a substring
  - Start an inner loop that iterates over 'num_chars' from '2' to 'string.length - starting_index'
    - Extract a substring of length 'num_chars' from 'string' starting at 'starting_index'
    - Append the extracted substring to the 'result' array
    - Increment the 'num_chars' variable by '1'
  - End the outer loop
  - Return the 'result' array

# is_palindrome? method
- Inside the 'is_palindrome?' method, check whether the string value is equal to itself reversed.
- Use the string#reverse method.

# palindrome_substrings method
- Initialize a result variable to an empty array
- Create an array named substring_arr that contains all of the substrings of the input string that
are at least 2 characters long.
- Loop through the words in the substring_arr array
- If the word is a palindrome, append it to the result array
- Return the result array

=end

# Code

def substrings(str)
  result = []
  starting_index = 0
  while starting_index <= (str.length - 2)
    num_chars = 2
    while num_chars <= (str.length - starting_index)
      substring = str.slice(starting_index, num_chars)
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end

  result
end

def is_palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)

  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end

  result
end

p palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") == []
p palindrome_substrings("") == []