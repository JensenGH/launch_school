# Practice problem 6:

# Write code that changes the array below so that all of the names are shortened to just the
# first three characters. Do not create a new array.

# Solution 1:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name[0, 3] } # => ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]

# Solution 2:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name.slice(0, 3) } # => ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]