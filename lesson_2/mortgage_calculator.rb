LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts("=> #{message}")
end

def invalid_input(input)
  input.empty? || input.to_f < 0
end

system("clear")

loop do
  prompt(messages('welcome', LANGUAGE))
  prompt(messages('loan_amount', LANGUAGE))

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty? ||  loan_amount.to_f < 0
      prompt(messages('valid_number', LANGUAGE))
    else
      break
    end
  end

  prompt(messages('interest_rate', LANGUAGE))

  interest_rate = ''
  loop do
    interest_rate = gets.chomp

    if interest_rate.empty? || interest_rate.to_f < 0
      prompt(messages('interest_rate', LANGUAGE))
    else
      break
    end
  end

  prompt(messages('loan_duration', LANGUAGE))

  loan_duration = ''
  loop do
    loan_duration = gets.chomp

    if loan_duration.empty? || loan_duration.to_f < 0
      prompt(messages('valid_number', LANGUAGE))
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_f * 
                    (monthly_interest_rate / 
                    (1 - (1 + monthly_interest_rate.to_f)**(-months)))

  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt(messages('another_calc', LANGUAGE))
  answer = gets.chomp

  break unless answer.downcase.start_with?('Y')
end

prompt(messages('thank_you', LANGUAGE))