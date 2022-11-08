# Code a solution that doubles the numbers that have odd indices.

def odd_indices?(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter >= numbers.size

    current_num = numbers[counter]
    
    doubled_numbers << if counter.odd?
      current_num * 2
    else
      current_num
    end

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 2, 3, 4, 5]
p odd_indices?(my_numbers)