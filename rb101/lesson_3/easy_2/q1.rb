=begin
  
In this hash of people and their age, see if "Spot" is present:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
Bonus: What are two other hash methods that would work just as well for this solution?

=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.key?("Spot")
ages.include?("Spot")
ages.member?("Spot")

# All three of these Hash methods return true if the given key is present.