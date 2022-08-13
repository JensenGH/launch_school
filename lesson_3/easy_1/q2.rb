=begin

Describe the difference between ! and ? in Ruby and explain what would
happen in the following scenarios:

The ! in Ruby is called the logical negation operator. When placed before an operand, it will
return false if the expression is truthy, and true if the expression is falsy. It's known as the
bang operator when placed at the end of a method name, which signifies that the method is destructive.
Not all methods that are destructive use bang operators.

The ? in Ruby is used for ternary operator, which first evaluates an expression for a
true or false value and then executes one of the two given statements depending upon
the result of the evaluation. It's used as a shorthand for if/else statements.

1. What is != and where should you use it?
- This inequality operator is also known as "not equal to". It's used in a conditional and 
returns true if two objects are not equal to each other, otherwise false.

2. Put ! before something, like !user_name
- This returns false if its operand is truthy and true if its operand is falsy.

3. Put ! after something, like words.uniq!
- A bang operator at the end of a method name signifies that the method is destructive,
which mutates the original object. Not all methods are destructive, and some destructive methods
don't require a bang operator.

4. Put ? before something
- This is used for ternary operator.

5. Put ? after something
- When used in a method name it will return a boolean value by convention.

6. Put !! before something, like !!user_name
- Returns true if the expression is truthy and false if the expression is falsy.

=end