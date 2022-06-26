=begin

Welcome the user to your program
Prompt user for loan amount
Prompt user for Annual Percentage Rate (APR)
Prompt user for loan duration

Calculate monthly interest rate
Calculate loan duration in months
Calculate a monthly payment

=end

require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

def prompt(message)
  Kernel.puts "=> #{message}"
end

def valid_number?(input)
  input == input.to_f().to_s || input == input.to_i().to_s()
end

system "clear"

loop do
  prompt MESSAGES['welcome']
  prompt MESSAGES['loan_amount']

  amount = ''
  loop do
    amount = Kernel.gets().chomp()

    if valid_number?(amount)
      break
    else
      prompt MESSAGES['valid_number']
    end
  end

  prompt MESSAGES['interest_rate']

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()

    if valid_number?(interest_rate)
      break
    else
      prompt MESSAGES['valid_number']
    end
  end

  prompt MESSAGES['loan_duration']

  years = ''
  loop do
    years = Kernel.gets().chomp()

    if valid_number?(years)
      break
    else
      prompt MESSAGES['valid_number']
    end
  end

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i() * 12

  monthly_payment = amount.to_f() *
                    (monthly_interest_rate / 
                    (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt MESSAGES['another_calc']
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt MESSAGES['thank_you']
prompt MESSAGES['good_bye']
