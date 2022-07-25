def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

=begin

What's the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

Solution:
The result is "paper". First we evaluate rps("rock", "paper"), then we evaluate
rps("rock", "scissors") which returns "paper" and "rock". After calling "paper"
and "rock" to rps, the result is "paper". Finally, when "paper" is evaluated against
"rock," the result is "paper".

=end