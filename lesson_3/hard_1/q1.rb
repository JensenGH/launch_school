# Problem:
# What do you expect to happen when the greeting variable is referenced in the last line of the
# code below?

# Code:

if false
  greeting = "hello world"
end

greeting

# Solution:
# When you initialize a local variable within an if block it will default to nil and throw no
# exceptions. Normally when referencing a uninitialized variable there will be an error raised
# stating "unidentified local variable".