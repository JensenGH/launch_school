LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file("rock_paper_scissors_messages.yml")

VALID_CHOICES = %w(r p sc l sp)

WINNING_COMBOS = {
  'r' => %w(sc l),
  'p' => %w(r sp),
  'sc' => %w(p l),
  'l' => %w(p sp),
  'sp' => %w(r sc)
}

SCORE_KEEPER = { player_score: 0, computer_score: 0 }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def win?(player_move, computer_move)
  WINNING_COMBOS[player_move].include?(computer_move)
end

def game_over?
  if SCORE_KEEPER[:player_score] == 3 || SCORE_KEEPER[:computer_score] == 3
  end
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

def full_word(str)
  result = case str

           when 'r'
             'rock'
           when 'p'
             'paper'
           when 'sc'
             'scissors'
           when 'l'
             'lizard'
           when 'sp'
             'spock'
           end

  result
end

def reset_score
  SCORE_KEEPER[:player_score] = 0 && SCORE_KEEPER[:computer_score] = 0
end

rules = <<-RPS_RULES

=> The rules to RPSLS are:
Scissors cuts Paper and decapitates Lizard
Paper covers Rock and disproves Spock
Rock crushes Lizard and crushes Scissors
Lizard posions Spock and eats Paper
Spock smashes Scissors and vaporizes Rock

RPS_RULES

abbreviations = <<-RPS_SHORTCUT
Type 'r' for rock, 'p' for paper, 'sc' for scissors,
'l' for lizard and 'sp' for spock. Good luck!

RPS_SHORTCUT

system("clear")

prompt(messages('welcome', LANGUAGE))

sleep(4)

prompt(messages('first_to_three', LANGUAGE))

sleep(5)
system("clear")

puts rules
sleep(15)
system("clear")

puts abbreviations

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    puts "\n"

    if VALID_CHOICES.include?(choice) # validating user input
      break
    else
      prompt(messages('valid_choice', LANGUAGE))
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{full_word(choice)}!")
  prompt("Computer chose #{full_word(computer_choice)}!")

  display_results(choice, computer_choice)

  puts "\n"

  if win?(choice, computer_choice)
    SCORE_KEEPER[:player_score] += 1
  elsif win?(computer_choice, choice)
    SCORE_KEEPER[:computer_score] += 1
  end

  prompt("Your score is #{SCORE_KEEPER[:player_score]}")
  puts "\n"

  prompt("Computer score is #{SCORE_KEEPER[:computer_score]}")
  puts "\n"

  sleep(5)
  system("clear")

  if SCORE_KEEPER[:player_score] == 3
    prompt(messages('player_wins', LANGUAGE))
    puts "\n"
    prompt(messages('play_again', LANGUAGE))
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
    reset_score
    system("clear")
  elsif SCORE_KEEPER[:computer_score] == 3
    prompt(messages('computer_wins', LANGUAGE))
    puts "\n"
    prompt(messages('play_again', LANGUAGE))
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
    reset_score
    system("clear")
  end
end

prompt(messages('thank_you', LANGUAGE))
