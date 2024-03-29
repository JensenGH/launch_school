# Creating a calculator application

# General flow:
# Ask user for two numbers
# Ask the user for an operator to perform
# Perform the operation on the two numbers
# Output the result

LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(num) # validating integer
  num.to_i().to_s() == num
end

def float?(num) # validating float
  num.to_f().to_s() == num
end

def valid_number?(num) # validates a valid number
  integer?(num) || float?(num)
end

def operation_to_message(operation)
  return_value = case operation
                 when '1'
                   'Adding'
                 when '2'
                   'Subtracting'
                 when '3'
                   'Multiplying'
                 when '4'
                   'Dividing'
                 end

  # We can write code here after the case statement, if needed.

  return_value # returning the value of case
end

system("clear") # clearing the screen before starting calculator

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do # main loop
  number1 = ""
  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  number2 = ""
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  prompt(messages('operator_prompt', LANGUAGE))

  operator = ""
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('operator_prompt', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt(messages('another_calc', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt(messages('thanks', LANGUAGE))
