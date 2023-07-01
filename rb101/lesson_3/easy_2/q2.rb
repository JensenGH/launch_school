=begin

Starting with this string, convert the string in the following ways (code will be
exectued on original munsters_description below):

munsters_description = "The Munsters are creepy in a good way."

Expected Output:
"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"The munsters are creepy in a good way."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

=end

# 1.
munsters_description.swapcase! 
# Returns a copy of string with uppercase alphabetic characters converted to lowercase
# and lowercase characters converted to uppercase.

# 2.
munsters_description.capitalize!
# Modifies string by converting the first character to uppercase and the remaining
# characters to lowercase.

# 3.
munsters_description.downcase!
# Downcases the contents of string, returns nil if no changes were made.

# 4.
munsters_description.upcase!
# Upcases the contents of string, returns nil if no changes were made.