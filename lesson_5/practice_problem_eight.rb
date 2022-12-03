# Practice problem 8
# Using the each method, write some code to output all of the vowels from the strings.

hsh = {
  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']
}

# Solution 1

hsh.each do |key, value|
  arr_string = value.join(' ').chars
  arr_string.each do |char|
    puts char if 'aeiouAEIOU'.include?(char)
  end
end

# Solution 2

vowels = 'aeiouAEIOU'

hsh.each do |_, arr|
  arr.each do |str|
    str.chars do |char|
      puts char if vowels.include?(char)
    end
  end
end