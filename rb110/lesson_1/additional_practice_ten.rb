# Practice problem 10:

# Given the `munsters` hash below, modify the hash such that each member of the Munster family
# has an additional "age_group" key that has one of three values describing the age group the
# family member is in (kid, adult, senior). Note that a kid is in the range of 0 - 17, an adult
# is in the range of 18 - 64, and a senior is in the range of 65+.

# The solution should look like this:

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Solution 1 using an if/else statement:

munsters.each_value do |info|
  if info["age"].between?(0, 17)
    info["age_group"] = 'kid'
  elsif info["age"].between?(18, 64)
    info["age_group"] = 'adult'
  else
    info["age_group"] = 'senior'
  end
end

p munsters

# Solution 2 using a case statement:

munsters.each do |name, info|
  case info["age"]
  when 0..17
    info["age_group"] = "kid"
  when 18..64
    info["age_group"] = "adult"
  else
    info["age_group"] = "senior"
  end
end