=begin

How would you fix this so that it works?

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
puts "result is #{result}"

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

We raise an exception because we have an undefined local variable 'limit'. Due to variable scope,
method definitions can't access variables initialized outside of the method def and vice versa. To
fix this error, we can pass limit as an argument to the method when calling fib, and then adding
it as an additonal parameter as well.

=end
