=begin

Alan wrote the following method, which was intended to show all of the factors of 
the input number:

def factors(numbers)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

Alyssa noticed that this will fail if the input is 0, or a negative number, and
asked Alan to change the loop. How can you make this work without using being/end/until?
Note that we're not looking to find the factors for 0 or negative numbers, but we
just want to handle it gracefully instead of raising an exception or going into an 
infinite loop.

Bonus 1: What is the purpose of the number % divisor == 0
Bonus 2: What is the purpose of the second-to-last line in the method (the factors
before the method's end)?

=end

# Solution:

while divisor > 0
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end

=begin

Bonus 1: The purpose of number % divisor == 0  is so that we can determine if
the result of the division is an integer number with no remainder.

Bonus 2: With method definitions, the last line is what gets executed as our return
value unless we use an explicit return statement. Therefore if we remove the factors
on the last line, our return value would be nil.

=end