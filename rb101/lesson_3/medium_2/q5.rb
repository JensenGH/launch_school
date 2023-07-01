# Problem:
# How can we change this code to make the result easier to predict and easier for the next
# programmer to maintain That is, the resulting method should not mutate either argument, but my_string
# should be set to "pumpkinsrutabaga" and my_array should be set to ["pumpkins, "rutabaga"]

# Before solution:
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# After solution:

def tricky_method_two(a_string_param, an_array_param)
  a_string_param += "rutabaga" # reassignment, non-mutating
  an_array_param += ["rutabaga"] # reassignment, non-mutating

  return a_string_param, an_array_param # stops execution of flow and explicitly returns these specific values
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method_two(my_string, my_array)  # Assigns returned string to my_string
                                                              # Assigns returned array to my_array
puts "My array looks like this now: #{my_array}"
