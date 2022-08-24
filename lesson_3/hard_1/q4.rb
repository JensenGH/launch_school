# Fixing Ben's code:

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_seperated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  
  true
end

# After splitting the string we to check if 'dot_seperated_words' is equal to 4. If it isn't then
# return false. Then we fix the break statement into a return statement. Instead of breaking from our
# loop when receiving incorrect input we need to return false, unless 'is_an_ip_number?' returns true.
# Lastly we shorten the return statement on the last line to just 'true' since Ruby returns the result
# of the last evaluated expression.