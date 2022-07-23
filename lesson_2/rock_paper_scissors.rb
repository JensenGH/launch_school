# Flow of the game:
# The user makes a choice
# The computer makes a choice
# The winner is displayed
# Ask user if they want to play again

require 'yaml'
MESSAGES = YAML.load_file('rock_paper_scissors_messages.yml')

VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

system ("clear")

prompt MESSAGES['welcome']

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt MESSAGES['valid_choice']
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt MESSAGES['play_again']
  answer = Kernel.gets().chomp()

  system("clear")

  break unless answer.downcase().start_with?('y')
end

prompt MESSAGES['thank_you']
