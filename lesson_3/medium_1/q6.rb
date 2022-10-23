# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# On the last line we output the variable 'answer', which holds the integer 42.
# Since 42 - 8 is equal to 34, that is what our result is.