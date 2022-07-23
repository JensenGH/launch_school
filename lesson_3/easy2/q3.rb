=begin
  
We have most of the Munster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

Add ages for Marilyn and Spot to the existing hash:

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

=end

ages.merge!(additional_ages) # Adds the contents of the given hash to the receiver.
