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

We raise an exception because we have an undefined local variable 'limit'. This is because
method's do not have access to variables initialized outside of the method def. We can fix
this problem by passing in limit as an additional parameter to our method fib, then also
adding it to our input argument.

=end