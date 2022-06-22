# ask the user for two numbers
# asks the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def integer?(input)
  input.to_i().to_s() == input
end

def float?(input)
  input.to_i().to_s() == input
end

def operation_to_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
         end
  word
end

prompt(messages('welcome'))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name'))
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  first_number = ''
  loop do
    prompt(messages('first_number'))
    first_number = Kernel.gets().chomp()

    if integer?(first_number) || float?(first_number)
      break
    else
      prompt(messages('valid_number'))
    end
  end

  second_number = ''
  loop do
    prompt(messages('second_number'))
    second_number = Kernel.gets().chomp()

    if integer?(second_number) || float?(second_number)
      break
    else
      prompt(messages('valid_number'))
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('operator_prompt'))
    end
  end

  prompt("#{operation_to_message(operator)} the two nummbers...")

  result = case operator
           when '1'
             first_number.to_f() + second_number.to_f()
           when '2'
             first_number.to_f() - second_number.to_f()
           when '3'
             first_number.to_f() * second_number.to_f()
           when '4'
             first_number.to_f() / second_number.to_f()
           end

  prompt("The result is #{result}")

  prompt(messages('another_calc'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('thanks'))
