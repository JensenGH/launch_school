# Code a method that allows you to multiply every array item by a specified value.

def multiply(numbers, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter >= numbers.size

    current_num = numbers[counter]
    multiplied_numbers << (current_num * multiplier)

    counter += 1
  end

  multiplied_numbers
end


my_numbers = [2, 4, 6, 8, 10]
p multiply(my_numbers, 3)