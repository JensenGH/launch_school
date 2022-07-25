=begin

Describe the difference between ! and ? in Ruby and explain what would
happen in the following scenarios:

The ! in Ruby is called the logical negation operator. It will return false if the expression
is truthy, and true if the expression is falsy. It's known as the bang operator when placed
at the end of a method name, which signifies that the method is destructive. Not all methods
that are destructive share this syntax, e.g << or Array#pop.

The ? in Ruby is used for ternary operator, which first evaluates an expression for a
true or false value and then executes one of the two given statements depending upon
the result of the evaluation. It's used as a shorthand for if/else statements.

1. What is != and where should you use it?
- Known as "not equal to" and is an inequality operator. It's used in a conditional and 
returns true if two objects are not equal to each other, otherwise false.

2. Put ! before something, like !user_name
- This returns false if its operand is truthy and true if its operand is falsy.

3. Put ! after something, like words.uniq!
- A bang operator at the end of a method name signifies that the method is destructive,
which mutates the caller. Not all methods are destructive, and some destructive methods
don't require a bang operator.

4. Put ? before something
- Returns the ASCII code for the given character. It can be used to map numbers to characters.

5. Put ? after something
- When used in a method name it will return a boolean value by convention. This is also used
as a ternary operator for if/else.

6. Put !! before something, like !!user_name
- Returns true if the expression is truthy and false if the expression is falsy.

=end