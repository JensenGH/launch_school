# Practice problem 5

# Consider this nested Hash and determine the total age of just the male members of the family.

mens_total_age = 0
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  if details["gender"] == "male"
    mens_total_age += details["age"]
  end
end

p mens_total_age # => 444