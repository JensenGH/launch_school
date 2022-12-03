# Practice problem 6

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Solution 1

munsters.each_pair do |name, details|
  age = details["age"]
  gender = details["gender"]
  puts "#{name} is a #{age}-year-old #{gender}."
end

# Solution 2

munsters.each do |name, details|
  puts "#{name} is a #{details['age']}-year-old #{details['gender']}"
end