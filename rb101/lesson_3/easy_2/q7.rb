
# In the previous practice problem we added Dino to our array like this:

flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the family.
# How can we add multiple items to our array?(Dino and Hoppy)

flintstones.push("Dino").push("Hoppy") # Returns the array so we can keep chaining elements.
flintstones.concat(%w(Dino Hoppy)) # Adds an array instead of one element.