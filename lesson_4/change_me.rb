=begin

Problem:
Given a string, write a method 'change_me' which returns the same string, but with all the
words in it that are palindromes uppercased.

Examples/ Test cases:
change_me("We will meet at noon") == "We will meet at NOON"
change_me("No palindromes here") == "No palindromes here"
change_me("") == ""
change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

Questions:
1) What is a palindrome?
- Word that reads the same forward as it does backwards
2) Should the words in the string remain the same if they are already uppercased?
- Look at the test cases for your answer. In our fourth test case, it remains uppercase in the solution.
3) How should I deal with empty strings provided as input?
- According to our third test case, we return an empty string
4) Can I assume that all inputs are strings?
- Test cases don't show any non-input strings, so you may want to consider asking whether the inputs
can contain non-string values, and what you should do with them.
5) Should I consider letter case when deciding whether a word is a palindrome?
- Test cases don't show any appropiate examples. It's always good to ask the interviewer just incase.
6) Do I need to return the same string object or an entirely new string?
- This is the most imporant and overlooked question you can ask. Never assume you need to return
the same object or a new one, always ask the interviewer or problem giver.
7) Always veryify your assumptions either by looking at test cases or by asking the interviewer.
- Looking at test cases or the problem description are also helpful tools to help clarify confusion.

Input: String
Output: String (not the same object)
Rules:
  Explicit requirements:
  - Every palindrome in the string must be converted to uppercase.
  - Palindromes are case sensitive ("Dad" is not a palindrome, but "dad" is.)

  Implicit requirements:
  - The returned string shouldn't be the same string object.
  - If the string is an empty string, the result should be an empty string.

Data structure:
Input: String
Output: String (not the same object)

Algorithm:
Create method called 'change_me' that takes one argument(string)
Initialize result array = []
Split the string into substrings and iterate over each word
If a word within the string is equal to itself reversed, call upcase! on that word
If the word is already uppercased, it remains the same
Else, word remains the same
Append each word into the result array
Convert array back to string
Print result

=end

# Code

def change_me(string)
  string = string.split
  result = []

  string.select do |word|
    if word == word.reverse
      word.upcase!
    else
      word
    end
      result << word
    end

    result.join(' ')
end

puts change_me("We will meet at noon") == "We will meet at NOON"
puts change_me("No palindromes here") == "No palindromes here"
puts change_me("") == ""
puts change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"