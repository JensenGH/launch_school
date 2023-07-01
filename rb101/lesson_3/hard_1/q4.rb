=begin

Fixing Ben's Code:

Return a false condition and handle the case of more or fewer components to the IP address.

Original code:

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

=end

# Solution

def is_an_ip_number?(num_string) # Checks if a number is between 0..255 inclusive
  num_string.between?(0, 255)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".") # Divides string into substrings based on delimiter.
  if dot_separated_words.size == 4 # If there are four parts to input string, true. Otherwise, false
    return true
  else
    puts "Incorrect number of components."
    false
  end
end

puts dot_separated_ip_address?("10.5.4.11")
puts dot_separated_ip_address?("1")
puts dot_separated_ip_address?("192.11.5.09")
puts dot_separated_ip_address?("10.5.4")