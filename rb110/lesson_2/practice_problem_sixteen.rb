=begin

*Practice problem 16*

- Write a method that returns one UUID when called with no parameters.

*Notes about a UUID*

- A UUID is a type of identifier often used as a way to uniquely identify items which may or
may not all be created by the same system. That is, without any form of synchronization, two
or more seperate computer systems can create new items and label them with a UUID with no
significant chance of stepping on each other's toes.

- It accomplishes this feature through massive randomization. 
- Each UUID consists of 32 hexidecimal characters, and is typically broken into 5 sections like
8, 4, 4, 4, 12 and represented as a string.

Example # => "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

=end

# create empty array called "hexidecimal_chars"
# iterate through a range of numbers from 0-9 inclusive (add digits to empty array)
# iterate through string characters from 'a'-'f' inclusive (add to array)
# create a uuid variable equal to an empty string
# create a sections array [8, 4, 4, 4, 12]
# iterate through the sections array using #each_with_index (|element, index|)
# call #times on that section (element) for that current iteration
# increment our elements to the empty string from the characters array using randomization
# increment a "_" to the uuid string unless the index is greater than or equal to array.size - 1
# return the uuid string as our last evaluated expression.

def generate_uuid
  hexidecimal_chars = []
  0.upto(9) { |digits| hexidecimal_chars << digits.to_s}
  'a'.upto('f') { |chars| hexidecimal_chars << chars}

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += hexidecimal_chars.sample }
    uuid += "_" unless index >= sections.size - 1
  end
  uuid
end

p generate_uuid