=begin

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{reuslt}"

How would you fix this so that it works?

=end


# Solution:

limit = 15

def fib(first_num, second_num, limit) # Added limit as an additional parameter
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit) # Pass in limit as an additional argument
puts "result is #{result}"

=begin

The reason why we receive an error message "undefined local variable or method
'limit'" is due to variable scope. A method definition creates its own scope. Local
variables initialized outside of the method def are not visible to the method unless
passed in as an argument. Variables local to the method def are also not visible outside of
the method definition. 

=end