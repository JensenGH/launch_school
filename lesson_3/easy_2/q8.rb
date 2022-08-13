=begin

Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur"

Review the String#slice! documentation, and use that method to make the return
value "Few things in life are as imporant as" But leave the advice variable as 
"house training your pet dinosaur.".

As a bonus, what happens if you use the String#slice method instead?

=end

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0..38) # Deletes specified portion from string and returns the portion deleted.
p advice # => "house training your pet dinosaur"

=begin

Bonus: If we use the non-destructive version of String#slice then we end up with
a new array that has the same text as before. The advice variable remains the same
and still points to our original array.

advice.slice!(0..38) is equivalent to the following:
advice.slice!(0, advice.index("house"))

=end