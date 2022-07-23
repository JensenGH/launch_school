=begin

Given the hash below:

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, 
                "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
              
Turn this into an array containing only two elements: Barney's name and number.

=end

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, 
                "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.assoc("Barney") # => ["Barney", 2]

# This method searches through the hash comparing object with the key using the equality
# operator ==. Returns the key-value-pair or nil if no match is found.