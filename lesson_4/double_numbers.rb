# Implement a double_numbers! method that mutates its argument.

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter >= numbers.size

    current_num = numbers[counter]
    numbers[counter] = current_num * 2

    counter += 1
  end

  numbers
end

p my_numbers = [1, 2, 3, 4, 5]
double_numbers!(my_numbers)
p my_numbers